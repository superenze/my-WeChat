const express=require('express');
//引入连接池
const pool=require('../pool.js');
//创建路由
var router=express.Router();

router.get("/getimg",(req,res)=>{
    var sql="select * from index_navimg";
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err)
        //console.log(result);
        res.send(result);
    })
})

router.get("/getfour",(req,res)=>{
    var sql="select * from index_four";
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err)
        //console.log(result);
        res.send(result);
    })
})

router.get("/getty",(req,res)=>{
    var sql="select * from index_two";
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err)
        res.send(result);
    })
})

//首页课程3
router.get("/getkt",(req,res)=>{
    var sql="select * from index_class";
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err)
        res.send(result);
    })
})
//提交课程
router.post("/sub",(req,res)=>{
    var name=req.body.name;
    var phone=req.body.phone;
    var course=req.body.course;
    var time=req.body.time;
    var address=req.body.address;
    var sql="insert into ty values (null,?,?,?,?,?)"
    pool.query(sql,[name,phone,course,time,address],(err,result)=>{
        if(err) console.log(err)
        res.send({ok:1})
    })
})
//
router.get('/getknow',(req,res)=>{
    var sql="select * from material ";
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err)
        res.send(result);
    })
})
module.exports=router;