
/* 删除carshop数据库，然后再创建这个数据库 */
drop database if exists carshop;
create database carshop DEFAULT CHARACTER SET UTF8;
USE carshop;


/*删除管理员表*/
drop table if exists account;
/*删除用户表*/
drop table if exists member;
/*删除类别表*/
drop table if exists category;
/*删除eec表*/
drop table if exists eec;
/*删除newcar表*/
drop table if exists newcar;
/*删除二手车表*/
drop table if exists usedcar;

/*============================*/
/* Table: 管理员表结构 		  */
/*============================*/
CREATE TABLE `account` (
	/*管理员编号，设置为自增*/
  `aid` INT(11) NOT NULL AUTO_INCREMENT,
  /*管理员登录名*/
  `alogin` VARCHAR(20) DEFAULT NULL,
  	/*管理员姓名*/
  `aname` VARCHAR(20) DEFAULT NULL,
  	/*管理员密码*/
  `apass` VARCHAR(20) DEFAULT NULL,
  	/*管理员维护邮箱*/
  `aemail` VARCHAR(20) DEFAULT NULL,
  	/*管理员状态，用于设置为只有超级管理员才能删除，其他人只能设置为不使用*/
  `astatus` INT(3) DEFAULT 0,
  PRIMARY KEY (`aid`)
) 

/*============================*/
/* Table: 用户表结构(会员) 		  */
/*============================*/
create table member(
	/*注册用户ID，设置为自动增长*/
	uid				int not null auto_increment,
	/*用户登录名*/
	uname			varchar(20),
	/*用户密码*/
	upass			varchar(20),
	/*用户昵称*/
	unickname		varchar(20),
	/*用户性别,*/
	usex 			varchar(20),
	/*用户电话号码*/
	ucellphone			varchar(20),
	/*用户Email地址*/
	uemail			varchar(20),
	/*用户常住地址*/
	uaddress		varchar(255),
	/*用户状态，0表示停用，1表示启用*/
	ustatus			int(5),
	/*设置用户ID为member表的主键,这里不考虑用户名作主键，即使要，需再加一个属性*/
	primary key(uid)
);

/*=============================*/
/* Table: 商品类别表结构 		   */
/*=============================*/
create table category
(
   /* 类别编号,自动增长 */
   cid                  int not null auto_increment,
   /* 类别名称 */
   ctype                varchar(20),
   /* 类别是否为热点类别,热点类别才有可能显示在首页 */
   chot                 bool default false,
   /* 外键,此类别由哪位管理员管理 */
   aid                  int(3),
   	/*类别状态，用于删除*/
   	cstatus 			int(3),
   /* 设置类别编号为主键 */
   primary key (cid)
);

-- ----------------------------
-- Table structure for `eec`
-- ----------------------------
DROP TABLE IF EXISTS `eec`;
CREATE TABLE `eec` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `etype` varchar(31) DEFAULT NULL,
  `eexplian` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


/*============================*/
/* Table: 汽车表结构 		  */
/*============================*/
create table newcar (
	/*系统ID*/
	nid 				int	not null auto_increment,
	/*车量品牌首字母*/
	nfirst_letter 		varchar (381),
	/*图片pic*/
	npic				varchar(255) default null,
	/*车辆厂商(品牌)名称，华晨宝马和宝马x6都是宝马品牌下*/
	nmake_name 			varchar (381),
	/*车辆系列，一汽公司或一汽品牌下的系类，宝马，奔驰下也有很多系列*/
	nmodel_series 		varchar (381),
	/*车辆名称，一个系列下的各个车辆名称--天津一汽有：夏利N3、夏利N7*/
	nmodel_name 			varchar (381),
	/*车辆系列（主指上市时间）*/
	ntype_series 		varchar (381),
	/*类型名称，这个是对车辆的简述*/
	ntype_name 			varchar (381),
	/*出产国，英，德，美，日*/
	ncountry 			varchar (9),
	/*车辆类型，小型车，大型车，车辆的类型：商务车、跑车、MPV、皮卡等*/
	nvehicle_class 		varchar (31),
	/*发动机排量类型,1400,1.4T是1400的增强版，加了涡轮压缩*/
	nengine_capacity 	varchar (15),
	/*离合类型，手动挡，自动挡*/
	ntransmission 		varchar (12),
	/*是否为有效,0为无效，1为有效*/
	nvalid				int (3),
	/*是否为推荐单，0为否，1为真*/
	nrecommend			int (3),
	/*进口还是国产还是合资，这个作为外键和类型关联*/
	cid 			int (3),
	primary key (nid)
); 

