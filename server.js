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
    database: 'sharepage'
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
            console.log(err)
            res.end(JSON.stringify(err))
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
            console.log(err)
            res.end(JSON.stringify(err))
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
            console.log(err)
            res.end(JSON.stringify(err))
        }
        if(result.length && result[0].password === md5(req.body.password)){
            if(!result[0].logged){
                sql = "UPDATE admins SET logged = true WHERE username = '" + req.body.username + "'"
                connection.query(sql, (err)=>{
                    connection.end()
                    if(err) {
                        console.log(err)
                    }
                    else{
                        scheduleWork(req.body.username)
                        console.log(req.body.username, result[0].token)
                        res.end(JSON.stringify({
                            code: 'success',
                            token: result[0].token
                        }));
                    }
                })
            }
            else{
                res.end(JSON.stringify({
                    code: 'success',
                    token: result[0].token
                }));
            }
        }
        else{
            res.end(JSON.stringify({
                code: 'LOGIN_FAILED',
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
            console.log(err)
            res.end(JSON.stringify(err))
        }
        console.log('logout')
        res.end(JSON.stringify({
            code: 'success'
        }));
    })
    scheduleDone(req.body.username)
})
app.post('/sharePage/article/edit', (req, res)=>{
    console.log(req.body.id+"+"+req.body.title+"+"+req.body.image+"+"+req.body.content+"+"+req.body.language+
    "+"+req.body.platform+"+"+req.body.downloadMethod+"+"+req.body.download+"+"+req.body.type)
    res.setHeader('Content-Type', 'text/json; charset=utf8');
    res.setHeader('Access-Control-Allow-Origin', '*');
    const connection = mysql.createConnection(config);
    connection.connect()
    var sql = "SELECT logged FROM admins WHERE token = '" + req.body.token + "'"
    connection.query(sql, (err,result)=>{
        if(err){
            console.log(err)
            res.end(JSON.stringify(err))
        }
        console.log(result)
        if(result.length && parseInt(result[0].logged)===1){
            console.log(typeof(req.body.id))
            if(parseInt(req.body.id)!==0){
                sql = "UPDATE articles SET title = '" + req.body.title +
                    "',image = '" + req.body.image +
                    "',content = '" + req.body.content +
                    "',language = '" + req.body.language +
                    "',platform = '" + req.body.platform +
                    "',downloadMethod = '" + req.body.downloadMethod +
                    "',download = '" + req.body.download +
                    "',type = '" + req.body.type + "' WHERE id = " + req.body.id;
                connection.query(sql, (err, result)=>{
                    connection.end()
                    if(err){
                        console.log(err)
                        res.end(JSON.stringify(err))
                    }
                    console.log(result)
                    res.end(JSON.stringify({
                        code: 'success'
                    }))
                })
            }
            else{
                sql = "INSERT INTO articles(title,image,content,language,platform,downloadMethod,download,type)" +
                    "VALUES('"+req.body.title+"','"+req.body.image+"','"+req.body.content+"','"+req.body.language+
                    "','"+req.body.platform+"','"+req.body.downloadMethod+"','"+req.body.download+"','"+req.body.type+"')"
                connection.query(sql, (err, result)=>{
                    connection.end()
                    if(err){
                        console.log(err)
                        res.end(JSON.stringify(err))
                    }
                    console.log(result)
                    res.end(JSON.stringify({
                        code: 'success'
                    }))
                })
            }
        }
        else{
            res.end(JSON.stringify({
                code: 'HAVE_NO_ACCESS'
            }))
        }
    })
})
app.post('/sharePage/link/edit', (req, res)=>{
    res.setHeader('Content-Type', 'text/json; charset=utf8');
    res.setHeader('Access-Control-Allow-Origin', '*');
    const connection = mysql.createConnection(config);
    connection.connect()
    var sql = "SELECT logged FROM admins WHERE token = '" + req.body.token + "'"
    connection.query(sql, (err,result)=>{
        if(err){
            console.log(err)
            res.end(JSON.stringify(err))
        }
        console.log(result)
        if(result.length && parseInt(result[0].logged)===1){
            if(parseInt(req.body.id)!==0){
                sql = "UPDATE links SET description = '" + req.body.description +
                    "',link = '" + req.body.link +
                    "',code = '" + req.body.code +
                    "',article_id = '" + req.body.article_id + "' WHERE id = " + req.body.id;
                connection.query(sql, (err, result)=>{
                    connection.end()
                    if(err){
                        console.log(err)
                        res.end(JSON.stringify(err))
                    }
                    console.log(result)
                    res.end(JSON.stringify({
                        code: 'success'
                    }))
                })
            }
            else{
                sql = "INSERT INTO links(description,link,code,article_id)" +
                    "VALUES('"+req.body.description+"','"+req.body.link+"','"+req.body.code+"','"+req.body.article_id+"')"
                connection.query(sql, (err, result)=>{
                    connection.end()
                    if(err){
                        console.log(err)
                        res.end(JSON.stringify(err))
                    }
                    console.log(result)
                    res.end(JSON.stringify({
                        code: 'success'
                    }))
                })
            }
        }
        else{
            res.end(JSON.stringify({
                code: 'HAVE_NO_ACCESS'
            }))
        }
    })
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
        var sql = "UPDATE admins SET token = '" + token + "', logged = false WHERE username = '" + username + "'"
        connection.query(sql, ()=>{
            connection.end()
        })
    });
}
const scheduleDone = (username)=>{
    schedules[username].cancel()
}