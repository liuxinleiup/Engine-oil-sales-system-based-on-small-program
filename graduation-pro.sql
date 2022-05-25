/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : graduation-pro

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 06/05/2022 15:48:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` char(19) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `detail_address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `is_default` tinyint(1) DEFAULT NULL COMMENT '是否默认地址',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` VALUES (20, '2', '17628113224', '北京市市辖区东城区', '', 1, '肖禹涵');
INSERT INTO `address` VALUES (21, '2', '1', '北京市市辖区东城区', '', 0, '111');
INSERT INTO `address` VALUES (22, '1521674820188758018', '1111111', '北京市市辖区东城区', '', 1, '111');
INSERT INTO `address` VALUES (23, '1521674820188758018', '2', '北京市市辖区东城区', '', 0, '2');
INSERT INTO `address` VALUES (24, '1520378109390491650', '1', '北京市市辖区东城区', '', 1, '1');
COMMIT;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` char(19) NOT NULL DEFAULT '' COMMENT 'ID',
  `title` varchar(20) DEFAULT '' COMMENT '标题',
  `image_url` varchar(500) NOT NULL DEFAULT '' COMMENT '图片地址',
  `link_url` varchar(500) DEFAULT '' COMMENT '链接地址',
  `sort` int unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_deleted` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='首页banner表';

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` VALUES ('1521762968130326529', '22222222', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651537443O1CN01BB6z0K1mmfrLK5G8j_!!0-item_pic.jpg_460x460Q90.jpg_.png', '', 0, 0, '2022-05-04 16:05:39');
COMMIT;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` char(19) DEFAULT NULL,
  `spuid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `catelog_name` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (8, '全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1650592494025机油.png');
INSERT INTO `category` VALUES (9, '普通矿物机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1650592565668燃油；机油.png');
INSERT INTO `category` VALUES (10, '半合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1650592643806废机油.png');
INSERT INTO `category` VALUES (11, '合成科技', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651650911754发动机机油压力.png');
INSERT INTO `category` VALUES (12, '合成技术', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651056804机油.png');
INSERT INTO `category` VALUES (13, '合成型机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651074216燃油供应.png');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` char(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `uid` char(19) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `publishtime` datetime DEFAULT NULL,
  `spu_id` int NOT NULL,
  `photos` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `show_type` varchar(10) DEFAULT NULL COMMENT '显示类型',
  `coupon_name` varchar(255) DEFAULT NULL COMMENT '优惠券名称',
  `num` int DEFAULT NULL COMMENT '优惠券数量',
  `amount` decimal(18,4) DEFAULT NULL COMMENT '金额',
  `min_point` decimal(18,4) DEFAULT NULL COMMENT '使用门槛',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `enable_start_time` varchar(255) DEFAULT NULL COMMENT '可以领取的开始日期',
  `enable_end_time` varchar(255) DEFAULT NULL COMMENT '可以领取的结束日期',
  `use_type` int DEFAULT NULL COMMENT '使用类型[0->全场通用；1->指定分类；2->指定商品]',
  `spuid` int DEFAULT NULL,
  `cid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------
BEGIN;
INSERT INTO `coupon` VALUES (1, '仿京东', '满100减3元', 3, 3.0000, 100.0000, '此优惠券不可转让', '2022-05-17', '2022-05-26', 2, 92, NULL);
INSERT INTO `coupon` VALUES (3, '仿淘宝', '满三百减20', 0, 20.0000, 300.0000, '此优惠券只限指定商品', '2022-05-24', '2022-05-27', 1, NULL, 9);
COMMIT;

-- ----------------------------
-- Table structure for coupon_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `coupon_user_relation`;
CREATE TABLE `coupon_user_relation` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `coupon_id` bigint DEFAULT NULL COMMENT '优惠券id',
  `user_id` bigint DEFAULT NULL COMMENT 'spu_id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='优惠券与产品关联';

-- ----------------------------
-- Records of coupon_user_relation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for logistics_info
-- ----------------------------
DROP TABLE IF EXISTS `logistics_info`;
CREATE TABLE `logistics_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `update_time` datetime DEFAULT NULL,
  `sorting` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `order_no` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='物流信息';

-- ----------------------------
-- Records of logistics_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pattern
-- ----------------------------
DROP TABLE IF EXISTS `pattern`;
CREATE TABLE `pattern` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patter_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pattern
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for spu_images
-- ----------------------------
DROP TABLE IF EXISTS `spu_images`;
CREATE TABLE `spu_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spu_id` int DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spu_images
-- ----------------------------
BEGIN;
INSERT INTO `spu_images` VALUES (34, 92, 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp');
INSERT INTO `spu_images` VALUES (35, 92, 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630874623O1CN018HEFQE1Cl0BRjNvBI_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp');
INSERT INTO `spu_images` VALUES (36, 93, 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651317592O1CN01BB6z0K1mmfrLK5G8j_!!0-item_pic.jpg_460x460Q90.jpg_.webp');
INSERT INTO `spu_images` VALUES (37, 93, 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651320299O1CN01zIDvxG1mmfqkkcVfc_!!653064997.jpg_430x430q90.jpg');
INSERT INTO `spu_images` VALUES (38, 94, 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651441124O1CN01BB6z0K1mmfrLK5G8j_!!0-item_pic.jpg_460x460Q90.jpg_.webp');
COMMIT;

-- ----------------------------
-- Table structure for spu_info
-- ----------------------------
DROP TABLE IF EXISTS `spu_info`;
CREATE TABLE `spu_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `detail` longtext,
  `category_id` int NOT NULL,
  `area_id` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sales` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `isputaway` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `pattern_id` int DEFAULT NULL,
  `visitor` int DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `dispatch_place` varchar(255) DEFAULT NULL COMMENT '发货地',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spu_info
-- ----------------------------
BEGIN;
INSERT INTO `spu_info` VALUES (92, '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', '<ul><li>	产品名称:&nbsp;起亚 高级全合成汽油机油 5W-30 SN 4L</li><li>	品牌:&nbsp;起亚</li><li>	型号:&nbsp;高级全合成汽油机油</li><li>	净含量:&nbsp;4L</li><li>	适合发动机种类:&nbsp;汽油发动机</li><li>	机油分类:&nbsp;全合成机油</li><li>	粘度级别:&nbsp;5W-30</li><li>	机油级别:&nbsp;SN</li></ul><p><img src=\"https://img.alicdn.com/imgextra/i3/2207482699058/O1CN01TlBVm92GmcCCdjDPE_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i3/2207482699058/O1CN01tGmJV22GmcC1kF4in_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i2/2207482699058/O1CN01PpwhFM2GmcC6OKiUx_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i2/2207482699058/O1CN01DbYkaj2GmcCAfO1lu_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i4/2207482699058/O1CN01DRqcww2GmcCFKA3Gc_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i4/2207482699058/O1CN01tSISz12GmcC9zpaxt_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i3/2207482699058/O1CN01vaQOpL2GmcC9jz9jX_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i1/2207482699058/O1CN01AIJlKc2GmcCArJRhy_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i3/2207482699058/O1CN01KLAliF2GmcCBwVPEW_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i4/2207482699058/O1CN01dUfi5A2GmcCAfS3Nh_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i4/2207482699058/O1CN01kpLqAJ2GmcCDpx56o_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i4/2207482699058/O1CN01FkgbZ92GmcCA6ftdz_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i2/2207482699058/O1CN01ksTKnc2GmcC9jzd0J_!!2207482699058.jpg\"><img src=\"https://img.alicdn.com/imgextra/i1/2207482699058/O1CN01lD5GMT2GmcCBwUnuJ_!!2207482699058.jpg\"></p>', 9, NULL, 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 140.00, 8, 10, 1, '2022-05-04 10:21:19', NULL, 65, '普通矿物机油', NULL);
INSERT INTO `spu_info` VALUES (93, '美孚正品摩托车机油全合成四冲程4t专用三轮车踏板车四季通用夏季', '<p><br></p><p><img src=\"https://gdp.alicdn.com/imgextra/i2/653064997/O1CN01bTuuqL1mmfnhjBnFR_!!653064997.jpg\"></p><p>&nbsp;<img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01L2J1D81mmfmQPlm9U_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i2/653064997/O1CN01cdvC5V1mmfmT9s8bd_!!653064997.jpg\"></p><p><img src=\"https://img.alicdn.com/imgextra/i4/653064997/O1CN019PwG2V1mmfoxWmW7f_!!653064997.jpg\"></p><p><br></p><p><img src=\"https://img.alicdn.com/imgextra/i2/653064997/O1CN01BAD4Bx1mmfotFXzw0_!!653064997.jpg\"></p><p>&nbsp;</p><p><img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01sKkv8O1mmfmR9ihdN_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01eejABn1mmfmQPpX40_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i2/653064997/O1CN01wviNgP1mmfmR9jqKu_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i1/653064997/O1CN01L5cvlm1mmfmTVIKbd_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i2/653064997/O1CN01KRfmP31mmfmURKnrE_!!653064997.jpg\"></p><p><img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01a7PZAm1mmfp0zYN0n_!!653064997.jpg\"></p><p><img src=\"https://img.alicdn.com/imgextra/i4/653064997/O1CN01Rr2JDh1mmfmT9qrdb_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i2/653064997/O1CN01sntcIz1mmfmR9kiNd_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01poCiYa1mmfmT9sTQL_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01CM2gVG1mmfmOQbq5G_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i1/653064997/O1CN016rHXQF1mmfmWMKTrY_!!653064997.jpg\"></p><p><img src=\"https://gdp.alicdn.com/imgextra/i3/653064997/O1CN01W5Kb0S1mmflI44oOc_!!653064997.jpg\"></p><p><br></p><p><img src=\"https://img.alicdn.com/tfs/TB1.CUdsY9YBuNjy0FgXXcxcXXa-1572-394.png\" width=\"790\"></p><h4><br></h4><p><br></p>', 10, NULL, 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651317592O1CN01BB6z0K1mmfrLK5G8j_!!0-item_pic.jpg_460x460Q90.jpg_.webp', 321.00, 33, 18, 1, '2022-05-04 16:02:05', NULL, 35, '半合成机油', NULL);
INSERT INTO `spu_info` VALUES (94, '美孚正品摩托车机油全合成四冲程4t专用三轮车踏板车四季通用夏季\n官方授权 正品保障 国际大品牌', '<p><br></p><p><img src=\"https://gdp.alicdn.com/imgextra/i2/653064997/O1CN01bTuuqL1mmfnhjBnFR_!!653064997.jpg\"></p><p>&nbsp;<img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01L2J1D81mmfmQPlm9U_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i2/653064997/O1CN01cdvC5V1mmfmT9s8bd_!!653064997.jpg\"></p><p><img src=\"https://img.alicdn.com/imgextra/i4/653064997/O1CN019PwG2V1mmfoxWmW7f_!!653064997.jpg\"></p><p><br></p><p><img src=\"https://img.alicdn.com/imgextra/i2/653064997/O1CN01BAD4Bx1mmfotFXzw0_!!653064997.jpg\"></p><p>&nbsp;</p><p><img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01sKkv8O1mmfmR9ihdN_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01eejABn1mmfmQPpX40_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i2/653064997/O1CN01wviNgP1mmfmR9jqKu_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i1/653064997/O1CN01L5cvlm1mmfmTVIKbd_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i2/653064997/O1CN01KRfmP31mmfmURKnrE_!!653064997.jpg\"></p><p><img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01a7PZAm1mmfp0zYN0n_!!653064997.jpg\"></p><p><img src=\"https://img.alicdn.com/imgextra/i4/653064997/O1CN01Rr2JDh1mmfmT9qrdb_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i2/653064997/O1CN01sntcIz1mmfmR9kiNd_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01poCiYa1mmfmT9sTQL_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i3/653064997/O1CN01CM2gVG1mmfmOQbq5G_!!653064997.jpg\"><img src=\"https://img.alicdn.com/imgextra/i1/653064997/O1CN016rHXQF1mmfmWMKTrY_!!653064997.jpg\"></p><p><img src=\"https://gdp.alicdn.com/imgextra/i3/653064997/O1CN01W5Kb0S1mmflI44oOc_!!653064997.jpg\"></p><p><br></p><p><img src=\"https://img.alicdn.com/tfs/TB1.CUdsY9YBuNjy0FgXXcxcXXa-1572-394.png\" width=\"790\"></p><h4>评&nbsp;&nbsp;价</h4><h4 class=\"ql-align-center\"><br></h4><p><br></p>', 8, NULL, 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651441124O1CN01BB6z0K1mmfrLK5G8j_!!0-item_pic.jpg_460x460Q90.jpg_.webp', 435.00, 44, 29, 1, '2022-05-04 16:04:30', NULL, 36, '全合成机油', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` char(19) NOT NULL DEFAULT '',
  `order_no` varchar(20) NOT NULL DEFAULT '' COMMENT '订单号',
  `product_name` varchar(100) DEFAULT NULL COMMENT '名称',
  `product_cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `nickname` varchar(50) DEFAULT NULL COMMENT '会员昵称',
  `mobile` varchar(11) DEFAULT NULL COMMENT '会员手机',
  `total_fee` decimal(10,2) DEFAULT '0.01' COMMENT '订单金额（分）',
  `status` tinyint DEFAULT NULL COMMENT '订单状态（0：未支付 1：已支付）',
  `is_deleted` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `product_id` int DEFAULT NULL,
  `member_id` char(19) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `ship_state` int DEFAULT NULL COMMENT '未发货0 已发货1 已收货2',
  `track_num` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dispatch_place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单';

-- ----------------------------
-- Records of t_order
-- ----------------------------
BEGIN;
INSERT INTO `t_order` VALUES ('1522042844271874049', '20220505103744741', '美孚正品摩托车机油全合成四冲程4t专用三轮车踏板车四季通用夏季\n官方授权 正品保障 国际大品牌', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651441124O1CN01BB6z0K1mmfrLK5G8j_!!0-item_pic.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 435.00, 1, 0, '2022-05-05 10:37:44', 94, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522042956851187713', '20220505103813245', '美孚正品摩托车机油全合成四冲程4t专用三轮车踏板车四季通用夏季', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651317592O1CN01BB6z0K1mmfrLK5G8j_!!0-item_pic.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 321.00, 1, 0, '2022-05-05 10:38:14', 93, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522043031367192577', '20220505103831744', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 1, 0, '2022-05-05 10:38:32', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522087165415133185', '20220505133353148', '美孚正品摩托车机油全合成四冲程4t专用三轮车踏板车四季通用夏季\n官方授权 正品保障 国际大品牌', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651441124O1CN01BB6z0K1mmfrLK5G8j_!!0-item_pic.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 435.00, 0, 0, '2022-05-05 13:33:54', 94, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522087165574516738', '20220505133353411', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 0, 0, '2022-05-05 13:33:54', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522218069273874434', '20220505221400908', '美孚正品摩托车机油全合成四冲程4t专用三轮车踏板车四季通用夏季', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651317592O1CN01BB6z0K1mmfrLK5G8j_!!0-item_pic.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 321.00, 0, 0, '2022-05-05 22:14:01', 93, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522387978616414209', '20220506092913165', '美孚正品摩托车机油全合成四冲程4t专用三轮车踏板车四季通用夏季', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651317592O1CN01BB6z0K1mmfrLK5G8j_!!0-item_pic.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 321.00, 0, 0, '2022-05-06 09:29:13', 93, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522394622523973634', '20220506095537949', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 1, 0, '2022-05-06 09:55:37', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522407098065879041', '20220506104511235', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 0, 0, '2022-05-06 10:45:12', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522407288248205314', '20220506104557142', '美孚正品摩托车机油全合成四冲程4t专用三轮车踏板车四季通用夏季', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651651317592O1CN01BB6z0K1mmfrLK5G8j_!!0-item_pic.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 321.00, 0, 0, '2022-05-06 10:45:57', 93, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522407430015680513', '20220506104630848', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 1, 0, '2022-05-06 10:46:31', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522408109371293698', '20220506104912332', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 1, 0, '2022-05-06 10:49:13', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522412333652066305', '20220506110559698', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 1, 0, '2022-05-06 11:06:00', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522413140594143234', '20220506110912490', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 0, 0, '2022-05-06 11:09:12', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522413179081076737', '20220506110921548', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 0, 0, '2022-05-06 11:09:22', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522413342247890946', '20220506111000014', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 0, 0, '2022-05-06 11:10:01', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522416826737299458', '20220506112351623', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 0, 0, '2022-05-06 11:23:51', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522417042622320641', '20220506112442901', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 0, 0, '2022-05-06 11:24:43', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522417120275664898', '20220506112501069', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 0, 0, '2022-05-06 11:25:01', 92, '1521674820188758018', 22, 0, NULL, NULL);
INSERT INTO `t_order` VALUES ('1522465172634013698', '20220506143557926', '北京现代起亚狮跑智跑傲跑秀尔KX5KX3福瑞迪K2K3K4K5SN全合成机油', 'http://gulipro-edu.oss-cn-beijing.aliyuncs.com/1651630870639O1CN010zbfc91iRpO1krkv0_!!0-saturn_solar.jpg_460x460Q90.jpg_.webp', 'Glens', NULL, 140.00, 1, 0, '2022-05-06 14:35:58', 92, '1521674820188758018', 22, 0, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` char(19) NOT NULL COMMENT 'id',
  `openid` varchar(128) DEFAULT NULL COMMENT '微信openid',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `sex` char(2) DEFAULT NULL COMMENT '性别 1 女，2 男',
  `age` int DEFAULT NULL COMMENT '年龄',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `identify` varchar(1) DEFAULT NULL,
  `money` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`id`) USING BTREE,
  KEY `nickname` (`nickname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1521674820188758018', NULL, '17628113224', '111', 'Glens', '男', NULL, 'https://tanhua-xyh.oss-cn-beijing.aliyuncs.com/images/man.jpg', NULL, NULL, 103143.00);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
