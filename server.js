const express = require('express')
const url = require('url')
const md5 = require('md5-node')
const bodyParser = require('body-parser')
const stringRandom = require('string-random');
const schedule = require('node-schedule');
const app =express()
const mysql = require('mysql');

var schedules = {}
const config = {
    host: 'localhost',
    user: 'root',
    password: 'ningyu',
    port: '3306',
    database: 'test'
}
app.use(bodyParser.urlencoded({ extended: false }));
app.get('/sharePage/list', (req, res)=>{
    res.setHeader('Content-Type', 'text/json; charset=utf8');
    res.setHeader('Access-Control-Allow-Origin', '*');
    const connection = mysql.createConnection(config);
    connection.connect()
    var sql = 'SELECT * FROM articles'
    connection.query(sql, (err, result)=>{
        connection.end()
        if(err) {
            console.log(err.message)
            res.end(JSON.stringify(err.message))
        }
        res.end(JSON.stringify(result))
    })
})
app.get('/sharePage/links/:id', (req, res)=>{
    res.setHeader('Content-Type', 'text/json; charset=utf8');
    res.setHeader('Access-Control-Allow-Origin', '*');
    const connection = mysql.createConnection(config);
    connection.connect()
    var sql = 'SELECT * FROM links WHERE article_id = ' + req.params.id
    connection.query(sql, (err, result)=>{
        connection.end()
        if(err) {
            console.log(err.message)
            res.end(JSON.stringify(err.message))
        }
        res.end(JSON.stringify(result))
    })
})
app.post('/sharePage/login', (req, res)=>{
    res.setHeader('Content-Type', 'text/json; charset=utf8');
    res.setHeader('Access-Control-Allow-Origin', '*');
    const connection = mysql.createConnection(config);
    connection.connect()
    var sql = "SELECT password,token,logged FROM admins WHERE username = '" + req.body.username + "'"
    connection.query(sql, (err, result)=>{
        if(err) {
            console.log(err.message)
            res.end(JSON.stringify(err.message))
        }
        if(result.length && result[0].password === md5(req.body.password)){
            if(!result[0].logged){
                sql = "UPDATE admins SET logged = true WHERE username = '" + req.body.username + "'"
                connection.query(sql, (err)=>{
                    connection.end()
                    if(err) {
                        console.log(err.message)
                    }
                    else{
                        scheduleWork(req.body.username)
                        console.log(req.body.username, result[0].token)
                        res.end(JSON.stringify({
                            canLogin:'yes',
                            token:result[0].token
                        }));
                    }
                })
            }
            else{
                res.end(JSON.stringify({
                    canLogin:'yes',
                    token:result[0].token
                }));
            }
        }
        else{
            res.end(JSON.stringify({
                canLogin:'no',
                    token:result[0].token
            }));
        }
    })
})
app.post('/sharePage/logout', (req, res)=>{
    res.setHeader('Content-Type', 'text/json; charset=utf8');
    res.setHeader('Access-Control-Allow-Origin', '*');
    const connection = mysql.createConnection(config);
    connection.connect()
    var token = stringRandom(32);
    var sql = "UPDATE admins SET token = '" + token + "',logged = false WHERE username = '" + req.body.username + "'"
    connection.query(sql, (err, result)=>{
        connection.end()
        if(err) {
            console.log(err.message)
            res.end(JSON.stringify(err.message))
        }
        console.log('logout')
        res.end(JSON.stringify({
            canLogout:'yes'
        }));
    })
    scheduleDone(req.body.username)
})

var server = app.listen(8082, function () {
    var host = server.address().address
    var port = server.address().port
    console.log("应用实例，访问地址为 http://%s:%s", host, port)

})
const scheduleWork = (username)=>{
    const connection = mysql.createConnection(config);
    connection.connect()
    schedules[username] = schedule.scheduleJob('0 0 0 * * *',()=>{
        var token = stringRandom(32);
        var sql = "UPDATE admins SET token = '" + token + "' WHERE username = '" + username + "'"
        connection.query(sql, ()=>{
            connection.end()
        })
    });
}
const scheduleDone = (username)=>{
    schedules[username].cancel()
}