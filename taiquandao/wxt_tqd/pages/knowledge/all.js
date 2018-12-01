// pages/knowledge/all.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
     list:[],
     navlist:["全部","跆拳道知识","教学资讯"],
     id:0 ,
  },
  getlist: function () {
    wx.request({
      url: 'http://127.0.0.1:3003/exe/knowledge',
      success: (res) => {
        this.setData({ list: res.data })
      }
    })
  },
  go:function(e){
    //console.log(11)
    var idx=e.target.dataset.index;//获取下标
    this.setData({id : idx})
    if(idx==0){
      this.getlist();
    }
    if(idx==1){
      wx.request({
        url: 'http://127.0.0.1:3003/exe/kclassify?isknowledge=1',
        success: (res) => {
          this.setData({ list: res.data })
        }

      })
    }
    if(idx==2){
      wx.request({
        url: 'http://127.0.0.1:3003/exe/kclassify?isconsult=1',
        success:(res)=>{
          this.setData({ list:res.data })
        }
      })
    }
    
  },
  //去文章
  godetails:function(e){
    var idx = e.currentTarget.dataset.id;
   // console.log(idx)
    wx.navigateTo({
      url: '/pages/knowledge/details?id='+idx,
    })
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

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})