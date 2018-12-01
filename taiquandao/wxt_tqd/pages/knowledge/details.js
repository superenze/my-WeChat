// pages/knowledge/details.js
var WxParse = require('../../wxParse/wxParse.js');
Page({

  /**
   * 页面的初始数据
   */
  data: {
     id:0,
     list:'',
  },
  gettxt: function (options){
    var id = options.id;
    this.setData({ id: id })
    var that=this;
    wx.request({
      url: 'http://127.0.0.1:3003/exe/txt?id='+this.data.id,
      success:(res)=>{
        var list = res.data;
        var text = list[0].text
        WxParse.wxParse('text', 'html', text, that, 0);
        this.setData({ list: list })
        var num=this.data.list[0].num+=1;
        wx.request({
          url: 'http://127.0.0.1:3003/exe/add?id=' + this.data.id+'&num='+num,
          success:(res)=>{
            console.log("阅读次数加1")
          }
        })
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.gettxt(options);
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})