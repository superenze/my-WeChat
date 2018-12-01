const express=require('express');
const bodyParser=require('body-parser');
const pool=require('./pool');
var app=express();
app.listen(3003);//监听3003端口
const index=require('./routes/index.js');
const exe=require('./routes/exe.js');



//使用body-parser中间键
app.use(bodyParser.urlencoded({
	extended:false
}));

app.use(express.static(__dirname+'/public'));
app.use('/index',index);
app.use('/exe',exe);