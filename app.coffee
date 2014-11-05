var app = require('express')();
var server = require('http').Server(app);
var fs = require('fs');
var io = require('socket.io')(server);
var bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: false }))
app.use(require('express-ejs-layouts'));
app.use(require('express').static('public'));

app.set('view engine', 'ejs');