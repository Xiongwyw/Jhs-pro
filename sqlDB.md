#Jhs 数据库设计

###用户表
/**
* ID: 用户ID(start for 10000)
* Nmae: 用户姓名
* Type: 用户类型 0：普通用户， 1： 推广用户， 2： VIP用户（default: 0）
* Consume-amount: 消费金额
* Cashback-amount: 返现金额
* Withdraw-amount: 提现金额
* Entry-mode:进入方式（0：搜索， 1：扫码， 2： 分享）
* Entry-Date: 日期
* ParentID: 推广用户ID
*/



###订单表
/**
* ID: 订单ID
* UserID: 用户ID
* GoodsInfo: 商品信息（Json）
* Cash: 金额
* Cashback:返现金额
* Date: 日期
* Status: 状态(0:待发货，1：待收货，2：确认收货， 3：取消订单)
* Remarks: 备注
*/

###商品表
/**
* ID：商品ID
* Name:商品名称
* Category: 类别
* Subject: 科目
* Price: 价格
* Cashback-rate:返现率
* Cost-price: 成本价
* Status:状态（0：待上架， 1：下架， 2： 上架， 3：缺货）
* Date: 上架日期
* Data: 下架日期
*/