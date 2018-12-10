const express = require('express')
const url = require('url')
const app =express()
const mysql = require('mysql');

const config = {
    host: 'localhost',
    user: 'root',
    password: 'ningyu',
    port: '3306',
    database: 'test'
}

app.get('/sharePage/list', (req, res)=>{
    const connection = mysql.createConnection(config);
    connection.connect()
    res.setHeader('Content-Type', 'text/json; charset=utf8');
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
    const connection = mysql.createConnection(config);
    connection.connect()
    res.setHeader('Content-Type', 'text/json; charset=utf8');
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

var server = app.listen(8082, function () {
    var host = server.address().address
    var port = server.address().port
    console.log("应用实例，访问地址为 http://%s:%s", host, port)

})