// pages/video/video.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list:[],
    pageIndex: 0,    //商品分页页码     1 2 3 4
    pageSize: 3,       //页大小
    hasMore: true,     //是否还有更多的数据
  },
  getlist:function(){
    if(this.data.hasMore==false) return;
    var pno=++this.data.pageIndex;
    wx.request({
      url: 'http://127.0.0.1:3003/exe/video',
      method: 'POST',
      data:{pno:pno,pageSize:this.data.pageSize},
      header: { "Content-Type": "application/x-www-form-urlencoded" },
      success:(res=>{
        var pageCount=res.data.pageCount;
        console.log(pageCount);
        var data=res.data.data;
        console.log(res.data);
        var flag=this.data.pageIndex < pageCount;
        console.log(flag)
        var list=this.data.list.concat(data);
        this.setData({
          list:list,
          hasMore:flag,
          pageIndex:pno
        })
      })

    })
    //显示加载动画
    wx.showLoading({
      title: '正在加载数据...'
    });
    //1秒后隐藏动画
    setTimeout(function () {
      wx.hideLoading();
    }, 1000)
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.getlist();
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
    this.getlist();
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})