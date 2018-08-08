#Jhs 数据库设计

###用户表
/**
* ID: 用户ID
* Nmae: 用户姓名
* Type: 用户类型 0：普通用户， 1： 推广用户， 2： VIP用户（default: 0）
* Consume-amount: 消费金额
* Cashback-amount: 返现金额
* Withdraw-amount: 提现金额
*/

|ID|Name|Type|
|--|--|--|


###订单表
/**
* ID: 订单ID
* UserID: 用户ID
* GoodsInfo: 商品信息（Json）
* Cash: 金额
* Date: 日期
* Status: 状态
* Remarks: 备注
*/

###商品表