const express=require('express');
//引入连接池
const pool=require('../pool.js');
//创建路由
var router=express.Router();

router.get("/nav",(req,res)=>{
    var sql="select * from exe";
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err)
        res.send(result);
    })
})

router.get("/list",(req,res)=>{
    var sql="select * from exec";
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err)
        res.send(result)
    })
})


//获取视频
router.post("/video",(req,res)=>{
    var pno=req.body.pno//当前页码
    var pageSize=req.body.pageSize;//显示几条数据
    var sql="select count(*) as c from video";
    var obj={};
    var progress=0;
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err)
        //console.log(result);
        var c=Math.ceil(result[0].c/pageSize); //总页数
        //console.log(c);
        obj.pageCount=c;
        progress+=50;
        if(progress==100){
            res.send(obj)
        }
    })
    var sql="select * from video limit ?,?";
    pageSize=parseInt(pageSize);
    var offset=parseInt((pno-1))*pageSize;//计算分页的偏移量
    console.log(offset,pageSize);
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err) console.log(err)
        obj.data=result;
        progress+=50;
        if(progress==100){
            res.send(obj);
        }
    })
})


//
router.get("/knowledge",(req,res)=>{
    var sql="select * from knowledge";
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err)
        res.send(result);
    })
})

//获取分类
router.get("/kclassify",(req,res)=>{
    var isknowledge=req.query.isknowledge;
    var isconsult=req.query.isconsult;
    if(isknowledge){
        var sql="select * from knowledge where isknowledge=?";
        pool.query(sql,[isknowledge],(err,result)=>{
            if(err) console.log(err)
            res.send(result);
        })
    }
    if(isconsult){
        var sql="select * from knowledge where isconsult=?";
        pool.query(sql,[isconsult],(err,result)=>{
            if(err) console.log(err)
            res.send(result);
        })
    }
   
})

//获取文章
router.get("/txt",(req,res)=>{
    var id=req.query.id;
    var sql="select * from knowledges where id=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) console.log(err)
        res.send(result);
    })
})

//点击一个之后阅读数+1
router.get("/add",(req,res)=>{
    var num=req.query.num;
    var id=req.query.id;
    console.log(num,id)
    var sql="update knowledges  set num=? where id=?"
    pool.query(sql,[num,id],(err,result)=>{
        if(err) console.log(err)
    })
})
module.exports=router;