/*============================*/
/* Table: 二手汽车表结构 		  */
/*============================*/
CREATE TABLE usedcar(
	/*系统编号*/
	uid		INT(3)  NOT NULL AUTO_INCREMENT,
	/*汽车首字母*/
	ufirst_letter	INT(3),
	/*图片名存储*/
	upic		VARCHAR(255),
	/*厂商(品牌)*/
	umake_name  	VARCHAR(63),
	/*车辆系列,简称车系*/
	umake_series	VARCHAR(63),
	/*车名*/
	umodel_name 	VARCHAR(63),
	/*车辆系列(指上市时间)*/
	utype_series    VARCHAR(31),
	/*车辆信息简述*/
	utype_name 	VARCHAR(255),
	/*是否有效*/
	uvalid    	INT(3),
	/*是否推荐*/
	urecommend 	INT(3),
	/*上牌时间*/
	ufirst_register VARCHAR(31) ,
	/*上牌地点*/
	ulicense_location VARCHAR(31),
	/*尾气排放标准，做外键关联*/
	eid  INT(3),
	/*汽车类别，做外检关联和首页显示*/
	cid		INT(3),
	/*车身颜色*/
	ucolor		VARCHAR(31),
	/*车辆用途*/
	ucar_using	VARCHAR(31),
	/*行驶里程*/
	udriven_distans VARCHAR(31),
	/*转手次数*/
	utransfer_times	INT(3),
	/*联系人号码*/
	ucellphone 	VARCHAR(31),
	/*联系人*/
	ucontains	VARCHAR(31),
	/*看车地点*/
	ulocation	VARCHAR(255),
	/*二手车价格*/
	uused_price	VARCHAR(31),
	/*新车最近价格*/
	ulatest_price	VARCHAR(31),
	/*登记此信息时间*/
	upost_time	TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	/*卖家留言*/
	useller_message LONGTEXT,
	/*系统编号为主键*/
	PRIMARY KEY(uid)
);

/*=============================*/
/* Table: 订单表结构	 		   */
/*=============================*/
create table forder
(
   /* 订单编号,自动增长 */
   fid                  int not null auto_increment,
   /* 下订单人名称 */
   fname                varchar(20),
   /* 下订单人电话 */
   fphone               varchar(20),
   /* 备注信息，在订单中显示：“我中意你嘅车” */
   fremark              varchar(20),
   /* 收件人邮箱，用于系统发送邮件等 */
   femail               varchar(20),
   /* 下单日期 */
   fdate                timestamp default CURRENT_TIMESTAMP,
   /* 订单总金额 */
   ftotal               decimal(8,2),
   /* 会员编号 */
   uid                  int,
   /* 订单状态 */
   sid                  int,
   /* 设置订单编号为主键 */
   primary key (fid)
);
/* 修改自动增长的初始值 */
ALTER TABLE forder AUTO_INCREMENT = 2016041301;

/*=============================*/
/* Table: 订单项表结构 		   */
/*=============================*/
create table sorder
(
   /* 购物项编号,自动增长 */
   sid                  int not null auto_increment,
   /* 被购买商品的名称 */
   sname                varchar(20),
   /* 购买时商品的订单价格 */
   sprice               decimal(8,2),
   /* 预定的数量 */
   snumber              int not null,
   /* 所属新车编号 */
   nid                  int,
   /* 此订单项,所属的订单编号 */
   fid                  int,
   /* 设置购物项编号为主键 */
   primary key (sid)
);

