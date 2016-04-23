/*
Navicat MySQL Data Transfer

Source Server         : mysql_navicat
Source Server Version : 50163
Source Host           : localhost:3306
Source Database       : carshop

Target Server Type    : MYSQL
Target Server Version : 50163
File Encoding         : 65001

Date: 2016-04-15 20:49:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `alogin` varchar(20) DEFAULT NULL,
  `aname` varchar(20) DEFAULT NULL,
  `apass` varchar(20) DEFAULT NULL,
  `aemail` varchar(20) DEFAULT NULL,
  `astatus` int(3) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'admin', '超级管理员', '1', '123@a.com', '1');
INSERT INTO `account` VALUES ('5', 'test02', '测试数据2326', '123', '123@a.com', '1');
INSERT INTO `account` VALUES ('6', 'test02', '我爱罗2', '123', '123@a.com', '1');
INSERT INTO `account` VALUES ('10', 'test03', '123123123', '324234', '2asdfasd@123.com', '1');
INSERT INTO `account` VALUES ('16', '123123', '的防守反击', 'asdfasdf', '234@123.com', '0');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(20) DEFAULT NULL,
  `chot` tinyint(1) DEFAULT '0',
  `aid` int(3) DEFAULT NULL,
  `cstatus` int(3) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '进口', '1', '1', '1');
INSERT INTO `category` VALUES ('2', '合资', '1', '1', '1');
INSERT INTO `category` VALUES ('3', '自主', '1', '1', '1');
INSERT INTO `category` VALUES ('4', '其他', '0', '1', '1');
INSERT INTO `category` VALUES ('5', '微型车', '0', '1', '1');
INSERT INTO `category` VALUES ('6', '小型车', '0', '1', '1');
INSERT INTO `category` VALUES ('7', '中型车', '0', '1', '1');
INSERT INTO `category` VALUES ('8', '中大型车', '0', '1', '1');
INSERT INTO `category` VALUES ('9', '紧凑型车', '0', '1', '1');
INSERT INTO `category` VALUES ('10', '大型车', '0', '1', '1');
INSERT INTO `category` VALUES ('11', 'MPV', '0', '1', '1');
INSERT INTO `category` VALUES ('12', 'SUV', '0', '1', '1');
INSERT INTO `category` VALUES ('13', '跑车', '0', '1', '1');
INSERT INTO `category` VALUES ('14', '皮卡', '0', '1', '1');
INSERT INTO `category` VALUES ('15', '豪华车', '0', '1', '1');
INSERT INTO `category` VALUES ('16', '商务车', '0', '1', '0');

-- ----------------------------
-- Table structure for `eec`
-- ----------------------------
DROP TABLE IF EXISTS `eec`;
CREATE TABLE `eec` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `etype` varchar(31) DEFAULT NULL,
  `eexplian` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eec
-- ----------------------------
INSERT INTO `eec` VALUES ('1', '国IV', '中国第四阶段排放标准');
INSERT INTO `eec` VALUES ('2', '国Ⅲ', '中国第三阶段排放标准');
INSERT INTO `eec` VALUES ('3', '国V', '中国第四阶段排放标准');
INSERT INTO `eec` VALUES ('4', '欧Ⅰ', '欧盟');
INSERT INTO `eec` VALUES ('5', '欧Ⅱ', null);
INSERT INTO `eec` VALUES ('6', '欧Ⅲ', null);
INSERT INTO `eec` VALUES ('7', '欧Ⅳ', null);
INSERT INTO `eec` VALUES ('8', '欧Ⅴ', '欧洲2015最新汽车排放标准');

-- ----------------------------
-- Table structure for `forder`
-- ----------------------------
DROP TABLE IF EXISTS `forder`;
CREATE TABLE `forder` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) DEFAULT NULL,
  `fphone` varchar(20) DEFAULT NULL,
  `fremark` varchar(20) DEFAULT NULL,
  `femail` varchar(20) DEFAULT NULL,
  `fdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ftotal` decimal(8,2) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=2016041310 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forder
-- ----------------------------
INSERT INTO `forder` VALUES ('2016041301', '于华', '12345678', '我中意你嘅车', '1234@123.com', '2016-04-13 10:17:10', '200.00', '24', '1');
INSERT INTO `forder` VALUES ('2016041303', '不要联系我，我会爱上你', '12312321', 'wo ai nei', '12312@123.com', '2016-04-14 20:27:06', '300.00', null, '1');
INSERT INTO `forder` VALUES ('2016041304', '测试', '12312321', 'wo ai nei', '12312@123.com', '2016-04-14 20:29:36', '300.00', '1', '1');
INSERT INTO `forder` VALUES ('2016041306', 'test', '123456', '123', '12344@123.com', '2016-04-15 07:45:01', '200.00', '25', '1');
INSERT INTO `forder` VALUES ('2016041307', 'test', '123456', '1231', '12344@123.com', '2016-04-15 07:48:16', '200.00', '25', '1');
INSERT INTO `forder` VALUES ('2016041308', 'test', '123456', 'dffgf', '12344@123.com', '2016-04-15 08:04:24', '200.00', '25', '1');
INSERT INTO `forder` VALUES ('2016041309', 'test', '123456', '1q2313', '12344@123.com', '2016-04-15 08:55:21', '200.00', '25', '1');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `upass` varchar(20) DEFAULT NULL,
  `unickname` varchar(20) DEFAULT NULL,
  `usex` varchar(20) DEFAULT NULL,
  `ucellphone` varchar(20) DEFAULT NULL,
  `uemail` varchar(20) DEFAULT NULL,
  `uaddress` varchar(255) DEFAULT NULL,
  `ustatus` int(5) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', 'user01', '123', 'jackson', '男', '123456', '123@123.com', '阳江市', '1');
INSERT INTO `member` VALUES ('2', 'user02', '123', '马瑞', '男', '123456', '123@123.com', '揭阳市', '1');
INSERT INTO `member` VALUES ('3', '马方', '123', '测试更新昵称', '男', '123456', '123@123.com', '天涯市q', '1');
INSERT INTO `member` VALUES ('21', '23423', '4234', '23423', '42342', '2342342', '34234234', '234234', '0');
INSERT INTO `member` VALUES ('22', '3123', '12312312', '31231231', '2312321', '312312', '3213123', '123123', '0');
INSERT INTO `member` VALUES ('23', 'user03', '123', '凯瑞', null, '123123', '4234@123.com', '测试市', '1');
INSERT INTO `member` VALUES ('24', 'user', '123', '打个', '男', '1212121', '1234@123.com', '房间都是开放', '1');
INSERT INTO `member` VALUES ('25', 'test', '123', '御风', '男', '123456', '12344@123.com', '没有地址', '1');

-- ----------------------------
-- Table structure for `newcar`
-- ----------------------------
DROP TABLE IF EXISTS `newcar`;
CREATE TABLE `newcar` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `nfirst_letter` varchar(381) DEFAULT NULL,
  `npic` varchar(255) DEFAULT NULL,
  `nmake_name` varchar(381) DEFAULT NULL,
  `nmodel_series` varchar(381) DEFAULT NULL,
  `nmodel_name` varchar(381) DEFAULT NULL,
  `ntype_series` varchar(381) DEFAULT NULL,
  `ntype_name` varchar(381) DEFAULT NULL,
  `ncountry` varchar(9) DEFAULT NULL,
  `nvehicle_class` varchar(31) DEFAULT NULL,
  `nengine_capacity` varchar(15) DEFAULT NULL,
  `ntransmission` varchar(12) DEFAULT NULL,
  `nvalid` int(3) DEFAULT NULL,
  `nrecommend` int(3) DEFAULT NULL,
  `cid` int(3) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newcar
-- ----------------------------
INSERT INTO `newcar` VALUES ('1', 'A', '232e79ba-ab5e-4e87-96b5-e9632af11937.jpg', '奥迪', '奥迪', '奥迪A1(进口)', '2011 款', '1.4 TFSI  7档双离合 Ego款', '德', '小型车', '1400', '双离合', '1', '1', '1');
INSERT INTO `newcar` VALUES ('2', 'A', null, '奥迪', '奥迪', '奥迪A5(进口)', '2011 款', 'Sportback 2.0T 舒适型 CVT无级变速', '德', '跑车', '2000', '无级变速', '1', '1', '1');
INSERT INTO `newcar` VALUES ('3', 'B', 'image51.jpg', '宝马', '宝马', '宝马7系(进口)', '2010 款', '750Li', '德', '豪华车', '4400', '自动', '1', '1', '1');
INSERT INTO `newcar` VALUES ('4', 'B', 'image51.jpg', '宾利', '宾利', '宾利Arnage(进口)', '2007 款', 'Arange T', '英', '豪华车', '6800', '自动', '1', '1', '1');
INSERT INTO `newcar` VALUES ('5', 'B', 'image51.jpg', '别克', '别克', '昂科雷(进口)', '2009 款', 'CXL1精英版', '美', 'SUV', '3600', '自动', '1', '1', '1');
INSERT INTO `newcar` VALUES ('6', 'A', 'image51.jpg', '奥迪', '奥迪', '奥迪A1(进口)', '2011 款', '1.4 TFSI  7档双离合 Ego款', '德', '小型车', '1400', '双离合', '1', '1', '1');
INSERT INTO `newcar` VALUES ('7', 'A', 'fbefb417-063f-46d3-b782-4c6fdf9abe4c.jpg', '奥迪', '奥迪', '奥迪A5(进口)', '2011 款', 'Sportback 2.0T 舒适型 CVT无级变速', '德', '跑车', '2000', '无级变速', '1', '1', '1');
INSERT INTO `newcar` VALUES ('8', 'B', 'image51.jpg', '宝马', '宝马', '宝马7系(进口)', '2010 款', '750Li', '德', '豪华车', '4400', '自动', '1', '1', '1');
INSERT INTO `newcar` VALUES ('9', 'B', 'image51.jpg', '宾利', '宾利', '宾利Arnage(进口)', '2007 款', 'Arange T', '英', '豪华车', '6800', '自动', '1', '1', '1');
INSERT INTO `newcar` VALUES ('10', 'B', 'image51.jpg', '别克', '别克', '昂科雷(进口)', '2009 款', 'CXL1精英版', '美', 'SUV', '3600', '自动', '1', '1', '1');
INSERT INTO `newcar` VALUES ('11', 'B', 'image51.jpg', '本田', '东风本田', '东风本田CR-V', '2012 款', '2.4L 自动 尊贵版 VTi-S', '日', 'SUV', '2400', '自动', '1', '1', '2');
INSERT INTO `newcar` VALUES ('12', 'B', 'image51.jpg', '本田', '广汽本田', '雅阁', '2007 款', '经典版2.0自动舒适', '日', '中型车', '2000', '自动', '1', '1', '2');
INSERT INTO `newcar` VALUES ('13', 'B', 'image51.jpg', '别克', '上海通用别克', '君越', '2012 款', '3.0L 自动 旗舰版', '美', '中大型车', '3000', '手自一体', '1', '1', '2');
INSERT INTO `newcar` VALUES ('14', 'D', 'image51.jpg', '大众', '上海大众', 'POLO', '2011 款', '1.4L 手动致尚版', '德', '小型车', '1400', '手动', '1', '1', '2');
INSERT INTO `newcar` VALUES ('15', 'F', 'image51.jpg', '菲亚特', '南京菲亚特', '派力奥', '2002 款', '1.5 EXL手动版 ', '意大利', '小型车', '1500', '手动', '1', '1', '2');
INSERT INTO `newcar` VALUES ('16', 'B', 'image52.jpg', '本田', '东风本田', '东风本田CR-V', '2012 款', '2.4L 自动 尊贵版 VTi-S', '日', 'SUV', '2400', '自动', '1', '1', '2');
INSERT INTO `newcar` VALUES ('17', 'B', 'image52.jpg', '本田', '广汽本田', '雅阁', '2007 款', '经典版2.0自动舒适', '日', '中型车', '2000', '自动', '1', '1', '2');
INSERT INTO `newcar` VALUES ('18', 'B', 'image52.jpg', '别克', '上海通用别克', '君越', '2012 款', '3.0L 自动 旗舰版', '美', '中大型车', '3000', '手自一体', '1', '1', '2');
INSERT INTO `newcar` VALUES ('19', 'D', 'image52.jpg', '大众', '上海大众', 'POLO', '2011 款', '1.4L 手动致尚版', '德', '小型车', '1400', '手动', '1', '1', '3');
INSERT INTO `newcar` VALUES ('20', 'F', 'image52.jpg', '菲亚特', '南京菲亚特', '派力奥', '2002 款', '1.5 EXL手动版 ', '意大利', '小型车', '1500', '手动', '1', '1', '2');
INSERT INTO `newcar` VALUES ('21', 'Y', 'image52.jpg', '一汽', '天津一汽', '夏利N3', '2005 款', 'N3 1.0L 三厢豪华型', '中', '小型车', '1000', '手动', '1', '1', '3');
INSERT INTO `newcar` VALUES ('23', '123', 'image52.jpg', '放羊', '放羊', '放羊一号', '2015 款', '1.5T 手自一体', '德', '小型车', '2000', '手自一体', '1', '1', '3');
INSERT INTO `newcar` VALUES ('26', '2', 'image52.jpg', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1', '1', '3');
INSERT INTO `newcar` VALUES ('27', 'D', '669bc668-822f-4129-8a8a-980081df1589.jpg', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1', '1', '2');
INSERT INTO `newcar` VALUES ('28', '123', 'd5f1adc5-f144-4970-8032-c3c3bdfa34a4.jpg', '2', '2', '2', '2', '2', '2', '', '22', '2', '1', '1', '2');
INSERT INTO `newcar` VALUES ('29', 'c', 'f324e485-e0e2-4f4f-a4ab-a44db999fb31.jpg', '666', '6', '6', '6', '', '6', '6', '66', '6', '1', '1', '2');

-- ----------------------------
-- Table structure for `sorder`
-- ----------------------------
DROP TABLE IF EXISTS `sorder`;
CREATE TABLE `sorder` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `sprice` decimal(8,2) DEFAULT NULL,
  `snumber` int(11) NOT NULL,
  `nid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sorder
-- ----------------------------
INSERT INTO `sorder` VALUES ('1', '奥迪A1(进口)', '200.00', '1', '1', '2016041301');
INSERT INTO `sorder` VALUES ('2', '宝马7系(进口)', '500.00', '1', '8', '2016041301');
INSERT INTO `sorder` VALUES ('4', '二汽大众', '300.00', '1', '1', '2016041301');
INSERT INTO `sorder` VALUES ('7', 'å¤å©N3+ä¸­å½', '200.00', '1', '21', '2016041308');
INSERT INTO `sorder` VALUES ('8', 'åè¶+ä¸­å½', '200.00', '1', '13', '2016041309');

-- ----------------------------
-- Table structure for `status`
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('1', '未支付');
INSERT INTO `status` VALUES ('2', '已支付');
INSERT INTO `status` VALUES ('3', '正在配送');
INSERT INTO `status` VALUES ('4', '废单');

-- ----------------------------
-- Table structure for `usedcar`
-- ----------------------------
DROP TABLE IF EXISTS `usedcar`;
CREATE TABLE `usedcar` (
  `uid` int(3) NOT NULL AUTO_INCREMENT,
  `ufirst_letter` varchar(3) DEFAULT NULL,
  `upic` varchar(255) DEFAULT NULL,
  `umake_name` varchar(63) DEFAULT NULL,
  `umodel_series` varchar(63) DEFAULT NULL,
  `umodel_name` varchar(63) DEFAULT NULL,
  `utype_series` varchar(31) DEFAULT NULL,
  `uengine_capacity` varchar(31) DEFAULT NULL,
  `utransmission` varchar(31) DEFAULT NULL,
  `utype_name` varchar(255) DEFAULT NULL,
  `uvalid` int(3) DEFAULT NULL,
  `urecommend` int(3) DEFAULT NULL,
  `ufirst_register` varchar(31) DEFAULT NULL,
  `ulicense_location` varchar(31) DEFAULT NULL,
  `eid` int(3) DEFAULT NULL,
  `cid` int(3) DEFAULT NULL,
  `ucolor` varchar(31) DEFAULT NULL,
  `ucar_using` varchar(31) DEFAULT NULL,
  `udriven_distans` varchar(31) DEFAULT NULL,
  `utransfer_times` int(3) DEFAULT NULL,
  `ucellphone` varchar(31) DEFAULT NULL,
  `ucontains` varchar(31) DEFAULT NULL,
  `ulocation` varchar(255) DEFAULT NULL,
  `uused_price` varchar(31) DEFAULT NULL,
  `ulatest_price` varchar(31) DEFAULT NULL,
  `upost_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `useller_message` longtext,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usedcar
-- ----------------------------
INSERT INTO `usedcar` VALUES ('5', 'Q', '51.jpg', '奥迪', '奥迪', '奥迪k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '1', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '浙江省杭州市西湖村小卖部4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('6', 'Q', '51.jpg', '奥迪', '奥迪', '奥迪k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '1', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '浙江省杭州市西湖村小卖部4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('7', 'Q', '51.jpg', '奥迪', '奥迪', '奥迪k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '1', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '浙江省杭州市西湖村小卖部4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('8', 'Q', '51.jpg', '奥迪', '奥迪', '奥迪k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '1', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '浙江省杭州市西湖村小卖部4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('9', 'Q', '51.jpg', '奥迪', '奥迪', '奥迪k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '1', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '浙江省杭州市西湖村小卖部4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('10', 'Q', '51.jpg', '奥迪', '奥迪', '奥迪k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '1', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '浙江省杭州市西湖村小卖部4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('11', 'Q', '51.jpg', '奥迪', '奥迪', '奥迪k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '1', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '浙江省杭州市西湖村小卖部4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('12', 'Q', '51.jpg', '奥迪', '奥迪', '奥迪k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '1', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '浙江省杭州市西湖村小卖部4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('13', 'Q', '51.jpg', '起亚', '起亚', '起亚k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '3', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '江苏省江苏市江苏县江苏村5号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('14', 'Q', '51.jpg', '起亚', '起亚', '起亚k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '3', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '江苏省江苏市江苏县江苏村5号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('15', 'Q', '51.jpg', '起亚', '起亚', '起亚k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '3', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '江苏省江苏市江苏县江苏村5号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('16', 'Q', '51.jpg', '起亚', '起亚', '起亚k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '3', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '江苏省江苏市江苏县江苏村5号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('17', 'Q', '51.jpg', '起亚', '起亚', '起亚k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '3', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '江苏省江苏市江苏县江苏村5号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('18', 'Q', '51.jpg', '起亚', '起亚', '起亚k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '3', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '江苏省江苏市江苏县江苏村5号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('19', 'Q', '51.jpg', '起亚', '起亚', '起亚k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '3', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '江苏省江苏市江苏县江苏村5号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('20', 'D', '51.jpg', '东风日产', '东风日产', '东风日产k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '2', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '天津市工业园区枫兰路4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('21', 'D', '51.jpg', '东风日产', '东风日产', '东风日产k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '2', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '天津市工业园区枫兰路4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('22', 'D', '51.jpg', '东风日产', '东风日产', '东风日产k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '2', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '天津市工业园区枫兰路4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('23', 'D', '51.jpg', '东风日产', '东风日产', '东风日产k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '2', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '天津市工业园区枫兰路4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('24', 'D', '51.jpg', '东风日产', '东风日产', '东风日产k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '2', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '天津市工业园区枫兰路4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('25', 'D', '51.jpg', '东风日产', '东风日产', '东风日产k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '2', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '天津市工业园区枫兰路4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
INSERT INTO `usedcar` VALUES ('26', 'D', '51.jpg', '东风日产', '东风日产', '东风日产k5', '2015 款', '3000', '手自一体', '1.5T 家用型', '1', '1', '2015年7月', '广东江门', '2', '2', '白色', '单位用车', '3.5万公里', '0', '123456798', '王先生', '天津市工业园区枫兰路4号', '15 万', '18 万', '2016-04-11 12:40:42', 'fasdfasdfadsfdsafsdafsdafdsf');
