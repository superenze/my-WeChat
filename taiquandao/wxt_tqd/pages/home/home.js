// pages/home/home.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      list:[],
      list2:[],
      list3:[],
      list4:[],
      list5:[],
  },
  getNav: function () {
    wx.request({
      url: 'http://127.0.0.1:3003/index/getimg',
      success: (res) => {
        this.setData({ list: res.data })
        //console.log(res);
      }
    })
  },
  getfout:function(){
    wx.request({
      url: 'http://127.0.0.1:3003/index/getfour',
      success:(res)=>{
        this.setData({list2:res.data})
        console.log(res);
      }
    })
  },
  getty:function(){
    wx.request({
      url: 'http://127.0.0.1:3003/index/getty',
      success:(res)=>{
        this.setData({list3:res.data})
      }
    })
  },
  getkt:function(){
    wx.request({
      url: 'http://127.0.0.1:3003/index/getkt',
      success:(res)=>{
        this.setData({list4:res.data})
      }
    })
  },
  goty:function(){
    //console.log(111)
    wx.navigateTo({
      url:"/pages/ty/ty"
    })
  },
  goknow:function(){
    console.log(11)
    wx.reLaunch({
      url: '/pages/knowledge/knowledge',
    })
  },
  getlist: function () {
    wx.request({
      url: 'http://127.0.0.1:3003/exe/knowledge',
      success: (res) => {
        var a = res.data.slice(0, 2);
       //console.log(a)
        this.setData({ list5: a})
      }
    })
  },
  goAll:function(){
    wx.navigateTo({
      url: '/pages/knowledge/all',
    })
  },
  godetails: function (e) {
    var idx = e.currentTarget.dataset.id;
    // console.log(idx)
    wx.navigateTo({
      url: '/pages/knowledge/details?id=' + idx,
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
     this.getNav();
     this.getfout();
      this.getty();
      this.getkt();
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

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})