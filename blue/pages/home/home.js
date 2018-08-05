// pages/home/home.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      imgUrls: [
          "/res/journey1.jpg",
          "/res/journey2.jpg",
          "/res/journey3.jpg",
          "/res/journey4.jpg"
      ],
      list: [
          { id: "Journey", image: "journey.jpg", url: "journey", title: "旅游向导", summary: "最全最新九华旅游咨询"},
          { id: "Insense", image: "insense.jpg", url: "goods", title: "进香请愿", summary: "质量保证，价格透明，全景区配送", desc:"货到付款"},
          { id: "hotel", image: "hotel.jpg", url: "journey",  title: "住宿交通", summary: "酒店民宿，满足你不同的游玩体验"}
      ]
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