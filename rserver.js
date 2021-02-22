const fs = require("fs");
const path = require("path");
module.paths.push(path.join(process.execPath, "../node_modules"))

var express = require("express");
var app = express();
 
app.use(function (req, res, next) {
	// console.log(req.method, req.originalUrl, " Time:", Date.now());
	res.header("Access-Control-Allow-Origin", "*");
	res.header('Access-Control-Allow-Methods', 'PUT, GET, POST, DELETE, OPTIONS');
	res.header("Access-Control-Allow-Headers", "X-Requested-With");
	res.header('Access-Control-Allow-Headers', 'Content-Type');
	next();
});

app.get("/", function (req, res) {
	res.send('<h1>Resources Server</h1><p>' + __dirname + '</p>');
});

// app.use('/static', express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'Resources.http')));

var server = app.listen(7600, function () {
	var host = server.address().address;
	host = "localhost";
	var port = server.address().port;

	console.log("访问地址为 http://" + host + ":" + port);
})