// pages/ty/ty.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    name:'',
    phone:'',
    time:'',
    course:'',
    address:'',
  },
  getname:function(e){
    this.setData({name:e.detail.value})
    console.log(e.detail.value)
  },
  getphone:function(e){
    this.setData({phone:e.detail.value})
    console.log(e.detail.value)
  },
  gettime:function(e){
    this.setData({time:e.detail.value})
    console.log(e.detail.value)
  },
  getclass:function(e){
    this.setData({course:e.detail.value})
   // console.log(e.detail.value);
  },
  getaddr:function(e){
    this.setData({address:e.detail.value})
    //console.log(e.detail.value)
  },
  click:function(){
    if(!this.data.name){
      wx.showToast({
        title: '请输入用户名',
        icon:"none",
        duration:1500
        }) 
    }
    else if(!this.data.phone){
      wx.showToast({
        title: '请输入电话',
        icon:'none',
        duration:1500
      })
    }
    else if(!this.data.time){
      wx.showToast({
        title: '请输入时间',
        icon:'none',
        duration:1500
      })
    }
    else if (!this.data.course){
      wx.showToast({
        title: '请选择一个班级',
        icon:'none',
        duration:1500
      })
    }
    else if(!this.data.address){
      wx.showToast({
        title: '请选择一个道馆',
        icon:'none',
        duration:1500
      })
    }
    if (this.data.name && this.data.phone && this.data.time && this.data.course && this.data.address){
    wx.request({
      url: 'http://127.0.0.1:3003/index/sub',
      method:'POST',
      data: { name: this.data.name, phone: this.data.phone, time: this.data.time, address: this.data.address, course: this.data.course},
      header: { "Content-Type": "application/x-www-form-urlencoded" },
      success:(res)=>{
        if(res.data.ok==1){
          wx.showToast({
            title: '提交成功',
            icon:'none',
            duration:1500
          })
        }else{
          wx.showToast({
            title: '提交失败',
            icon:"none",
            duration:1500
          })
        }
      }
    })
    }
  },
  goback:function(){
    //console.log(111)
    wx.reLaunch({
      url:'/pages/home/home'
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
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