/*=============================*/
/* Table: 订单状态表结构 		   */
/*=============================*/
create table status
(
   /* 状态编号,自动增长 */
   sid                  int not null auto_increment,
   /* 订单状态 */
   status               varchar(10),
   /* 设置订单编号为主键 */
   primary key (sid)
);

/*=============================*/
/* Table: 日志表结构	 		   */
/*=============================*/
create table logs
(
   /* 日志编号,自动增长 */
   lid                  int not null auto_increment,
   /* 请求路径 */
   lpath                varchar(200),
   /* 请求参数 */
   lparam               varchar(500),
   /* 请求的时间 */
   ldate                timestamp default CURRENT_TIMESTAMP,
   /* 如果是用户请求,存储用户编号 */
   uid                  int,
   /* 如果是管理员请求,存储管理员编号 */
   aid                  int,
   /* 设置日志编号为主键 */
   primary key (lid)
);




/*account测试数据*/
insert into account (alogin,aname,apass,astutas) values("admin","超级管理员","1",1);
insert into account (alogin,aname,apass,astutas) values("test01","测试账号1","123",1);

/*用户测试数据*/
insert into member (uname,upass,unickname,usex,ucellphone,uemail,uaddress,ustatus) values('user01','123','jackson','男','123456','123@123.com','阳江市',1);
insert into member (uname,upass,unickname,usex,ucellphone,uemail,uaddress,ustatus) values('user02','123','马瑞','男','123456','123@123.com','揭阳市','1');
insert into member (uname,upass,unickname,usex,ucellphone,uemail,uaddress,ustatus) values('马方','123','mafang','男','123456','123@123.com','天涯市','1');

/*汽车类别查询*/
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (1, '进口', 1, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (2, '合资', 1, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (3, '自主', 1, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (4, '其他', 0, 1, 1);
/*vehicle_class数据，做备份，应该用不到*/
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (5, '微型车', 0, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (6, '小型车', 0, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (7, '中型车', 0, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (8, '中大型车', 0, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (9, '紧凑型车', 0, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (10, '大型车', 0, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (11, 'MPV', 0, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (12, 'SUV', 0, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (13, '跑车', 0, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (14, '皮卡', 0, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (15, '豪华车', 0, 1, 1);
INSERT INTO `category` (`cid`, `ctype`, `chot`, `aid`, `cstatus`) VALUES (16, '商务车', 0, 1, 1);

/*汽车尾气排放标准表测试数据*/
INSERT INTO `eec` VALUES ('1', '国IV', '中国第四阶段排放标准');
INSERT INTO `eec` VALUES ('2', '国Ⅲ', '中国第三阶段排放标准');
INSERT INTO `eec` VALUES ('3', '国V', '中国第四阶段排放标准');
INSERT INTO `eec` VALUES ('4', '欧Ⅰ', '欧盟');
INSERT INTO `eec` VALUES ('5', '欧Ⅱ', null);
INSERT INTO `eec` VALUES ('6', '欧Ⅲ', null);
INSERT INTO `eec` VALUES ('7', '欧Ⅳ', null);
INSERT INTO `eec` VALUES ('8', '欧Ⅴ', null);

/*汽车表结构的测试数据去复制*/

/*forder表测试数据*/
INSERT INTO forder (fname,fphone,fremark,femail,ftotal,uid) 
VALUES ('于华','12345678','我中意你嘅车','1234@123.com',200,24);
/*sorder表测试数据*/
INSERT INTO sorder (sname,sprice,snumber,nid,fid) VALUES ('奥迪A1(进口)',200,1,1,2013021801);
INSERT INTO sorder (sname,sprice,snumber,nid,fid) VALUES ('电视',0.1,2,16,2013021801);
/*status表测试数据*/
INSERT INTO status (status) VALUES ('未支付');
INSERT INTO status (status) VALUES ('已支付');
INSERT INTO status (status) VALUES ('正在配送');
INSERT INTO status (status) VALUES ('废单');


desc account;
desc menber;
desc category ;
desc newcar;
desc eec;
desc forder;
desc sorder;
desc status;

SELECT * FROM account;
SELECT * FROM member;
select * from newcar;
select * from eec;
select * from sorder;
select * from forder;
select * from status;
