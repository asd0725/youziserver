/*
Navicat MySQL Data Transfer

Source Server         : demo
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2021-05-19 20:30:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `backmenu`
-- ----------------------------
DROP TABLE IF EXISTS `backmenu`;
CREATE TABLE `backmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onemenu` varchar(255) DEFAULT NULL,
  `twomenu` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `otype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of backmenu
-- ----------------------------
INSERT INTO `backmenu` VALUES ('1', '用户管理', null, '0', null);
INSERT INTO `backmenu` VALUES ('2', '电影管理', null, '0', null);
INSERT INTO `backmenu` VALUES ('3', '评论管理', null, '0', null);
INSERT INTO `backmenu` VALUES ('4', '排行榜', null, '0', null);
INSERT INTO `backmenu` VALUES ('5', null, '用户信息', '1', '1');
INSERT INTO `backmenu` VALUES ('6', null, '热门电影', '1', '2');
INSERT INTO `backmenu` VALUES ('7', null, '正在热映', '1', '2');
INSERT INTO `backmenu` VALUES ('8', null, '即将上映', '1', '2');
INSERT INTO `backmenu` VALUES ('9', null, '用户评论', '1', '3');
INSERT INTO `backmenu` VALUES ('10', null, '排行榜', '1', '4');

-- ----------------------------
-- Table structure for `backuser`
-- ----------------------------
DROP TABLE IF EXISTS `backuser`;
CREATE TABLE `backuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_ur` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `backuser_id` int(11) DEFAULT NULL,
  `backuser_img` varchar(255) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of backuser
-- ----------------------------
INSERT INTO `backuser` VALUES ('1', 'dsa0123', 'dsa0123', '9001', null, '东方不败');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `user_img` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `rate` decimal(10,1) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `zan` int(11) DEFAULT NULL,
  `cai` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `user_url` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `movie_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('2', 'https://s3.ax1x.com/2021/02/08/yU3TZ6.png', 'https://s3.ax1x.com/2021/02/08/yUR6w6.png', 'uytru', '4.0', '2020-01-30', '这是一部美国典型的反智题材电影。聪明的人未必一定能成功。阿甘的智商极低，却情商极高。他一直怀着单纯的心，做了在别人眼里了不起的事，也尽力照顾身边的人。 成功充满必然与偶然。 人生就像是一盒巧克力。 最经典的两句台词', '111', '25', '1013', 'user', '5002', '阿甘正传');
INSERT INTO `comment` VALUES ('3', 'https://s3.ax1x.com/2021/02/08/yU37dK.png', 'https://s3.ax1x.com/2021/02/08/yURcTK.png', 'u让他已经', '3.0', '2020-02-01', '新海诚终于会讲一个复杂故事了，真不容易啊！当年那部搔首弄姿、无病呻吟的“言叶之庭”差点让我转成终身黑，“君之名”却轰出了我睽违已久的少女心。彗星降临的末世情怀，穿越时空的灵之绳结，只有7秒钟记忆的鱼...星空、爱情以及所有遇见都是注定。', '110', '22', '1014', 'user', '5003', '你的名字');
INSERT INTO `comment` VALUES ('4', 'https://s3.ax1x.com/2021/02/08/yUPhJU.png', 'https://s3.ax1x.com/2021/02/08/yURyex.png', '法大师傅后', '4.0', '2021-01-12', '是晁盖也是宋江，是警察也是匪徒，是英雄也是疯子，是解铃人也是系铃人。为何不认识她还是会心动，不记得他还是会心痛，为何要在用人即弃的世界苟且，在万夫莫开的关口坚守。为了拯救别人不惜性命，为了证明能力舍掉自我。救一城来渡己的是圣人，灭众生来渡己的是魔鬼，不过一念之间，却得用一生偿还。', '65', '12', '1003', 'user', '5001', '拆弹专家2');
INSERT INTO `comment` VALUES ('5', 'https://s3.ax1x.com/2021/02/08/yUOdQP.png', 'https://s3.ax1x.com/2021/02/08/yURcTK.png', 'u让他已经', '3.0', '2021-01-12', '片长二个多小时，笑点包袱很少，剧情真的很狗血，克拉拉在情圣里的性感俏皮可爱至少不违和，贴合人物特点，这剧里面演了个傻子吗？包贝尔不是演技有多烂，毕竟烂演技的演员多了去了，但是不明白为什么老接烂片呢？剧情不行，演技不行，笑点不行，慎看！！', '36', '51', '1005', 'user', '5003', '大红包');
INSERT INTO `comment` VALUES ('6', 'https://s3.ax1x.com/2021/02/08/yU3fz9.png', 'https://s3.ax1x.com/2021/02/08/yUR6w6.png', 'uytru', '3.0', '2020-01-25', '欲望无限，就会让你失去自己，进而痛失所爱；在残酷的环境下，只有努力去适应并寻求改变，才能有突破的可能；成功路人，伯乐很重要，一定要记得感恩；奋斗途中，会有妖魔鬼怪，也有可爱温暖的无脸男和小白。节制欲望、不断进阶、知世故而不世故、做个善良有温度的人。千寻，你是最棒的！', '99', '12', '1009', 'user', '5002', '千与千寻');
INSERT INTO `comment` VALUES ('7', 'https://s3.ax1x.com/2021/02/08/yU3TZ6.png', 'https://s3.ax1x.com/2021/02/08/yUR6w6.png', 'u让他已经', '3.0', '2020-01-21', '他的十二支船，每一支都是她的名字。她走后，他只得跑遍世界的每一个湖泊和沙漠来思念她，只等她一声召唤便死心塌地的回到她的身边。好莱坞编造一个这么纯粹的故事，让我们看到我们所拥有的感情，是多么的残破不堪。这简直是残忍的，不道德的。', '101', '10', '1013', 'user', '5003', '阿甘正传');
INSERT INTO `comment` VALUES ('8', 'https://s3.ax1x.com/2021/02/08/yU3RG4.png', 'https://s3.ax1x.com/2021/02/08/yURyex.png', '法大师傅后', '4.0', '2020-01-19', '实名反对最赞说烂片的评论，这是人类无法逃脱的真香定律！ 看完觉得不值票钱可以来快乐星球砍我！', '45', '32', '1007', 'user', '5001', '哪吒之魔童降世哪吒之魔童降世');
INSERT INTO `comment` VALUES ('9', 'https://s3.ax1x.com/2021/02/08/yU3LJe.png', 'https://s3.ax1x.com/2021/02/08/yURyex.png', '法大师傅后', '4.0', '2020-02-01', '如果能让自己不再为光阴被虚度，才华被耗尽而流泪，如果能让自己坚定，“我不要似是而非的人生，我要自己做的每一件事都刻骨铭心”，那么这场狂热便是得其所，记住这永远不是最差的人生。', '109', '12', '1017', 'user', '5001', '当幸福来敲门');
INSERT INTO `comment` VALUES ('10', 'https://s3.ax1x.com/2021/02/08/yU3HIO.png', 'https://s3.ax1x.com/2021/02/08/yURcTK.png', 'u让他已经', '4.0', '2020-12-31', '某山渣树怎么好意思说自己是史上最纯？？！！！！！ 这个真打动我了。。。女孩是第二眼美女！！！！！！！！！！', '86', '6', '1015', 'user', '5003', '怦然心动');
INSERT INTO `comment` VALUES ('12', 'https://s3.ax1x.com/2021/02/08/yU37dK.png', 'https://s3.ax1x.com/2021/02/08/yUR6w6.png', 'gf苟富贵', '3.0', '2021-02-18', '黛玉心中想道：“好生奇怪，倒像在哪里见过一般，何等眼熟到如此!” 宝玉看罢，因笑道：“这个妹妹我曾见过的。” 贾母笑道：“可又是胡说，你又何曾见过他？” 宝玉笑道：“虽然未曾见过他，然我看着面善，心里就算是旧相识，今日只作远别重逢，未为不可。”', '0', '0', '1014', null, '5004', '你的名字');
INSERT INTO `comment` VALUES ('13', 'https://s3.ax1x.com/2021/02/08/yUP1Re.png', 'https://s3.ax1x.com/2021/02/08/yURyex.png', '法大师傅后', '1.0', '2021-02-18', '中国人喜欢避谈生死，但2020年不管是对于整个社会或是对我个人来说，都是直面生死的一年。年初发小离世，年中最疼爱我的阿姨被查出乳腺癌晚期，年末的我，已经没有勇气再说我热爱生活了 。但这部电影告诉我，不需要考虑这个问题，只需要好好活在当下就好。就像韦一航，从一个丧萌的少年，变成坦荡的大人。', '0', '0', '1000', null, '5001', '送你一朵小红花');
INSERT INTO `comment` VALUES ('14', 'https://s3.ax1x.com/2021/02/08/yUP1Re.png', 'https://s3.ax1x.com/2021/02/08/yURyex.png', '法大师傅后', '4.0', '2021-02-18', '首先，抄袭 biss，融梗 biss。但是，轻易鉴定一部电影是融梗或者抄袭，是一种很大的伤害，尤其是对抗病题材的电影。看了最开始说《小红花》和《星运》像的那篇长篇，偏颇很大。', '0', '0', '1000', null, '5001', '送你一朵小红花');
INSERT INTO `comment` VALUES ('21', 'https://s3.ax1x.com/2021/02/08/yUPBRg.png', 'https://s3.ax1x.com/2021/02/08/yURyex.png', '法大师傅后', '4.0', '2021-02-26', '教科书般的分镜和剪辑，故事比较少儿。今天心情太差，在电影院里哭很惨就是了。羡慕这种失去了也能再度盈满的生活。还是很期待高坂希太郎更加个人化的作品的。', '0', '0', '1002', null, '5001', '温泉屋的小老板娘');
INSERT INTO `comment` VALUES ('22', 'https://s3.ax1x.com/2021/02/08/yUOdQP.png', '', 'hythyth', '4.0', '2021-02-27', '辛辣讽刺了艺谋拍戏镜头长，家卫拍戏没剧本，建议被碰瓷的迪丽热巴古力娜扎热依扎和哪吒联名发律师函抗议。陈重在楼下拿喇叭喊话就能获得原谅，假婚礼上一个吻就能让人心动，说母亲尿毒症就能保住工作，这么匪夷所思的诈骗天赋调任哈尔滨实属屈才，公司很有眼光。利用盲人残疾制造笑料令人神经性呕吐。', '0', '0', '1005', null, '5005', '大红包');
INSERT INTO `comment` VALUES ('23', 'https://s3.ax1x.com/2021/02/08/yU3RG4.png', 'http://localhost:3000/upload/pic_floor01_5@2x.png', 'hehee', '4.0', '2021-03-08', '休说苍天不由人，我命由我不由天。新的故事，改编的很不错啊，就是有点短。友情提醒：观影记得带纸巾', '0', '0', '1007', null, '5015', '哪吒之魔童降世');

-- ----------------------------
-- Table structure for `koubei`
-- ----------------------------
DROP TABLE IF EXISTS `koubei`;
CREATE TABLE `koubei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of koubei
-- ----------------------------
INSERT INTO `koubei` VALUES ('1', '蜂鸟计划', '1001');
INSERT INTO `koubei` VALUES ('2', '拆弹专家2', '1003');
INSERT INTO `koubei` VALUES ('3', '送你一朵小红花', '1000');
INSERT INTO `koubei` VALUES ('4', '你的名字', '1014');
INSERT INTO `koubei` VALUES ('5', '疯狂动物城', '1008');
INSERT INTO `koubei` VALUES ('6', '哪吒之魔童降世', '1007');
INSERT INTO `koubei` VALUES ('7', '千与千寻', '1009');
INSERT INTO `koubei` VALUES ('8', '寻梦环游记', '1012');
INSERT INTO `koubei` VALUES ('9', '心灵奇旅', '1004');
INSERT INTO `koubei` VALUES ('10', '怦然心动', '1015');

-- ----------------------------
-- Table structure for `movie_actor`
-- ----------------------------
DROP TABLE IF EXISTS `movie_actor`;
CREATE TABLE `movie_actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_name` varchar(255) DEFAULT NULL,
  `actor_img` varchar(255) DEFAULT NULL,
  `actor_role` varchar(255) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `derive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_actor
-- ----------------------------
INSERT INTO `movie_actor` VALUES ('1', '韩延', 'https://s3.ax1x.com/2021/02/17/ygWqMR.png', '导演', '1000', '1');
INSERT INTO `movie_actor` VALUES ('2', '易烊千玺', 'https://s3.ax1x.com/2021/02/08/yUPua6.png', '饰  韦一航', '1000', '2');
INSERT INTO `movie_actor` VALUES ('3', '刘浩存', 'https://s3.ax1x.com/2021/02/08/yUPlGD.png', '饰  马小远', '1000', '3');
INSERT INTO `movie_actor` VALUES ('4', '朱媛媛', 'https://s3.ax1x.com/2021/02/08/yUPKIK.png', '饰  陶慧', '1000', '4');
INSERT INTO `movie_actor` VALUES ('5', '高亚麟', 'https://s3.ax1x.com/2021/02/08/yUPQPO.png', '饰  韦江', '1000', '5');
INSERT INTO `movie_actor` VALUES ('6', '夏雨', 'https://s3.ax1x.com/2021/02/17/ygfCzd.png', '饰  老马', '1000', '6');
INSERT INTO `movie_actor` VALUES ('7', '阮金', 'https://s3.ax1x.com/2021/02/17/yg59WF.png', '导演', '1001', '1');
INSERT INTO `movie_actor` VALUES ('8', '杰西·艾森伯格', 'https://s3.ax1x.com/2021/02/08/yUPGMd.png', '饰 Vincent Zale', '1001', '2');
INSERT INTO `movie_actor` VALUES ('9', ' 亚历山大·斯卡斯加德', 'https://s3.ax1x.com/2021/02/08/yUPYqI.png', '饰 Anton Zale', '1001', '3');
INSERT INTO `movie_actor` VALUES ('10', '萨尔玛·海耶克', 'https://s3.ax1x.com/2021/02/08/yUPNZt.png', '饰 Eva Torres', '1001', '4');
INSERT INTO `movie_actor` VALUES ('11', '迈克尔·曼多', 'https://s3.ax1x.com/2021/02/08/yUPaIf.png', '饰 Mark Vega', '1001', '5');
INSERT INTO `movie_actor` VALUES ('12', '约翰·海尔登贝格', 'https://s3.ax1x.com/2021/02/08/yUPUdP.png', '饰 Amish Elder', '1001', '6');
INSERT INTO `movie_actor` VALUES ('13', '高坂希太郎', 'https://s3.ax1x.com/2021/02/08/yUPDzQ.png', '导演', '1002', '1');
INSERT INTO `movie_actor` VALUES ('14', '小林星兰', 'https://s3.ax1x.com/2021/02/08/yUPsMj.png', '配 关织子', '1002', '2');
INSERT INTO `movie_actor` VALUES ('15', '水树奈奈', 'https://s3.ax1x.com/2021/02/08/yUPyss.png', '配 秋野真月', '1002', '3');
INSERT INTO `movie_actor` VALUES ('16', '松田飒水', 'https://s3.ax1x.com/2021/02/08/yUP6Ln.png', '配 立卖诚', '1002', '4');
INSERT INTO `movie_actor` VALUES ('17', '远藤璃菜', 'https://s3.ax1x.com/2021/02/08/yUPgZq.png', '配 秋野美阳', '1002', '5');
INSERT INTO `movie_actor` VALUES ('18', '小樱悦子', 'https://s3.ax1x.com/2021/02/08/yUP2d0.png', '配 铃鬼', '1002', '6');
INSERT INTO `movie_actor` VALUES ('19', '邱礼涛', 'https://s3.ax1x.com/2021/02/08/yUPRoV.png', '导演', '1003', '1');
INSERT INTO `movie_actor` VALUES ('20', '刘德华', 'https://s3.ax1x.com/2021/02/08/yUPfiT.png', '饰 潘乘风', '1003', '2');
INSERT INTO `movie_actor` VALUES ('21', '刘青云', 'https://s3.ax1x.com/2021/02/08/yUP4WF.png', '饰 董卓文', '1003', '3');
INSERT INTO `movie_actor` VALUES ('22', '倪妮', 'https://s3.ax1x.com/2021/02/08/yUP5z4.png', '饰 庞玲', '1003', '4');
INSERT INTO `movie_actor` VALUES ('23', '谢君豪', 'https://s3.ax1x.com/2021/02/08/yUPoQJ.png', '演员', '1003', '5');
INSERT INTO `movie_actor` VALUES ('24', '姜皓文', 'https://s3.ax1x.com/2021/02/08/yUPTy9.png', '演员', '1003', '6');
INSERT INTO `movie_actor` VALUES ('27', '测试1', 'http://localhost:3000/upload/ctyls.jpg', '导演', '100010', '1');
INSERT INTO `movie_actor` VALUES ('43', '测试2', 'http://localhost:3000/upload/ctyls.jpg', '演员', '100010', '2');
INSERT INTO `movie_actor` VALUES ('44', '测试3', 'http://localhost:3000/upload/ctyls.jpg', '演员', '100010', '3');
INSERT INTO `movie_actor` VALUES ('46', '测试4', 'http://localhost:3000/upload/ctyls.jpg', '演员', '100010', '4');
INSERT INTO `movie_actor` VALUES ('47', '测试5', 'http://localhost:3000/upload/ctyls.jpg', '演员', '100010', '5');
INSERT INTO `movie_actor` VALUES ('48', '测试6', 'http://localhost:3000/upload/ctyls.jpg', '演员', '100010', '6');
INSERT INTO `movie_actor` VALUES ('49', '彼特·道格特', 'https://s3.ax1x.com/2021/02/08/yUPbe1.png', '导演', '1004', '1');
INSERT INTO `movie_actor` VALUES ('50', '凯普·鲍尔斯', 'https://s3.ax1x.com/2021/02/08/yUPqdx.png', '联合执导', '1004', '2');
INSERT INTO `movie_actor` VALUES ('51', '杰米·福克斯', 'https://s3.ax1x.com/2021/02/08/yU3BMn.png', '配 Joe Gardner', '1004', '3');
INSERT INTO `movie_actor` VALUES ('52', '蒂娜·菲', 'https://s3.ax1x.com/2021/02/08/yU3rq0.png', '配 22', '1004', '4');
INSERT INTO `movie_actor` VALUES ('53', '菲利西亚·拉', 'https://s3.ax1x.com/2021/02/08/yU3Drq.png', '配 Libba Gard', '1004', '5');
INSERT INTO `movie_actor` VALUES ('54', '阿米尔-卡利', 'https://s3.ax1x.com/2021/02/08/yU36aT.png', '配 Curly', '1004', '6');
INSERT INTO `movie_actor` VALUES ('55', '李克龙', 'https://s3.ax1x.com/2021/02/26/6Sp2Gt.png', '导演', '1005', '1');
INSERT INTO `movie_actor` VALUES ('56', '包贝尔', 'https://s3.ax1x.com/2021/02/26/6SpsVH.png', '饰 陈重', '1005', '2');
INSERT INTO `movie_actor` VALUES ('57', '克拉拉', 'https://s3.ax1x.com/2021/02/26/6Sp6IA.png', '饰 Ellie', '1005', '3');
INSERT INTO `movie_actor` VALUES ('58', '张一鸣', 'https://s3.ax1x.com/2021/02/26/6SpgPI.png', '饰 大瑞', '1005', '4');
INSERT INTO `movie_actor` VALUES ('59', '贾冰', 'https://s3.ax1x.com/2021/02/26/6SpBrD.png', '饰 钱好史', '1005', '5');
INSERT INTO `movie_actor` VALUES ('60', '许君聪', 'https://s3.ax1x.com/2021/02/26/6SpDqe.png', '饰 保安大聪', '1005', '6');
INSERT INTO `movie_actor` VALUES ('61', '饺子', 'https://s3.ax1x.com/2021/02/26/6SnHns.png', '导演', '1007', '1');
INSERT INTO `movie_actor` VALUES ('62', '吕艳婷', 'https://s3.ax1x.com/2021/02/26/6SnbBn.png', '配 儿童哪吒', '1007', '2');
INSERT INTO `movie_actor` VALUES ('63', '囧森瑟夫', 'https://s3.ax1x.com/2021/02/26/6Snq7q.png', '配 少年哪吒', '1007', '3');
INSERT INTO `movie_actor` VALUES ('64', '瀚墨', 'https://s3.ax1x.com/2021/02/26/6SnOA0.png', '配 敖丙', '1007', '4');
INSERT INTO `movie_actor` VALUES ('65', '陈浩', 'https://s3.ax1x.com/2021/02/26/6SnXNV.png', '配 李靖', '1007', '5');
INSERT INTO `movie_actor` VALUES ('66', '绿绮', 'https://s3.ax1x.com/2021/02/26/6SnjhT.png', '配 殷夫人', '1007', '6');
INSERT INTO `movie_actor` VALUES ('67', '拜伦·霍华德', 'https://s3.ax1x.com/2021/02/26/6Snx9U.png', '导演', '1008', '1');
INSERT INTO `movie_actor` VALUES ('68', '瑞奇·摩尔', 'https://s3.ax1x.com/2021/02/26/6Snz3F.png', '导演', '1008', '2');
INSERT INTO `movie_actor` VALUES ('69', '金妮弗·古德温', 'https://s3.ax1x.com/2021/02/26/6SuSc4.png', '配 兔朱迪', '1008', '3');
INSERT INTO `movie_actor` VALUES ('70', '杰森·贝特曼', 'https://s3.ax1x.com/2021/02/26/6SupjJ.png', '配 狐尼克', '1008', '4');
INSERT INTO `movie_actor` VALUES ('71', '伊德里斯·艾', 'https://s3.ax1x.com/2021/02/26/6SuCu9.png', '配 牛局长', '1008', '5');
INSERT INTO `movie_actor` VALUES ('72', '珍妮·斯蕾特', 'https://s3.ax1x.com/2021/02/26/6SuPBR.png', '配 羊副市长', '1008', '6');
INSERT INTO `movie_actor` VALUES ('73', '宫崎骏', 'https://s3.ax1x.com/2021/02/26/6SuiH1.png', '导演', '1009', '1');
INSERT INTO `movie_actor` VALUES ('74', '柊瑠美', 'https://s3.ax1x.com/2021/02/26/6SukAx.png', '配 荻野千寻', '1009', '2');
INSERT INTO `movie_actor` VALUES ('75', '入野自由', 'https://s3.ax1x.com/2021/02/26/6SuAN6.png', '配 白龙 ', '1009', '3');
INSERT INTO `movie_actor` VALUES ('76', '夏木真理', 'https://s3.ax1x.com/2021/02/26/6SuE4K.png', '配 汤婆婆', '1009', '4');
INSERT INTO `movie_actor` VALUES ('77', '菅原文太', 'https://s3.ax1x.com/2021/02/26/6SuZ9O.png', '配 锅炉爷爷', '1009', '5');
INSERT INTO `movie_actor` VALUES ('78', '中村彰男', 'https://s3.ax1x.com/2021/02/26/6Sue3D.png', '配 无脸男 ', '1009', '6');
INSERT INTO `movie_actor` VALUES ('79', '詹姆斯·卡梅隆', 'https://s3.ax1x.com/2021/02/26/6Sumge.png', '导演', '1010', '1');
INSERT INTO `movie_actor` VALUES ('80', '莱昂纳多·迪', 'https://s3.ax1x.com/2021/02/26/6SunjH.png', '饰 杰克', '1010', '2');
INSERT INTO `movie_actor` VALUES ('81', '凯特·温丝莱特', 'https://s3.ax1x.com/2021/02/26/6SuKud.png', '饰 罗丝', '1010', '3');
INSERT INTO `movie_actor` VALUES ('82', '比利·赞恩', 'https://s3.ax1x.com/2021/02/26/6SuMDA.png', '饰 卡尔', '1010', '4');
INSERT INTO `movie_actor` VALUES ('83', '凯西·贝茨', 'https://s3.ax1x.com/2021/02/26/6SuQHI.png', '饰 莫莉', '1010', '5');
INSERT INTO `movie_actor` VALUES ('84', '弗兰西丝·费舍', 'https://s3.ax1x.com/2021/02/26/6Su1Et.png', '饰 鲁丝', '1010', '6');
INSERT INTO `movie_actor` VALUES ('85', '文牧野', 'https://s3.ax1x.com/2021/02/26/6Snhh8.png', '导演', '1006', '1');
INSERT INTO `movie_actor` VALUES ('86', '徐峥', 'https://s3.ax1x.com/2021/02/26/6SnocQ.png', '饰 程勇', '1006', '2');
INSERT INTO `movie_actor` VALUES ('87', '王传君', 'https://s3.ax1x.com/2021/02/26/6Snftf.png', '饰 吕受益', '1006', '3');
INSERT INTO `movie_actor` VALUES ('88', '周一围', 'https://s3.ax1x.com/2021/02/26/6Sn59S.png', '饰 曹斌', '1006', '4');
INSERT INTO `movie_actor` VALUES ('89', '谭卓', 'https://s3.ax1x.com/2021/02/26/6SnI1g.png', '饰 刘思慧', '1006', '5');
INSERT INTO `movie_actor` VALUES ('90', '章宇', 'https://s3.ax1x.com/2021/02/26/6SnTXj.png', '饰 黄毛', '1006', '6');
INSERT INTO `movie_actor` VALUES ('91', '涅提·蒂瓦里', 'https://s3.ax1x.com/2021/02/27/6SwPzj.png', '导演', '1011', '1');
INSERT INTO `movie_actor` VALUES ('92', '阿米尔·汗', 'https://s3.ax1x.com/2021/02/27/6Sw9Jg.png', '饰 马哈维亚', '1011', '2');
INSERT INTO `movie_actor` VALUES ('93', '法缇玛·萨那', 'https://s3.ax1x.com/2021/02/27/6SwCWQ.png', '饰 吉塔·珀尕', '1011', '3');
INSERT INTO `movie_actor` VALUES ('94', '桑亚·玛荷塔', 'https://s3.ax1x.com/2021/02/27/6SwpFS.png', '饰 芭比塔·库', '1011', '4');
INSERT INTO `movie_actor` VALUES ('95', '阿帕尔夏克提', 'https://s3.ax1x.com/2021/02/27/6Sdzo8.png', '饰 奥姆卡尔', '1011', '5');
INSERT INTO `movie_actor` VALUES ('96', '沙克希·坦沃', 'https://s3.ax1x.com/2021/02/27/6SwFQs.png', '饰 达雅·考尔', '1011', '6');
INSERT INTO `movie_actor` VALUES ('97', '李·昂克里奇', 'https://s3.ax1x.com/2021/02/27/6Swkyn.png', '导演', '1012', '1');
INSERT INTO `movie_actor` VALUES ('98', '阿德里安·莫', 'https://s3.ax1x.com/2021/02/27/6SwALq.png', '联合导演', '1012', '2');
INSERT INTO `movie_actor` VALUES ('99', '安东尼·冈萨', 'https://s3.ax1x.com/2021/02/27/6SwVe0.png', '配 米格', '1012', '3');
INSERT INTO `movie_actor` VALUES ('100', '盖尔·加西亚', 'https://s3.ax1x.com/2021/02/27/6SwZwV.png', '配 埃克托', '1012', '4');
INSERT INTO `movie_actor` VALUES ('101', '本杰明·布拉特', 'https://s3.ax1x.com/2021/02/27/6SweoT.png', '配 德拉库斯', '1012', '5');
INSERT INTO `movie_actor` VALUES ('102', '阿兰娜·乌巴赫', 'https://s3.ax1x.com/2021/02/27/6SwnFU.png', '配 梅尔达', '1012', '6');
INSERT INTO `movie_actor` VALUES ('103', '罗伯特·泽米', 'https://s3.ax1x.com/2021/02/27/6SwuYF.png', '导演', '1013', '1');
INSERT INTO `movie_actor` VALUES ('104', '汤姆·汉克斯', 'https://s3.ax1x.com/2021/02/27/6SwKW4.png', '饰 Forrest', '1013', '2');
INSERT INTO `movie_actor` VALUES ('105', '罗宾·怀特', 'https://s3.ax1x.com/2021/02/27/6SwQSJ.png', '饰 Jenny Curran\r\n ', '1013', '3');
INSERT INTO `movie_actor` VALUES ('106', '加里·西尼斯', 'https://s3.ax1x.com/2021/02/27/6Swll9.png', '饰 Lieutenant', '1013', '4');
INSERT INTO `movie_actor` VALUES ('107', '麦凯尔泰·威', 'https://s3.ax1x.com/2021/02/27/6Sw1yR.png', '饰 Bubba Blue', '1013', '5');
INSERT INTO `movie_actor` VALUES ('108', '莎莉·菲尔德', 'https://s3.ax1x.com/2021/02/27/6Sw3O1.png', '饰 Mrs. Gump', '1013', '6');
INSERT INTO `movie_actor` VALUES ('109', '新海诚', 'https://s3.ax1x.com/2021/02/27/6SwGex.png', '导演', '1014', '1');
INSERT INTO `movie_actor` VALUES ('110', '神木隆之介', 'https://s3.ax1x.com/2021/02/27/6SwJw6.png', '配 立花泷', '1014', '2');
INSERT INTO `movie_actor` VALUES ('111', '上白石萌音', 'https://s3.ax1x.com/2021/02/27/6SwYTK.png', '配 宫水三叶', '1014', '3');
INSERT INTO `movie_actor` VALUES ('112', '长泽雅美', 'https://s3.ax1x.com/2021/02/27/6SwNFO.png', '配 奥寺前辈', '1014', '4');
INSERT INTO `movie_actor` VALUES ('113', '市原悦子', 'https://s3.ax1x.com/2021/02/27/6SwUYD.png', '配 宫水一叶', '1014', '5');
INSERT INTO `movie_actor` VALUES ('114', '成田凌', 'https://s3.ax1x.com/2021/02/27/6Swafe.png', '配 勅使河原克彦', '1014', '6');
INSERT INTO `movie_actor` VALUES ('115', '罗伯·莱纳', 'https://s3.ax1x.com/2021/02/27/6SwwSH.png', '导演', '1015', '1');
INSERT INTO `movie_actor` VALUES ('116', '玛德琳·卡罗尔', 'https://s3.ax1x.com/2021/02/27/6Sw0ld.png', '饰 朱丽·巴克', '1015', '2');
INSERT INTO `movie_actor` VALUES ('117', '卡兰·麦克奥', 'https://s3.ax1x.com/2021/02/27/6SwB6A.png', '饰 布莱斯·罗', '1015', '3');
INSERT INTO `movie_actor` VALUES ('118', '瑞贝卡·德·莫妮', 'https://s3.ax1x.com/2021/02/27/6SwDOI.png', '饰 帕齐·罗斯', '1015', '4');
INSERT INTO `movie_actor` VALUES ('119', '安东尼·爱德', 'https://s3.ax1x.com/2021/02/27/6Swsmt.png', '饰 斯蒂文·罗斯', '1015', '5');
INSERT INTO `movie_actor` VALUES ('120', '约翰·马奥尼', 'https://s3.ax1x.com/2021/02/27/6Swy0P.png', '饰 切特·邓肯', '1015', '6');
INSERT INTO `movie_actor` VALUES ('121', '拉斯·霍尔斯', 'https://s3.ax1x.com/2021/02/27/6SrnBR.png', '导演', '1016', '1');
INSERT INTO `movie_actor` VALUES ('122', '理查·基尔', 'https://s3.ax1x.com/2021/02/27/6SruH1.png', '饰 Parker', '1016', '2');
INSERT INTO `movie_actor` VALUES ('123', '萨拉·罗默尔', 'https://s3.ax1x.com/2021/02/27/6SrQN6.png', '饰 Andy', '1016', '3');
INSERT INTO `movie_actor` VALUES ('124', '琼·艾伦', 'https://s3.ax1x.com/2021/02/27/6SrMAx.png', '饰 Cate Wilson', '1016', '4');
INSERT INTO `movie_actor` VALUES ('125', '罗比·萨布莱特', 'https://s3.ax1x.com/2021/02/27/6Srl4K.png', '饰 Michael', '1016', '5');
INSERT INTO `movie_actor` VALUES ('126', '加布里埃莱', 'https://s3.ax1x.com/2021/02/27/6Sr39O.png', '导演', '1017', '1');
INSERT INTO `movie_actor` VALUES ('127', '威尔·史密斯', 'https://s3.ax1x.com/2021/02/27/6Sr83D.png', '饰 Chris Gard', '1017', '2');
INSERT INTO `movie_actor` VALUES ('128', '贾登·史密斯', 'https://s3.ax1x.com/2021/02/27/6SrGge.png', '饰 Christopher', '1017', '3');
INSERT INTO `movie_actor` VALUES ('129', '坦迪·牛顿', 'https://s3.ax1x.com/2021/02/27/6SrJjH.png', '饰 Linda', '1017', '4');
INSERT INTO `movie_actor` VALUES ('130', '布莱恩·豪威', 'https://s3.ax1x.com/2021/02/27/6Srtud.png', '饰 Jay Twistle', '1017', '5');
INSERT INTO `movie_actor` VALUES ('131', '詹姆斯·凯伦', 'https://s3.ax1x.com/2021/02/27/6SrdEt.png', '饰 Martin Frohm', '1017', '6');
INSERT INTO `movie_actor` VALUES ('132', '派蒂·杰金斯', 'https://s3.ax1x.com/2021/02/27/6SrUHI.png', '导演', '1018', '1');
INSERT INTO `movie_actor` VALUES ('133', '盖尔·加朵', 'https://s3.ax1x.com/2021/02/27/6SrNDA.png', '饰 神奇女侠', '1018', '2');
INSERT INTO `movie_actor` VALUES ('134', '克里斯·派恩', 'https://s3.ax1x.com/2021/02/27/6SrwUP.png', '饰 Steve Trevor', '1018', '3');
INSERT INTO `movie_actor` VALUES ('135', '康妮·尼尔森', 'https://s3.ax1x.com/2021/02/27/6Sr04f.png', '饰 希波吕忒', '1018', '4');
INSERT INTO `movie_actor` VALUES ('136', '罗宾·怀特', 'https://s3.ax1x.com/2021/02/27/6SwQSJ.png', '饰 安提俄珀', '1018', '5');
INSERT INTO `movie_actor` VALUES ('137', '大卫·休里斯', 'https://s3.ax1x.com/2021/02/27/6SrDC8.png', '饰 帕特里克', '1018', '6');
INSERT INTO `movie_actor` VALUES ('138', '宫崎骏', 'https://s3.ax1x.com/2021/02/26/6SuiH1.png', '导演', '1020', '1');
INSERT INTO `movie_actor` VALUES ('139', '奈良柚莉爱', 'https://s3.ax1x.com/2021/02/27/6Srr8S.png', '配 波妞', '1020', '2');
INSERT INTO `movie_actor` VALUES ('140', '土井洋辉', 'https://s3.ax1x.com/2021/02/27/6Srsgg.png', '配 宗介', '1020', '3');
INSERT INTO `movie_actor` VALUES ('141', '山口智子', 'https://s3.ax1x.com/2021/02/27/6SryvQ.png', '配 理莎', '1020', '4');
INSERT INTO `movie_actor` VALUES ('142', '长岛一茂', 'https://s3.ax1x.com/2021/02/27/6Srcuj.png', '配 耕一 ', '1020', '5');
INSERT INTO `movie_actor` VALUES ('143', '天海祐希', 'https://s3.ax1x.com/2021/02/27/6SrgDs.png', '配 曼玛莲', '1020', '6');
INSERT INTO `movie_actor` VALUES ('144', '派蒂·杰金斯', 'https://s3.ax1x.com/2021/02/27/6SrUHI.png', '导演', '1021', '1');
INSERT INTO `movie_actor` VALUES ('145', '盖尔·加朵', 'https://s3.ax1x.com/2021/02/27/6SrNDA.png', '饰 神奇女侠', '1021', '2');
INSERT INTO `movie_actor` VALUES ('146', '克里斯·派恩', 'https://s3.ax1x.com/2021/02/27/6SrwUP.png', '饰 Steve Trevor', '1021', '3');
INSERT INTO `movie_actor` VALUES ('147', '克里斯汀·韦格', 'https://s3.ax1x.com/2021/02/27/6Sr2bn.png', '饰 豹女', '1021', '4');
INSERT INTO `movie_actor` VALUES ('148', '佩德罗·帕斯卡', 'https://s3.ax1x.com/2021/02/28/69w3mn.png', '饰 麦克斯·洛', '1021', '5');
INSERT INTO `movie_actor` VALUES ('149', '康妮·尼尔森', 'https://s3.ax1x.com/2021/02/27/6Sr04f.png', '饰 希波吕忒 ', '1021', '6');
INSERT INTO `movie_actor` VALUES ('150', '常远', 'https://s3.ax1x.com/2021/02/27/6SRxw4.png', '导演', '1022', '1');
INSERT INTO `movie_actor` VALUES ('151', '常远', 'https://s3.ax1x.com/2021/02/27/6SRxw4.png', '饰 鲍抱', '1022', '2');
INSERT INTO `movie_actor` VALUES ('152', '李沁', 'https://s3.ax1x.com/2021/02/27/6SRvmF.png', '饰 宋温暖', '1022', '3');
INSERT INTO `movie_actor` VALUES ('153', '沈腾', 'https://s3.ax1x.com/2021/02/27/6SRzTJ.png', '饰 贾医生', '1022', '4');
INSERT INTO `movie_actor` VALUES ('154', '乔杉', 'https://s3.ax1x.com/2021/02/27/6SWpk9.png', '饰 王为仁', '1022', '5');
INSERT INTO `movie_actor` VALUES ('155', '马丽', 'https://s3.ax1x.com/2021/02/27/6SW9YR.png', '演员', '1022', '6');
INSERT INTO `movie_actor` VALUES ('156', '曹金玲', 'https://s3.ax1x.com/2021/02/27/6SWCf1.png', '导演', '1023', '1');
INSERT INTO `movie_actor` VALUES ('157', '田定远', 'https://s3.ax1x.com/2021/02/27/6SWiSx.png', '自己', '1023', '2');
INSERT INTO `movie_actor` VALUES ('158', '孟宪明', 'https://s3.ax1x.com/2021/02/27/6SWFl6.png', '自己', '1023', '3');
INSERT INTO `movie_actor` VALUES ('159', '杨莉', 'https://s3.ax1x.com/2021/02/27/6SWk6K.png', '自己', '1023', '4');
INSERT INTO `movie_actor` VALUES ('160', '苏洁', 'https://s3.ax1x.com/2021/02/27/6SWAOO.png', '自己', '1023', '5');
INSERT INTO `movie_actor` VALUES ('161', '李青儿', 'https://s3.ax1x.com/2021/02/27/6SWVmD.png', '自己', '1023', '6');
INSERT INTO `movie_actor` VALUES ('162', '克里斯·艾伯翰斯', 'https://s3.ax1x.com/2021/02/27/6SWZ0e.png', '导演', '1024', '1');
INSERT INTO `movie_actor` VALUES ('163', '成龙', 'https://s3.ax1x.com/2021/02/27/6SWeTH.png', '配 神龙', '1024', '2');
INSERT INTO `movie_actor` VALUES ('164', '牛骏峰', 'https://s3.ax1x.com/2021/02/27/6SWnkd.png', '配 丁思齐', '1024', '3');
INSERT INTO `movie_actor` VALUES ('165', '薇薇安', 'https://s3.ax1x.com/2021/02/27/6SWutA.png', '配 王俐娜', '1024', '4');
INSERT INTO `movie_actor` VALUES ('166', '苏柏丽', 'https://s3.ax1x.com/2021/02/27/6SWKfI.png', '配 丁思齐妈妈', '1024', '5');
INSERT INTO `movie_actor` VALUES ('167', '约翰·赵', 'https://s3.ax1x.com/2021/02/27/6SWQpt.png', '配 神龙 Long', '1024', '6');
INSERT INTO `movie_actor` VALUES ('168', '布莱尔·西蒙斯', '', '导演', '1025', '1');
INSERT INTO `movie_actor` VALUES ('169', '周沁', 'https://s3.ax1x.com/2021/02/27/6SWl1P.png', '导演', '1025', '2');
INSERT INTO `movie_actor` VALUES ('170', '郭盛', 'https://s3.ax1x.com/2021/02/27/6SW16f.png', '配音', '1025', '3');
INSERT INTO `movie_actor` VALUES ('171', '苏俣', 'https://s3.ax1x.com/2021/02/27/6SW3X8.png', '配音', '1025', '4');
INSERT INTO `movie_actor` VALUES ('172', '方宇', '', '配音', '1025', '5');
INSERT INTO `movie_actor` VALUES ('173', '曹凯', 'https://s3.ax1x.com/2021/02/27/6SWGnS.png', '配音', '1025', '6');
INSERT INTO `movie_actor` VALUES ('174', '乔尔·克劳福德', 'https://s3.ax1x.com/2021/02/27/6SWJ0g.png', '导演', '1026', '1');
INSERT INTO `movie_actor` VALUES ('175', '尼古拉斯·凯奇', 'https://s3.ax1x.com/2021/02/27/6SWY7Q.png', '配 Grug', '1026', '2');
INSERT INTO `movie_actor` VALUES ('176', '艾玛·斯通', 'https://s3.ax1x.com/2021/02/27/6SWNkj.png', '配 Eep', '1026', '3');
INSERT INTO `movie_actor` VALUES ('177', '瑞恩·雷诺兹', 'https://s3.ax1x.com/2021/02/27/6SWUts.png', '配 Guy', '1026', '4');
INSERT INTO `movie_actor` VALUES ('178', '凯瑟琳·基纳', 'https://s3.ax1x.com/2021/02/27/6SWahn.png', '配 Ugga', '1026', '5');
INSERT INTO `movie_actor` VALUES ('179', '莱斯利·曼恩', 'https://s3.ax1x.com/2021/02/27/6SWwpq.png', '配 Hope Bette', '1026', '6');
INSERT INTO `movie_actor` VALUES ('180', '今井一晓', 'https://s3.ax1x.com/2021/02/27/6SW010.png', '导演', '1027', '1');
INSERT INTO `movie_actor` VALUES ('181', '水田山葵', 'https://s3.ax1x.com/2021/02/27/6SWBcV.png', '配音', '1027', '2');
INSERT INTO `movie_actor` VALUES ('183', '大原惠美', 'https://s3.ax1x.com/2021/02/27/6SWDXT.png', '配音', '1027', '3');
INSERT INTO `movie_actor` VALUES ('184', '嘉数由美', 'https://s3.ax1x.com/2021/02/27/6SOlIP.png', '配音', '1027', '4');
INSERT INTO `movie_actor` VALUES ('185', '关智一', 'https://s3.ax1x.com/2021/02/27/6SOQat.png', '配音', '1027', '5');
INSERT INTO `movie_actor` VALUES ('186', '木村昴', 'https://s3.ax1x.com/2021/02/27/6SO3Pf.png', '配音', '1027', '6');
INSERT INTO `movie_actor` VALUES ('187', '汤山邦彦', 'https://s3.ax1x.com/2021/02/27/6SOMVI.png', '导演', '1028', '1');
INSERT INTO `movie_actor` VALUES ('188', '矢岛哲生', 'https://s3.ax1x.com/2021/02/27/6SO8G8.png', '导演', '1028', '2');
INSERT INTO `movie_actor` VALUES ('189', '松本梨香', 'https://s3.ax1x.com/2021/02/27/6SOGRS.png', '配音', '1028', '3');
INSERT INTO `movie_actor` VALUES ('190', '大谷育江', 'https://s3.ax1x.com/2021/02/27/6SOJxg.png', '配音', '1028', '4');
INSERT INTO `movie_actor` VALUES ('191', '饭冢雅弓', 'https://s3.ax1x.com/2021/02/27/6SONrj.png', '配音', '1028', '5');
INSERT INTO `movie_actor` VALUES ('192', '麦克斯·卡林内斯库', 'https://s3.ax1x.com/2021/02/27/6SOUqs.png', '配 阿奇', '1029', '1');
INSERT INTO `movie_actor` VALUES ('193', '市村正亲', 'https://s3.ax1x.com/2021/02/27/6SOtMQ.png', '配音', '1028', '6');
INSERT INTO `movie_actor` VALUES ('194', '德文·科恩', 'https://s3.ax1x.com/2021/02/27/6SOdZn.png', '配 小砾', '1029', '2');
INSERT INTO `movie_actor` VALUES ('195', '德鲁·戴维斯', 'https://s3.ax1x.com/2021/02/27/6SOwaq.png', '配 毛毛', '1029', '3');
INSERT INTO `movie_actor` VALUES ('196', '欧文·梅森', '', '配 莱德', '1029', '4');
INSERT INTO `movie_actor` VALUES ('197', '斯图尔特·雷斯顿 ', '', '配 灰灰', '1029', '5');
INSERT INTO `movie_actor` VALUES ('198', '亚历克斯·索恩', 'https://s3.ax1x.com/2021/02/27/6SO0I0.png', '配 路马', '1029', '6');
INSERT INTO `movie_actor` VALUES ('199', '林超贤', 'https://s3.ax1x.com/2021/02/27/6SODiV.png', '导演', '1030', '1');
INSERT INTO `movie_actor` VALUES ('200', '彭于晏', 'https://s3.ax1x.com/2021/02/27/6SOrGT.png', '饰 高谦', '1030', '2');
INSERT INTO `movie_actor` VALUES ('201', '王彦霖', 'https://s3.ax1x.com/2021/02/27/6SOsRU.png', '饰 赵呈', '1030', '3');
INSERT INTO `movie_actor` VALUES ('202', '辛芷蕾', 'https://s3.ax1x.com/2021/02/27/6SOcM4.png', '饰 方宇凌', '1030', '4');
INSERT INTO `movie_actor` VALUES ('203', '蓝盈莹', 'https://s3.ax1x.com/2021/02/27/6SOyzF.png', '饰 文珊\r\n', '1030', '5');
INSERT INTO `movie_actor` VALUES ('204', '王雨甜', 'https://s3.ax1x.com/2021/02/27/6SOgsJ.png', '饰 安鹏', '1030', '6');
INSERT INTO `movie_actor` VALUES ('205', '杜修斌', 'https://s3.ax1x.com/2021/02/27/6SO2L9.png', '导演', '1031', '1');
INSERT INTO `movie_actor` VALUES ('206', '郭虎', 'https://s3.ax1x.com/2021/02/27/6SOWZR.png', '导演', '1031', '2');
INSERT INTO `movie_actor` VALUES ('207', '吕良伟', 'https://s3.ax1x.com/2021/02/27/6SOfd1.png', '演员', '1031', '3');
INSERT INTO `movie_actor` VALUES ('208', '元彪', 'https://s3.ax1x.com/2021/02/27/6SOhIx.png', '演员', '1031', '4');
INSERT INTO `movie_actor` VALUES ('209', '徐冬冬', 'https://s3.ax1x.com/2021/02/27/6SO5i6.png', '演员', '1031', '5');
INSERT INTO `movie_actor` VALUES ('210', '周海媚', 'https://s3.ax1x.com/2021/02/27/6SOIJK.png', '演员', '1031', '6');
INSERT INTO `movie_actor` VALUES ('211', '李蔚然', 'https://s3.ax1x.com/2021/02/27/6SOoRO.png', '导演', '1032', '1');
INSERT INTO `movie_actor` VALUES ('212', '陈坤', 'https://s3.ax1x.com/2021/02/27/6SOTzD.png', '饰 晴明', '1032', '2');
INSERT INTO `movie_actor` VALUES ('213', '周迅', 'https://s3.ax1x.com/2021/02/27/6SOHQe.png', '饰 百旎', '1032', '3');
INSERT INTO `movie_actor` VALUES ('214', '陈伟霆', 'https://s3.ax1x.com/2021/02/27/6SOqLd.png', '饰 慈沐', '1032', '4');
INSERT INTO `movie_actor` VALUES ('215', '屈楚萧', 'https://s3.ax1x.com/2021/02/27/6SObsH.png', '饰 袁柏雅', '1032', '5');
INSERT INTO `movie_actor` VALUES ('216', '王丽坤', 'https://s3.ax1x.com/2021/02/27/6p9eHg.png', '饰 桃花', '1032', '6');
INSERT INTO `movie_actor` VALUES ('217', '贾玲', 'https://s3.ax1x.com/2021/02/27/6p9ZDS.png', '导演', '1033', '1');
INSERT INTO `movie_actor` VALUES ('218', '贾玲', 'https://s3.ax1x.com/2021/02/27/6p9ZDS.png', '饰 贾晓玲', '1033', '2');
INSERT INTO `movie_actor` VALUES ('219', '张小斐', 'https://s3.ax1x.com/2021/02/27/6p9nEQ.png', '饰 李焕英', '1033', '3');
INSERT INTO `movie_actor` VALUES ('220', '沈腾', 'https://s3.ax1x.com/2021/02/27/6p9Vu8.png', '饰 沈光林', '1033', '4');
INSERT INTO `movie_actor` VALUES ('221', '陈赫', 'https://s3.ax1x.com/2021/02/27/6p9uNj.png', '饰 冷特', '1033', '5');
INSERT INTO `movie_actor` VALUES ('222', '刘佳', 'https://s3.ax1x.com/2021/02/27/6p9K4s.png', '饰 中年李焕英', '1033', '6');
INSERT INTO `movie_actor` VALUES ('223', '陈思诚', 'https://s3.ax1x.com/2021/02/27/6p9QCn.png', '导演', '1034', '1');
INSERT INTO `movie_actor` VALUES ('224', '王宝强', 'https://s3.ax1x.com/2021/02/27/6p9l3q.png', '饰 唐仁', '1034', '2');
INSERT INTO `movie_actor` VALUES ('225', '刘昊然', 'https://s3.ax1x.com/2021/02/27/6p91g0.png', '饰 秦风', '1034', '3');
INSERT INTO `movie_actor` VALUES ('226', '妻夫木聪', 'https://s3.ax1x.com/2021/02/27/6p93vV.png', '饰 野田昊', '1034', '4');
INSERT INTO `movie_actor` VALUES ('227', '托尼·贾', 'https://s3.ax1x.com/2021/02/27/6p9GuT.png', '饰 杰克贾', '1034', '5');
INSERT INTO `movie_actor` VALUES ('228', '长泽雅美', 'https://s3.ax1x.com/2021/02/27/6p9JDU.png', '饰 小林杏奈', '1034', '6');
INSERT INTO `movie_actor` VALUES ('229', '饶晓志', 'https://s3.ax1x.com/2021/02/27/6p9YbF.png', '导演', '1035', '1');
INSERT INTO `movie_actor` VALUES ('230', '刘德华', 'https://s3.ax1x.com/2021/02/08/yUPfiT.png', '饰 周全', '1035', '2');
INSERT INTO `movie_actor` VALUES ('231', '肖央', 'https://s3.ax1x.com/2021/02/27/6p9NE4.png', '饰 陈小萌', '1035', '3');
INSERT INTO `movie_actor` VALUES ('232', '万茜', 'https://s3.ax1x.com/2021/02/27/6p9UUJ.png', '饰 李想', '1035', '4');
INSERT INTO `movie_actor` VALUES ('233', '程怡', 'https://s3.ax1x.com/2021/02/27/6p9a59.png', '饰 曾九蓉', '1035', '5');
INSERT INTO `movie_actor` VALUES ('234', '黄小蕾', 'https://s3.ax1x.com/2021/02/27/6p9wCR.png', '饰 晖姐', '1035', '6');
INSERT INTO `movie_actor` VALUES ('235', '安然', 'https://s3.ax1x.com/2021/02/27/6p9081.png', '导演', '1036', '1');
INSERT INTO `movie_actor` VALUES ('236', '余乐欣', 'https://s3.ax1x.com/2021/02/27/6p9Bgx.png', '演员', '1036', '2');
INSERT INTO `movie_actor` VALUES ('237', '周翊涛', 'https://s3.ax1x.com/2021/02/27/6p9Dv6.png', '演员', '1036', '3');
INSERT INTO `movie_actor` VALUES ('238', '赵霁', 'https://s3.ax1x.com/2021/02/27/6p9sKK.png', '导演', '1037', '1');
INSERT INTO `movie_actor` VALUES ('239', '杨天翔', 'https://s3.ax1x.com/2021/02/27/6p9yDO.png', '配 李云祥', '1037', '2');
INSERT INTO `movie_actor` VALUES ('240', '张赫', 'https://s3.ax1x.com/2021/02/27/6p96bD.png', '配 面具人', '1037', '3');
INSERT INTO `movie_actor` VALUES ('241', '宣晓鸣', 'https://s3.ax1x.com/2021/02/27/6p9gVe.png', '配 龙王', '1037', '4');
INSERT INTO `movie_actor` VALUES ('242', '李诗萌', 'https://s3.ax1x.com/2021/02/27/6p92UH.png', '配 苏医生', '1037', '5');
INSERT INTO `movie_actor` VALUES ('243', '朱可儿', 'https://s3.ax1x.com/2021/02/27/6p9R5d.png', '配 喀莎', '1037', '6');
INSERT INTO `movie_actor` VALUES ('244', '丁亮', 'https://s3.ax1x.com/2021/02/27/6p9fPA.png', '导演', '1038', '1');
INSERT INTO `movie_actor` VALUES ('245', '邵和麒', 'https://s3.ax1x.com/2021/02/27/6p9h8I.png', '导演', '1038', '2');
INSERT INTO `movie_actor` VALUES ('246', '张伟', 'https://s3.ax1x.com/2021/02/27/6p942t.png', '配音', '1038', '3');
INSERT INTO `movie_actor` VALUES ('247', '张秉君', 'https://s3.ax1x.com/2021/02/27/6p95xP.png', '配音', '1038', '4');
INSERT INTO `movie_actor` VALUES ('248', '谭笑', 'https://s3.ax1x.com/2021/02/27/6pihG9.png', '配音', '1038', '5');
INSERT INTO `movie_actor` VALUES ('249', '饶依格', '', '配音', '1038', '6');
INSERT INTO `movie_actor` VALUES ('250', '蒂姆·斯托瑞', 'https://s3.ax1x.com/2021/02/27/6pifPJ.png', '导演', '1039', '1');
INSERT INTO `movie_actor` VALUES ('251', '科洛·莫瑞兹', 'https://s3.ax1x.com/2021/02/27/6pi42R.png', '饰 凯拉 Kayla', '1039', '2');
INSERT INTO `movie_actor` VALUES ('252', '迈克尔·佩纳', 'https://s3.ax1x.com/2021/02/27/6pi5x1.png', '饰 Terrance', '1039', '3');
INSERT INTO `movie_actor` VALUES ('253', '郑肯', 'https://s3.ax1x.com/2021/02/27/6piR54.png', '饰 Jackie', '1039', '4');
INSERT INTO `movie_actor` VALUES ('254', '科林·乔斯特', 'https://s3.ax1x.com/2021/02/27/6pioKx.png', '饰 Ben', '1039', '5');
INSERT INTO `movie_actor` VALUES ('255', '乔丹·博尔格', 'https://s3.ax1x.com/2021/02/27/6piTr6.png', '饰 Cameron', '1039', '6');

-- ----------------------------
-- Table structure for `movie_detail`
-- ----------------------------
DROP TABLE IF EXISTS `movie_detail`;
CREATE TABLE `movie_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `movie_img` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL COMMENT '导演',
  `Screenwriter` varchar(255) DEFAULT NULL,
  `actor` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `showtime` varchar(255) DEFAULT NULL,
  `movietime` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_detail
-- ----------------------------
INSERT INTO `movie_detail` VALUES ('1', '送你一朵小红花', '1000', 'https://s3.ax1x.com/2021/02/08/yUP1Re.png', '韩延', '韩延 / 韩今谅 / 贾佳薇 / 于勇敢 / 李晗', ' 易烊千玺 / 刘浩存 / 朱媛媛 / 高亚麟 / 夏雨 / 岳云鹏 / 陈祉希 / 李晓川 / 孔琳 / 吴晓亮 / 张绍刚 / 孙强 / 安笑歌 / 李增辉 / 姚未平 / 张浩天 / 柴陆', '经典', '中国', '汉语普通话', '2020-12-31(中国大陆)', '128分钟', '两个抗癌家庭，两组生活轨迹。影片讲述了一个温情的现实故事，思考和直面了每一个普通人都会面临的终极问题——想象死亡随时可能到来，我们唯一要做的就是爱和珍惜。');
INSERT INTO `movie_detail` VALUES ('2', '蜂鸟计划', '1001', 'https://s3.ax1x.com/2021/02/08/yUPJsA.png', '阮金', '阮金', ' 杰西·艾森伯格 / 亚历山大·斯卡斯加德 / 萨尔玛·海耶克 / 迈克尔·曼多 / 约翰·海尔登贝格 / 阿伊莎·伊萨 / 萨拉·古德伯格 / 弗兰克·萧宾 / 夸西·宋桂', '科幻 /动作', '加拿大 / 比利时', '俄语 / 英语 / 西班牙语 / 希伯来语 / 意大利语', ' 2021-01-29(中国大陆) / 2018-09-08(多伦多电影节) / 2019-03-15(美国)', '111分钟', '影片讲述纽约的一对兄弟文森特（杰西·艾森伯格）与安东（亚历山大·斯卡斯加德），他们是高风险高频次交易操作员，梦想建造从堪萨斯州到新泽西州之间的直线光纤电缆，以赚取百万财富，然而他们以前的老板伊娃·托雷斯——一个强大又有极强控制欲的女人的紧逼让他们的计划充满了挫折和挑战。');
INSERT INTO `movie_detail` VALUES ('3', '温泉屋的小老板娘', '1002', 'https://s3.ax1x.com/2021/02/08/yUPBRg.png', '高坂希太郎', '令丈裕子 / 亚沙美 / 吉田玲子', ' 小林星兰 / 水树奈奈 / 松田飒水 / 远藤璃菜 / 小樱悦子 / 麻上洋子 / 花泽香菜 / 一龙斋贞友 / 寺杣昌纪 / 折笠富美子 / 小林由美子 / 小松未可子 / 田中诚人 / 高桥里枝 / 坂本恭平 / 伊东美弥子', '动画', '日本', '日语', '2021-01-29(中国大陆) / 2018-06-11(安锡动画电影节) / 2018-09-21(日本)', '95分钟', '小学六年级的小织，在父母车祸双亡后被经营温泉旅馆「春之屋」的外婆收养，也开始了她的小女将修行之路。少根筋又冒失的她，时常被敌对旅馆同龄之女秋野真月嘲笑。但生性乐天的小织，在旅馆里的幽灵小卖、美阳及铃鬼鼓励之下，努力地招待每位客人。是一部温暖且欢乐的女孩成长记。');
INSERT INTO `movie_detail` VALUES ('4', '拆弹专家2', '1003', 'https://s3.ax1x.com/2021/02/08/yUPhJU.png', '邱礼涛', '邱礼涛 / 李敏 / 李昇', '刘德华 / 刘青云 / 倪妮 / 谢君豪 / 姜皓文 / 吴卓羲 / 马浴柯 / 黄德斌 / 郑子诚 / 洪天明 / 袁富华 / 刘浩龙 / 凌文龙 / 赵永洪 / 蔡瀚亿 / 张竣杰 / 张扬', '动作', '中国大陆 / 中国香港', '汉语普通话 / 粤语 / 英语', '2020-12-24(中国大陆)', '121分钟', '香港某处发生爆炸案，前拆弹专家潘乘风（刘德华 饰）因昏迷于现场，被警方怀疑牵涉其中。苏醒后的潘乘风只能一边逃亡一边查明真相，然而，他的好友董卓文（刘青云 饰）和他的前女友庞玲（倪妮 饰）却给他讲述了两段截然不同的经历。有计划的爆炸案接二连三发生，真相却越来越扑朔迷离……');
INSERT INTO `movie_detail` VALUES ('5', '我不是药神', '1006', 'https://s3.ax1x.com/2021/02/08/yU3yZV.png', '文牧野', '韩家女 / 钟伟 / 文牧野', '徐峥 / 王传君 / 周一围 / 谭卓 / 章宇 / 杨新鸣 / 王佳佳 / 王砚辉 / 贾晨飞 / 龚蓓苾 / 宁浩 / 李乃文 / 岳小军 / 苇青 / 富冠铭 / 巴拉特·巴蒂 / 喜利图 / 张海艳 / 朱耕佑', '喜剧', '中国', '汉语普通话', '2018-07-05(中国大陆) / 2018-06-30(大规模点映)', '117分钟', '普通中年男子程勇（徐峥 饰）经营着一家保健品店，失意又失婚。不速之客吕受益（王传君 饰）的到来，让他开辟了一条去印度买药做“代购”的新事业，虽然困难重重，但他在这条“买药之路”上发现了商机，一发不可收拾地做起了治疗慢粒白血病的印度仿制药独家代理商。赚钱的同时，他也认识了几个病患及家属，为救女儿被迫做舞女的思慧（谭卓 饰）、说一口流利“神父腔”英语的刘牧师（杨新鸣 饰），以及脾气暴烈的“黄毛”（章宇 饰），几个人合伙做起了生意，利润倍增的同时也危机四伏。');
INSERT INTO `movie_detail` VALUES ('9', '心灵奇旅 Soul', '1004', 'https://s3.ax1x.com/2021/02/08/yUP7LR.png', '彼特·道格特 / 凯普·鲍尔斯', '彼特·道格特 / 麦克·琼斯 / 凯普·鲍尔斯', '杰米·福克斯 / 蒂娜·菲 / 菲利西亚·拉斯海德 / 阿米尔-卡利布·汤普森 / 戴维德·迪格斯 / 格拉汉姆·诺顿 / 瑞切尔·豪斯 / 艾莉丝·布拉加 / 理查德·艾欧阿德 / 唐尼尔·罗林斯 / 安吉拉·贝塞特 / 马戈·霍尔 / 罗德莎·琼斯 / 韦斯·斯塔迪 / 沙基纳·贾弗里', '动画', '美国', '英语', '2020-12-25(中国大陆/美国网络) / 2020-10-11(伦敦电影节)', '101分钟', '究竟是什么塑造了真正的你？电影将聚焦乔伊·高纳（杰米·福克斯配音）。这位中学音乐老师获得了梦寐以求的机会——在纽约最好的爵士俱乐部演奏。但一个小失误把他从纽约的街道带到了一个奇幻的地方“生之来处”（the Great Before）。在那里，灵魂们获得培训，在前往地球之前将获得他们的个性特点和兴趣。决心要回到地球生活的乔伊认识了一个早熟的灵魂“二十二”（蒂娜·菲 配音），二十二一直找不到自己对于人类生活的兴趣。随着乔伊不断试图向二十二展示生命的精彩之处，他也将领悟一些人生终极问题的答案。');
INSERT INTO `movie_detail` VALUES ('10', '大红包', '1005', 'https://s3.ax1x.com/2021/02/08/yUOdQP.png', '李克龙', '李克龙', '包贝尔 / 克拉拉 / 张一鸣 / 贾冰 / 许君聪 / 廖蔚蔚 / 赵毅新 / 姜语心 / 杜源 / 王小利 / 李琳 / 岳跃利 / 李萍', '喜剧', '中国', '汉语普通话', '2021-01-22(中国大陆)', '122分钟', '男主陈重因送红包花光积蓄30万，怒而伙同好友们策划一系列意想不到的“回本”计划，一场由红包引发的喜剧，就此展开了……');
INSERT INTO `movie_detail` VALUES ('11', '哪吒之魔童降世', '1007', 'https://s3.ax1x.com/2021/02/08/yU3RG4.png', '饺子', '饺子 / 易巧 / 魏芸芸', '吕艳婷 / 囧森瑟夫 / 瀚墨 / 陈浩 / 绿绮 / 张珈铭 / 杨卫', '动画', '中国大陆', ' 汉语普通话', '2019-07-26(中国大陆) / 2019-07-13(大规模点映)', '110分钟', '天地灵气孕育出一颗能量巨大的混元珠，元始天尊将混元珠提炼成灵珠和魔丸，灵珠投胎为人，助周伐纣时可堪大用；而魔丸则会诞出魔王，为祸人间。元始天尊启动了天劫咒语，3年后天雷将会降临，摧毁魔丸。太乙受命将灵珠托生于陈塘关李靖家的儿子哪吒身上。然而阴差阳错，灵珠和魔丸竟然被掉包。本应是灵珠英雄的哪吒却成了混世大魔王。调皮捣蛋顽劣不堪的哪吒却徒有一颗做英雄的心。然而面对众人对魔丸的误解和即将来临的天雷的降临，哪吒是否命中注定会立地成魔？他将何去何从？');
INSERT INTO `movie_detail` VALUES ('12', '疯狂动物城', '1008', 'https://s3.ax1x.com/2021/02/08/yU3WRJ.png', '拜伦·霍华德 / 瑞奇·摩尔 / 杰拉德·布什', '拜伦·霍华德 / 瑞奇·摩尔 / 杰拉德·布什 / 吉姆·里尔顿 / 乔西·特立尼达 / 菲尔·约翰斯顿 / 珍妮弗·李', '金妮弗·古德温 / 杰森·贝特曼 / 伊德里斯·艾尔巴 / 珍妮·斯蕾特 / 内特·托伦斯 / 邦尼·亨特 / 唐·雷克 / 汤米·钟 / J·K·西蒙斯 / 奥克塔维亚·斯宾瑟 / 艾伦·图代克 / 夏奇拉 / 雷蒙德·S·佩尔西 / 德拉·萨巴 / 莫里斯·拉马奇 / 菲尔·约翰斯顿 / 约翰·迪·马吉欧 / 凯蒂·洛斯 / 吉塔·雷迪 / 杰西·科尔蒂 / 汤米·利斯特', '动画/喜剧', '美国', '英语 / 挪威语', '2016-03-04(中国大陆/美国) / 2020-07-24(中国大陆重映)', '09分钟(中国大陆) / 108分钟', '故事发生在一个所有哺乳类动物和谐共存的美好世界中，兔子朱迪（金妮弗·古德温 Ginnifer Goodwin 配音）从小就梦想着能够成为一名惩恶扬善的刑警，凭借着智慧和努力，朱迪成功的从警校中毕业进入了疯狂动物城警察局，殊不知这里是大型肉食类动物的领地，作为第一只，也是唯一的小型食草类动物，朱迪会遇到怎样的故事呢？');
INSERT INTO `movie_detail` VALUES ('13', '千与千寻', '1009', 'https://s3.ax1x.com/2021/02/08/yU3fz9.png', '宫崎骏', '宫崎骏', '柊瑠美 / 入野自由 / 夏木真理 / 菅原文太 / 中村彰男 / 玉井夕海 / 神木隆之介 / 内藤刚志 / 泽口靖子 / 我修院达也 / 大泉洋 / 小林郁夫 / 上条恒彦 / 小野武彦', '动画', '日本', '日语', '2019-06-21(中国大陆) / 2001-07-20(日本)', '125分钟', '千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。');
INSERT INTO `movie_detail` VALUES ('14', '泰坦尼克号', '1010', 'https://s3.ax1x.com/2021/02/08/yU34MR.png', '詹姆斯·卡梅隆', '詹姆斯·卡梅隆', '莱昂纳多·迪卡普里奥 / 凯特·温丝莱特 / 比利·赞恩 / 凯西·贝茨 / 弗兰西丝·费舍 / 格劳瑞亚·斯图尔特 / 比尔·帕克斯顿 / 伯纳德·希尔 / 大卫·沃纳 / 维克多·加博 / 乔纳森·海德 / 苏茜·爱米斯 / 刘易斯·阿伯内西 / 尼古拉斯·卡斯柯恩 / 阿那托利·萨加洛维奇 / 丹尼·努齐 / 杰森·贝瑞 / 伊万·斯图尔特 / 艾恩·格拉法德', '爱情', '美国', '英语 / 意大利语 / 德语 / 俄语', '1998-04-03(中国大陆) / 1997-11-01(东京电影节) / 1997-12-19(美国)', '194分钟 / 227分钟(白星版)', '1912年4月10日，号称 “世界工业史上的奇迹”的豪华客轮泰坦尼克号开始了自己的处女航，从英国的南安普顿出发驶往美国纽约。富家少女罗丝（凯特•温丝莱特）与母亲及未婚夫卡尔坐上了头等舱；另一边，放荡不羁的少年画家杰克（莱昂纳多·迪卡普里奥）也在码头的一场赌博中赢得了下等舱的船票。');
INSERT INTO `movie_detail` VALUES ('15', '摔跤吧爸爸', '1011', 'https://s3.ax1x.com/2021/02/08/yU35s1.png', '涅提·蒂瓦里', '比于什·古普塔 / 施热亚·简 / 尼基尔·麦罗特拉 / 涅提·蒂瓦里', '阿米尔·汗 / 法缇玛·萨那·纱卡 / 桑亚·玛荷塔 / 阿帕尔夏克提·库拉那 / 沙克希·坦沃 / 塞伊拉·沃西 / 苏哈妮·巴特纳格尔 / 里特维克·萨霍里 / 吉里什·库卡尼', '经典', '印度', '印地语 / 英语', '2017-05-05(中国大陆) / 2016-12-23(印度)', '161分钟(印度) / 140分钟(中国大陆)', '马哈维亚（阿米尔·汗 Aamir Khan 饰）曾经是一名前途无量的摔跤运动员，在放弃了职业生涯后，他最大的遗憾就是没有能够替国家赢得金牌。马哈维亚将这份希望寄托在了尚未出生的儿子身上，哪知道妻子接连给他生了两个女儿，取名吉塔（法缇玛·萨那·纱卡 Fatima Sana Shaikh 饰）和巴比塔（桑亚·玛荷塔 Sanya Malhotra 饰）。让马哈维亚没有想到的是，两个姑娘展现出了杰出的摔跤天赋，让他幡然醒悟，就算是女孩，也能够昂首挺胸的站在比赛场上，为了国家和她们自己赢得荣誉。');
INSERT INTO `movie_detail` VALUES ('16', '寻梦环游记', '1012', 'https://s3.ax1x.com/2021/02/08/yU3Iqx.png', '李·昂克里奇 / 阿德里安·莫利纳', '阿德里安·莫利纳 / 马修·奥尔德里奇 / 李·昂克里奇 / 詹森·卡茨', '安东尼·冈萨雷斯 / 盖尔·加西亚·贝纳尔 / 本杰明·布拉特 / 阿兰娜·乌巴赫 / 芮妮·维克托 / 杰米·卡米尔 / 阿方索·阿雷奥 / 赫伯特·西古恩萨 / 加布里埃尔·伊格莱西亚斯 / 隆巴多·博伊尔 / 安娜·奥菲丽亚·莫吉亚 / 娜塔丽·科尔多瓦 / 赛琳娜·露娜 / 爱德华·詹姆斯·奥莫斯', '动画/喜剧', '美国', '英语 / 西班牙语', ' 2017-11-24(中国大陆) / 2020-07-20(中国大陆重映) / 2017-11-22(美国)', '105分钟', '在一场意外中，米格尔竟然穿越到了亡灵国度之中，在太阳升起之前，他必须得到一位亲人的祝福，否则就将会永远地留在这个世界里。米格尔决定去寻找已故的歌神德拉库斯（本杰明·布拉特 Benjamin Bratt 配音），因为他很有可能就是自己的祖父。途中，米格尔邂逅了落魄乐手埃克托（盖尔·加西亚·贝纳尔 Gael García Bernal 配音），也渐渐发现了德拉库斯隐藏已久的秘密。');
INSERT INTO `movie_detail` VALUES ('17', '阿甘正传', '1013', 'https://s3.ax1x.com/2021/02/08/yU3TZ6.png', '罗伯特·泽米吉斯', '艾瑞克·罗斯 / 温斯顿·格鲁姆', '汤姆·汉克斯 / 罗宾·怀特 / 加里·西尼斯 / 麦凯尔泰·威廉逊 / 莎莉·菲尔德 / 海利·乔·奥斯蒙 / 迈克尔·康纳·亨弗里斯 / 哈罗德·G·赫瑟姆 / 山姆·安德森 / 伊俄涅·M·特雷奇 / 彼得·道博森 / 希芳·法隆 / 伊丽莎白·汉克斯 / 汉娜·豪尔 / 克里斯托弗·琼斯 / 罗布·兰德里 / 杰森·麦克奎尔 / 桑尼·施罗耶 / 艾德·戴维斯 / 丹尼尔C.斯瑞派克 / 大卫·布里斯宾 / 德博拉·麦克蒂尔', '爱情/经典', '美国', '英语', '1994-06-23(洛杉矶首映) / 1994-07-06(美国)', '142分钟', '阿甘（汤姆·汉克斯 饰）于二战结束后不久出生在美国南方阿拉巴马州一个闭塞的小镇，他先天弱智，智商只有75，然而他的妈妈是一个性格坚强的女性，她常常鼓励阿甘“傻人有傻福”，要他自强不息。阿甘像普通孩子一样上学，并且认识了一生的朋友和至爱珍妮（罗宾·莱特·潘 饰），在珍妮 和妈妈的爱护下，阿甘凭着上帝赐予的“飞毛腿”开始了一生不停的奔跑。');
INSERT INTO `movie_detail` VALUES ('18', '你的名字', '1014', 'https://s3.ax1x.com/2021/02/08/yU37dK.png', '新海诚', '新海诚', '神木隆之介 / 上白石萌音 / 长泽雅美 / 市原悦子 / 成田凌 / 悠木碧 / 岛崎信长 / 石川界人 / 谷花音 / 寺杣昌纪 / 大原沙耶香 / 井上和彦 / 茶风林 / 加藤有花 / 花泽香菜 / 寺崎裕香', '动画/爱情', '日本', '日语', '2016-12-02(中国大陆) / 2016-08-26(日本)', '106分钟', '在远离大都会的小山村，住着巫女世家出身的高中女孩宫水三叶（上白石萌音 配音）。校园和家庭的原因本就让她充满烦恼，而近一段时间发生的奇怪事件，又让三叶摸不清头脑。不知从何时起，三叶在梦中就会变成一个住在东京的高中男孩。那里有陌生的同学和朋友，有亲切的前辈和繁华的街道，一切都是如此诱人而真实。另一方面，住在东京的高中男孩立花泷（神木隆之介 配音）则总在梦里来到陌生的小山村，以女孩子的身份过着全新的生活。许是受那颗神秘彗星的影响，立花和三叶在梦中交换了身份。');
INSERT INTO `movie_detail` VALUES ('19', '怦然心动', '1015', 'https://s3.ax1x.com/2021/02/08/yU3HIO.png', '罗伯·莱纳', '罗伯·莱纳 / 安德鲁·沙因曼 / 文德琳·范·德拉安南', '玛德琳·卡罗尔 / 卡兰·麦克奥利菲 / 瑞贝卡·德·莫妮 / 安东尼·爱德华兹 / 约翰·马奥尼 / 佩内洛普·安·米勒 / 艾丹·奎因 / 凯文·韦斯曼 / 摩根·莉莉 / 瑞安·克茨纳 / 吉莉安·普法夫 / 迈克尔·博萨 / 博·勒纳 / 杰奎琳·埃沃拉 / 泰勒·格鲁秀斯 / 艾莉·布莱恩特 / 阿什莉·泰勒 / 伊瑟尔·布罗萨德 / 科迪·霍恩 / 迈克尔·博尔顿', '爱情/喜剧', '美国', '英语', '2010-07-26(好莱坞首映) / 2010-09-10(美国)', '90分钟', '布莱斯（卡兰•麦克奥利菲 Callan McAuliffe 饰）全家搬到小镇，邻家女孩朱丽（玛德琳•卡罗尔 Madeline Carroll 饰）前来帮忙。她对他一见钟情，心愿是获得他的吻。两人是同班同学，她一直想方设法接近他，但是他避之不及。她喜欢爬在高高的梧桐树上看风景。但因为施工，树被要被砍掉，她誓死捍卫，希望他并肩作战，但是他退缩了。她的事迹上了报纸，外公对她颇有好感，令他十分困惑。她凭借鸡下蛋的项目获得了科技展第一名，成了全场焦点，令他黯然失色。');
INSERT INTO `movie_detail` VALUES ('20', '忠犬八公', '1016', 'https://s3.ax1x.com/2021/02/08/yU3qiD.png', '拉斯·霍尔斯道姆', '斯蒂芬·P·林赛 / 新藤兼人', '理查·基尔 / 萨拉·罗默尔 / 琼·艾伦 / 罗比·萨布莱特 / 艾瑞克·阿瓦利 / 田川洋行 / 杰森·亚历山大 / 罗伯特·卡普荣', '经典', '美国 / 英国', '英语 / 日语', '2009-06-13(西雅图电影节) / 2010-03-12(英国)', '93分钟', '八公（Forest 饰）是一条谜一样的犬，因为没有人知道它从哪里来。教授帕克（理查·基尔 Richard Gere 饰）在小镇的火车站拣到一只走失的小狗，冥冥中似乎注定小狗和帕克教授有着某种缘分，帕克一抱起这只小狗就再也放不下来，最终，帕克对小狗八公的疼爱感化了起初极力反对养狗的妻子卡特（琼·艾伦 Joan Allen 饰）。八公在帕克的呵护下慢慢长大，帕克上班时八公会一直把他送到车站，下班时八公也会早早便爬在车站等候，八公的忠诚让小镇的人家对它更加疼爱。');
INSERT INTO `movie_detail` VALUES ('21', '当幸福来敲门', '1017', 'https://s3.ax1x.com/2021/02/08/yU3LJe.png', '加布里埃莱·穆奇诺', '斯蒂夫·康拉德', '威尔·史密斯 / 贾登·史密斯 / 坦迪·牛顿 / 布莱恩·豪威 / 詹姆斯·凯伦 / 丹·卡斯泰兰尼塔 / 柯特·富勒 / 塔卡尤·费舍尔 / 凯文·韦斯特 / 乔治·张 / 戴维·迈克尔·西尔弗曼 / 多米尼克·博夫 / 杰弗·卡伦 / 乔伊芙·拉文 / 斯科特·克拉斯', '经典', '美国', '英语/粤语', '2008-01-17(中国大陆) / 2020-07-20(中国大陆重映) / 2006-12-15(美国)', '117分钟', '克里斯•加纳（威尔·史密斯 Will Smith 饰）用尽全部积蓄买下了高科技治疗仪，到处向医院推销，可是价格高昂，接受的人不多。就算他多努力都无法提供一个良好的生活环境给妻儿，妻子（桑迪·牛顿 Thandie Newton 饰）最终选择离开家。从此他带着儿子克里斯托夫（贾登·史密斯 Jaden Smith 饰）相依为命。克里斯好不容易争取回来一个股票投资公司实习的机会，就算没有报酬，成功机会只有百分之五，他仍努力奋斗，儿子是他的力量。');
INSERT INTO `movie_detail` VALUES ('22', '神奇女侠', '1018', 'https://s3.ax1x.com/2021/02/27/6pnQPK.png', '派蒂·杰金斯', '艾伦·海因伯格 / 扎克·施奈德 / 贾森·福克斯 / 威廉·马斯顿', '盖尔·加朵 / 克里斯·派恩 / 康妮·尼尔森 / 罗宾·怀特 / 大卫·休里斯 / 丹尼·赫斯顿 / 埃伦娜·安纳亚 / 露茜·戴维斯 / 萨伊德·塔格马奥 / 艾文·布莱纳 / 尤金·布雷弗·洛克 / 莉莉·阿斯佩尔 / 艾米丽·凯里 / 丽莎·洛文·孔斯利 / 安·奥戈博莫 / 弗洛伦丝·卡松巴 / 杜晨·科洛斯', '动作', '美国 / 中国大陆 / 中国香港', '英语', '2017-05-30(中国香港/台湾) / 2017-06-02(中国大陆/美国)', '141分钟', '戴安娜（盖尔·加朵 Gal Gadot 饰）是女王希波吕忒（康妮·尼尔森 Connie Nielsen 饰）的女儿，自幼生活在天堂岛上。巨大的屏障将这座岛屿同外界的纷纷扰扰隔开犹如一个世外桃源，而岛上生活着的亦都是女性。在女武官安提奥普（罗宾·莱特 Robin Wright 饰）的教导之下，戴安娜习得了高强的武艺，而她的体内，似乎隐藏着某种强大的未知力量。');
INSERT INTO `movie_detail` VALUES ('23', '崖上的波妞', '1020', 'https://s3.ax1x.com/2021/02/08/yU55ZR.png', '宫崎骏', '宫崎骏', '奈良柚莉爱 / 土井洋辉 / 山口智子 / 长岛一茂 / 天海祐希 / 所乔治 / 柊瑠美 / 矢野显子 / 吉行和子 / 奈良冈朋子 / 左时枝 / 羽鸟慎一 / 平冈映美 / 大桥望美', '动画', '日本', '日语', '2020-12-31(中国大陆) / 2008-07-19(日本)', '101分钟', '海神的女儿波妞从深海出逃玩耍，却被困在玻璃瓶里冲到岸上，碰巧被住在岸边悬崖的宗介救出，两人因此相识。但是波妞的父亲——魔法师藤本，认为人类世界肮脏丑陋，强行把波妞带回海里。面对父亲的阻挠、席卷小镇的海啸，以及永远失去魔法的威胁，波妞仍然大胆而坚决地决定——要变成人类跟宗介在一起。而承诺要永远保护波妞的宗介，也即将面临新的挑战');
INSERT INTO `movie_detail` VALUES ('24', '神奇女侠1984', '1021', 'https://s3.ax1x.com/2021/02/08/yU5Id1.png', '派蒂·杰金斯', '派蒂·杰金斯 / 乔夫·琼斯 / 戴夫·卡拉汉姆', '盖尔·加朵 / 克里斯·派恩 / 克里斯汀·韦格 / 佩德罗·帕斯卡 / 康妮·尼尔森 / 罗宾·怀特 / 莉莉·阿斯佩尔 / 加布瑞拉·王尔德 / 杜晨·科洛斯 / 琳达·卡特 / 克里斯托弗·普拉哈 / 里昂·贝克维思 / 拉维·帕特尔 / 娜塔莎·罗斯韦尔 / 泰莎·波纳姆·琼斯 / 艾拉·沃克 / 游朝敏 / 谢恩·阿特沃尔 / 艾德·伯奇 / 帕特里克·利斯特 / 奥克莉·布尔 / 科莎·恩格勒 / 小田部阿基 / 康斯坦丁·格雷戈里 ', '动作', '美国 / 英国 / 西班牙', '英语', '2020-12-18(中国大陆) / 2020-12-25(美国)', '151分钟', '故事背景设定在五光十色、充满诱惑的80年代，神奇女侠戴安娜在华盛顿的自然历史博物馆过着与普通人无异的生活，然而在阻止了一场看似平常的劫案后，身边的一切都发生了变化。在强大的神力诱惑下，两位全新劲敌悄然出现——与神奇女侠“相爱相杀”的顶级掠食者豹女， 以及掌控着能改变世界力量的麦克斯·洛德，一场惊天大战在所难免。另外一边，旧爱史蒂夫突然“死而复生”，与戴安娜再续前缘，然而浪漫感动之余，史蒂夫的回归也疑窦丛生。');
INSERT INTO `movie_detail` VALUES ('25', '温暖的抱抱', '1022', 'https://s3.ax1x.com/2021/02/08/yU5HJK.png', '常远', '常远 / 冷旭阳 / 王志君', '常远 / 李沁 / 沈腾 / 乔杉 / 马丽 / 艾伦 / 田雨 / 王智 / 魏翔 / 王宁 / 黄才伦 / 张一鸣 / 王成思 / 张子栋 / 陈昊明 / 吴莫愁', '喜剧', '中国大陆', '汉语普通话', '2020-12-31(中国大陆)', '112分钟\r\n', '对整洁和计划有着超乎常人执念的鲍抱（常远 饰），本以为自己是一个友情爱情的绝缘体，但在遇到个性率真宋温暖（李沁 饰）、妙手“神经”贾医生（沈腾 饰）和假仁假义王为仁（乔杉 饰）之后，上演了一段阴差阳错的喜剧故事……影片根据韩国电影《计划男》改编。');
INSERT INTO `movie_detail` VALUES ('26', '武汉日夜', '1023', 'https://s3.ax1x.com/2021/02/08/yU57i6.png', '曹金玲', '曹金玲', '田定远 / 孟宪明 / 杨莉 / 苏洁 / 李青儿 / 曹珊 / 涂盛锦 / 王紫懿 / 王震 / 李超 / 王枫娇 / 左双贵 / 石长江', '经典', '中国大陆', '汉语普通话', '2021-01-22(中国大陆)', '95分钟', '2020年初，新冠肺炎疫情暴发，1月23日，武汉关闭离汉通道。900万武汉人与来自全国各地医疗系统及其他行业的一线人员，一起打响武汉抗击新冠肺炎疫情阻击战！《武汉日夜》内容来源于从疫情开始，武汉当地三十多名摄影师在抗疫一线持续拍摄数月，多达数千小时的素材之中。影片以医院重症监护室医护人员及病患为主线，以深夜运送孕妇的志愿者为辅线，展现与疫情抗争、与死神决斗的动人故事，这些“平凡人”在疫情面前不舍昼夜、不惜生死、守望相助、共克难关。');
INSERT INTO `movie_detail` VALUES ('27', '许愿神龙', '1024', 'https://s3.ax1x.com/2021/02/08/yU5oIx.png', '克里斯·艾伯翰斯', '克里斯·艾伯翰斯', '成龙 / 牛骏峰 / 薇薇安 / 苏柏丽', '动画', '中国大陆 / 美国 / 中国香港', '汉语普通话 / 英语', '2021-01-15(中国大陆)', '99分钟', '你知道这世上仅存一条粉红色的许愿神龙吗？他能够实现许愿者任何逆天改命的愿望。这样的神力引得不少人在暗中寻找神龙的踪迹，然而普普通通的上海小青年丁思齐误打误撞打开了神龙的封印。千年代沟引发连串爆笑经历，被绑定的一人一龙踏上了一段妙想天开又惊险万分的旅途…');
INSERT INTO `movie_detail` VALUES ('28', '海底小纵队', '1025', 'https://s3.ax1x.com/2021/02/08/yU5qzD.png', '布莱尔·西蒙斯 / 周沁', '霍耀武', '郭盛 / 苏俣 / 方宇 / 曹凯 / 周湘宁 / 张璐 / 汤水雨 / 严明 / 武媛媛 / 徐艺涵', '动画', '中国大陆 / 英国', '汉语普通话', '2021-01-08(中国大陆)', '80分钟', '海底小纵队是一群活跃在海底的小小冒险家。小纵队集结了皮医生（企鹅）、生物学家谢灵通（海獭）、摄像师达西西（腊肠狗）、机械工程师突突兔（兔子）、小队中尉呱唧（小猫）等7名伙伴，在核心成员巴克队长（北极熊）的带领下向着未知的海域不断探索前进。');
INSERT INTO `movie_detail` VALUES ('29', '疯狂原始人2', '1026', 'https://s3.ax1x.com/2021/02/08/yU5XsH.png', '乔尔·克劳福德', '柯克·德·米科 / 丹·哈格曼 / 凯文·哈格曼 / 克里斯·桑德斯', '尼古拉斯·凯奇 / 艾玛·斯通 / 瑞恩·雷诺兹 / 凯瑟琳·基纳 / 莱斯利·曼恩 / 彼特·丁拉基 / 克拉克·杜克 / 克萝丽丝·利奇曼 / 乔安娜·林莉 / 凯莉·玛丽·陈', '动画/喜剧', '美国', '英语', '2020-11-27(中国大陆) / 2020-11-25(美国)', '95分钟', '经历了逃离洞穴、挺过末日危机之后的原始人咕噜家族，咕噜一家决定寻找新家园。中途盖（瑞恩·雷诺兹 Ryan Reynolds 配音）已成了咕噜一家中的一员，但让瓜哥（尼古拉斯·凯奇 Nicolas Cage 配音）头疼的是，盖跟女儿小伊（艾玛·斯通 Emma Stone 配音）每天你侬我侬，还妄想组成只属于两人的小家庭。就在咕噜一家人饥肠辘辘之际，他们发现了一片高墙内隐藏着食物丰饶的沃土，原来开辟这片世外桃源的文明人夫妇霍普和菲尔是已经去世的盖的父母的朋友。');
INSERT INTO `movie_detail` VALUES ('30', '哆啦A梦：大熊的新恐龙', '1027', 'https://s3.ax1x.com/2021/02/08/yU5jLd.png', '今井一晓', '川村元气', '水田山葵 / 大原惠美 / 嘉数由美 / 关智一 / 木村昴 / 远藤绫 / 钉宫理惠 / 渡边直美 / 木村拓哉', '动画', '日本', '日语', '2020-12-11(中国大陆) / 2020-08-07(日本)', '110分钟', '大雄把恐龙展发现的化石带回家，借助哆啦A梦的时光包袱竟然成功孵化出两只从未被发现过的长着翅膀的新恐龙。大雄和小伙伴们决定将小恐龙们带回到属于它们的时代，一场惊心动魄的白垩纪大冒险即将上演。');
INSERT INTO `movie_detail` VALUES ('31', '宝可梦：超梦的逆袭 进化', '1028', 'https://s3.ax1x.com/2021/02/08/yU5zdI.png', '汤山邦彦 / 榊原幹典', '首藤刚志 / 田尻智', '松本梨香 / 大谷育江 / 市村正亲 / 饭冢雅弓 / 兴梠里美 / 上田祐司 / 林原惠美 / 三木真一郎 / 犬山犬子 / 爱河里花子 / 高木涉 / 山寺宏一', '动画', '日本', '日语', '2020-12-04(中国大陆) / 2019-07-12(日本)', '98分钟 / 97分钟(中国大陆)', '故事讲述的是一群疯狂的科学家，为了自己的梦想，研制出一套只需要少许基因便可复制出宝可梦的机器，并把发掘到的世界最强宝可梦复制成了拥有比梦幻更强能力的超梦。但当超梦醒来后，却因无法找寻到真正的自我而暴走。火箭队的老大出现在超梦的面前，用花言巧语把迷失自我的超梦拉拢过来为自己办事，但没过多少时间，超梦再次对自我感到迷茫。超梦回到那个复制它的岛屿，决定开始它的复仇之战。');
INSERT INTO `movie_detail` VALUES ('32', '立大功之超能救援', '1029', 'https://s3.ax1x.com/2021/02/08/yU5xeA.png', '安德鲁·斯特里梅迪斯', '安迪·格尔达 / 史蒂夫·苏利文', '麦克斯·卡林内斯库 / 德文·科恩 / 德鲁·戴维斯 / 欧文·梅森 / 斯图尔特·雷斯顿 / 亚历克斯·索恩 / 卡兰·霍利', '动画', '美国 / 加拿大', '英语', '2020-11-13(中国大陆)', '89分钟', '神秘陨石坠落冒险湾，赋予了汪汪队强大的超能力！然而陨石的坠落竟是汉丁那市长的粗心实验引来的。汉丁那市长对自己的失败并不满意，于是和他的侄子设计困住了汪汪队的队长莱德，并偷走了陨石，企图控制整个城市。他们的野心却出现了差错，小狗们必须齐心协力，灵活运用新技能——毛毛的威力热力，小砾的超级力量，天天的乘风翼——超能全开，拯救世界！');
INSERT INTO `movie_detail` VALUES ('33', '紧急救援', '1030', 'https://s3.ax1x.com/2021/02/08/yUISot.png', '林超贤', '支雅卿 / 王思敏 / 谭宇力', '彭于晏 / 王彦霖 / 辛芷蕾 / 蓝盈莹 / 王雨甜 / 徐洋 / 陈家乐 / 李岷城 / 张景祎 / 李欣蕊 / 郭晓东 / 张国强 / 魏大勋 / 连凯', '动作', '中国大陆 / 中国香港', '汉语普通话 / 英语', '2020-12-18(中国大陆)', '134分钟', '倾覆沉没的钻井平台，顺流直冲的运油车头，直坠入海的满载客机。交通海上应急反应特勤队队长高谦（彭于晏 饰）、机长方宇凌（辛芷蕾 饰）和绞车手赵呈（王彦霖 饰）一次次带领队伍第一时间抵达，站在水火咆哮的最前面，守在危急撤离的最后面，用生命对抗天灾人祸。但在自然面前，特勤员毕竟没有超能力，血肉之躯踩在死亡边缘，真实的恐惧无数次让这些斗士颤抖、无助和气馁。而海上救援的字典里没有“退缩”。当你听见旋翼的轰鸣、洪亮的汽笛、马达的飞驰，那是他们无惧艰难险阻，舍己为人，谱写的一曲英雄之歌。');
INSERT INTO `movie_detail` VALUES ('34', '卸甲归来', '1031', 'https://s3.ax1x.com/2021/02/08/yUICJf.png', '杜修斌 / 郭虎', '刘婉婷 / 单坤', '吕良伟 / 元彪 / 徐冬冬 / 周海媚 / 柏华力·莫高彼斯彻', '动作', '中国大陆', '汉语普通话', '2021-01-30(中国大陆)', '90分钟', '影片讲述刚归来的吴魏，刘骁等人深感责任重大，带领临时成立的特别行动小组，潜入百名暴徒聚集点展开一场悬殊之战的故事。');
INSERT INTO `movie_detail` VALUES ('35', '侍神令', '1032', 'https://s3.ax1x.com/2021/02/08/yUTqzT.png', '李蔚然', '张家鲁 / 翦以玟', '陈坤 / 周迅 / 陈伟霆 / 屈楚萧 / 王丽坤 / 沈月 / 王紫璇 / 王悦伊 / 孙红雷 / 艾米', '科幻', '中国大陆', '汉语普通话', '2021-02-12(中国大陆)', '120分钟', '穿行于人妖两界的阴阳师晴明（陈坤 饰），因与一众妖怪缔结契约，酿成大祸，深陷危机。而与此同时，妖皇势力正卷土重来，一场恶战一触即发。在风云突变、局势动荡的危急时刻，晴明恍然发现，自己人妖混血的身份，竟是这一切灾祸的关键......');
INSERT INTO `movie_detail` VALUES ('36', '你好,李焕英', '1033', 'https://s3.ax1x.com/2021/02/08/yUTOQU.png', '贾玲', '贾玲 / 孙集斌 / 王宇 / 刘宏禄 / 卜钰 / 郭宇鹏', '贾玲 / 张小斐 / 沈腾 / 陈赫 / 刘佳 / 丁嘉丽 / 王琳 / 杜源 / 何翯 / 何欢 / 韩云云 / 包文婧 / 葛珊珊 / 史策 / 黄小猫 / 许君聪 / 卜钰 / 刘宏禄 / 魏翔 / 孙集斌 / 泰维 / 郭宇鹏 / 朱天福 / 王宇 / 冯巩 / 乔杉 / 王小利 / 宋晓峰 / 董若溪 / 曹贺军 / 赵婷婷 / 姬晴 / 郭祥鹏 / 李一峰 / 潘斌龙', '喜剧', '中国大陆', '汉语普通话', '2021-02-12(中国大陆)', '128分钟', '2001年的某一天，刚刚考上大学的贾晓玲（贾玲 饰）经历了人生中的一次大起大落。一心想要成为母亲骄傲的她却因母亲突遭严重意外，而悲痛万分。在贾晓玲情绪崩溃的状态下，竟意外的回到了1981年，并与年轻的母亲李焕英（张小斐 饰）相遇，二人形影不离，宛如闺蜜。与此同时，也结识了一群天真善良的好朋友。晓玲以为来到了这片“广阔天地”，她可以凭借自己超前的思维，让母亲“大有作为”，但结果却让晓玲感到意外......');
INSERT INTO `movie_detail` VALUES ('37', '唐人街探案3', '1034', 'https://s3.ax1x.com/2021/02/08/yUTxeJ.png', '陈思诚', '陈思诚 / 张淳 / 刘吾驷 / 莲舟 / 严以宁', '王宝强 / 刘昊然 / 妻夫木聪 / 托尼·贾 / 长泽雅美 / 染谷将太 / 铃木保奈美 / 浅野忠信 / 三浦友和 / 尚语贤 / 肖央 / 张子枫 / 邱泽 / 张钧甯 / 马伯骞 / 程潇 / 陈哲远 / 李明轩 / 崔雨鑫 / 张一白 / 文咏珊 / 克拉拉 / 张熙然 / 树林伸 / 刘德华 / 陈思诚 / 桥本爱实 / 长井短 / 秋山成勋 / 宇治清高 / 六平直政 / 奥田瑛二', '喜剧', '中国大陆 / 日本', '汉语普通话 / 日语 / 英语 / 泰语', '2021-02-12(中国大陆)', '136分钟', '继曼谷、纽约之后，东京再出大案。唐人街神探唐仁（王宝强 饰）、秦风（刘昊然 饰）受侦探野田昊（妻夫木聪 饰）的邀请前往破案。“CRIMASTER世界侦探排行榜”中的侦探们闻讯后也齐聚东京，加入挑战，而排名第一Q的现身，让这个大案更加扑朔迷离，一场亚洲最强神探之间的较量即将爆笑展开……');
INSERT INTO `movie_detail` VALUES ('38', '人潮汹涌', '1035', 'https://s3.ax1x.com/2021/02/08/yUTzw9.png', '饶晓志', '饶晓志 / 范翔 / 李想', '刘德华 / 肖央 / 万茜 / 程怡 / 黄小蕾 / 国义骞 / 狄志杰 / 郭京飞 / 刘天佐 / 路阳 / 郭帆 / 刘浩良 / 饶晓志 / 雷佳音 / 史航 / 魏之皓 / 王学兵 / 林海 / 隋凯 / 卫莱', '喜剧', '中国大陆', '汉语普通话', '2021-02-12(中国大陆)', '119分钟', '2021年，你做好准备换个活法，牛转乾坤了吗？ 顶级杀手周全（刘德华 饰）和落寞群演陈小萌（肖央 饰）在一次意外中交换了身份。杀手在跌入谷底的过程中，重新审视了爱情和生活；群演在冒充杀手的过程中，彻底重塑了人生。两个人一起历经的荒诞，有啼笑皆非，更有热血沸腾。');
INSERT INTO `movie_detail` VALUES ('39', '不要先生与好的女士', '1036', 'https://s3.ax1x.com/2021/02/08/yU79F1.png', '安然', '许昂', '余乐欣 / 周翊涛', '喜剧', '中国大陆', '汉语普通话', '2021-02-14(中国大陆)', '94分钟', '影片中，男主是一位只会拒绝别人的“不要”先生，他高傲腹黑且非常毒舌，相反女主是一位不会拒绝别人的“好的”女士，她善良体贴但心中期待被释放，性格上如此反差的二人初遇后将会迸发怎样的化学反应？');
INSERT INTO `movie_detail` VALUES ('40', '新神榜：哪吒重生', '1037', 'https://s3.ax1x.com/2021/02/08/yU7CJx.png', '赵霁', '沐川', '杨天翔 / 张赫 / 宣晓鸣 / 李诗萌 / 朱可儿 / 凌振赫 / 刘若班 / 张遥函 / 张喆 / 高增志 / 郭浩然', '动画', '中国大陆', '汉语普通话', '2021-02-12(中国大陆)', '116分钟', '三千年前，天下动荡，人神共遇大劫，不想哪吒的一缕魂魄逃脱天罗地网，世世转世投胎，这一世与东海市酷爱机车的热血青年李云祥人神共生。然而龙族对哪吒恩怨并未善罢甘休，有着哪吒元神的李云祥，亦无法逃脱被龙族赶尽杀绝的宿命。东海危在旦夕，李云祥是否能够与哪吒元神并肩作战，成为抵抗龙族的英雄？东海市的子民能否得到拯救？');
INSERT INTO `movie_detail` VALUES ('41', '熊出没·狂野大陆', '1038', 'https://s3.ax1x.com/2021/02/08/yU7PW6.png', '丁亮 / 邵和麒', '徐芸 / 崔铁志 / 张宇', '张伟 / 张秉君 / 谭笑', '动画/喜剧', '中国大陆', '汉语普通话', '2021-02-12(中国大陆) / 2020-08-01(上海电影节)', '99分钟', '狗熊岭附近新开业了一个神奇的“狂野大陆”，在那里，通过基因技术人可以自由变身各种动物，享受无比的自由和快乐。导游事业受挫的光头强，阴差阳错与神秘人乐天和熊二组队，参加乐园里奖金丰厚的比赛，却遭遇了队友乐天的背叛，历尽艰险终于获得冠军之际，却意外发现狂野大陆里隐藏着惊天的阴谋......');
INSERT INTO `movie_detail` VALUES ('42', '猫和老鼠', '1039', 'https://s3.ax1x.com/2021/02/08/yU7AyD.png', '蒂姆·斯托瑞', '凯文·科斯特洛 / 威廉·汉纳 / 约瑟夫·巴伯拉', '科洛·莫瑞兹 / 迈克尔·佩纳 / 郑肯 / 科林·乔斯特 / 乔丹·博尔格 / 罗伯·德兰尼 / 克里斯蒂娜·钟 / 布赖恩·斯特帕尼克 / 帕拉维·沙尔达 / 卡米拉·阿维森 / 克丽·麦克莱恩 / 卡米拉·拉瑟福德 / 泰·赫尔利 / 丹尼尔·阿德博伊加 / 乔蕾·科斯 / 丹尼尔·厄根 / 伯纳多·桑托斯 / 乔·伯恩 / 乔基姆·斯卡利', '动画', '英国 / 法国 / 德国 / 美国', '英语', '2021-02-26(美国/中国大陆)', '101分钟', '“超杀女”科洛·莫瑞兹饰演的少女凯拉刚刚入职豪华大酒店，就碰上了叫人头疼的难题——杰瑞竟然想在酒店里定居，令酒店最近承接的世纪婚礼岌岌可危。于是，汤姆被凯拉雇佣成为酒店员工，目的是赶走杰瑞，这对欢喜冤家就此展开了一场你追我赶的爆笑喜剧。');

-- ----------------------------
-- Table structure for `remen`
-- ----------------------------
DROP TABLE IF EXISTS `remen`;
CREATE TABLE `remen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `movie_name` varchar(255) DEFAULT NULL,
  `rate` decimal(10,1) DEFAULT NULL,
  `movie_id` int(11) NOT NULL,
  `people_number` int(11) DEFAULT NULL,
  `movie_info` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `display` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remen
-- ----------------------------
INSERT INTO `remen` VALUES ('1', 'https://z3.ax1x.com/2021/02/08/yU3yZV.png', '我不是药神', '4.9', '1006', '6', '2018-07-05(中国大陆) / 2018-06-30(大规模点映)导演: 文牧野编剧: 韩家女 / 钟伟 / 文牧野主演: 徐峥 / 王传君 / 周一围 / 谭卓 / 章宇 / 杨新鸣 / 王佳佳 / 王砚辉 / 贾晨飞 / 龚蓓苾 / 宁浩 / 李乃文 / 岳小军 / 苇青 / 富冠铭 / 巴拉特·巴蒂 / 喜利图 / 张海艳 / 朱耕佑', '经典', '1');
INSERT INTO `remen` VALUES ('2', 'https://s3.ax1x.com/2021/02/08/yU3RG4.png', '哪吒之魔童降世', '3.9', '1007', '6', '上映日期: 2019-07-26(中国大陆) / 2019-07-13(大规模点映)导演: 饺子编剧: 饺子 / 易巧 / 魏芸芸\r\n主演: 吕艳婷 / 囧森瑟夫 / 瀚墨 / 陈浩 / 绿绮 / 张珈铭 / 杨卫类型: 剧情 / 喜剧 / 动画 / 奇幻制片国家/地区: 中国大陆', '喜剧 /动画', '1');
INSERT INTO `remen` VALUES ('3', 'https://s3.ax1x.com/2021/02/08/yU3WRJ.png', '疯狂动物城', '4.6', '1008', '1', '2016-03-04(中国大陆/美国) / 2020-07-24(中国大陆重映)导演: 拜伦·霍华德 / 瑞奇·摩尔 / 杰拉德·布什主演: 金妮弗·古德温 / 杰森·贝特曼 / 伊德里斯·艾尔巴 / 珍妮·斯蕾特 / 内特·托伦斯 / 邦尼·亨特 / 唐·雷克 / 汤米·钟 / J·K·西蒙斯 / 奥克塔维亚·斯宾瑟 / 艾伦·图代克 / 夏奇拉 / 雷蒙德·S·佩尔西 / 德拉·萨巴 / 莫里斯·拉马奇 / 菲尔·约翰斯顿 / 约翰·迪·马吉欧 / 凯蒂·洛斯 / 吉塔·雷迪', '动画', '1');
INSERT INTO `remen` VALUES ('4', 'https://s3.ax1x.com/2021/02/08/yU3fz9.png', '千与千寻', '4.7', '1009', '2', '2019-06-21(中国大陆) / 2001-07-20(日本)导演: 宫崎骏编剧: 宫崎骏主演: 柊瑠美 / 入野自由 / 夏木真理 / 菅原文太 / 中村彰男 / 玉井夕海 / 神木隆之介 / 内藤刚志 / 泽口靖子 / 我修院达也 / 大泉洋 / 小林郁夫 / 上条恒彦 / 小野武彦', '动画 /经典', '1');
INSERT INTO `remen` VALUES ('5', 'https://s3.ax1x.com/2021/02/08/yU34MR.png', '泰坦尼克号', '4.3', '1010', '3', '1998-04-03(中国大陆) / 1997-11-01(东京电影节) / 1997-12-19(美国)导演: 詹姆斯·卡梅隆主演: 莱昂纳多·迪卡普里奥 / 凯特·温丝莱特 / 比利·赞恩 / 凯西·贝茨 / 弗兰西丝·费舍 / 格劳瑞亚·斯图尔特 / 比尔·帕克斯顿 / 伯纳德·希尔 / 大卫·沃纳 / 维克多·加博 / 乔纳森·海德 / 苏茜·爱米斯 / 刘易斯·阿伯内西 / 尼古拉斯·卡斯柯恩 / 阿那托利·萨加洛维奇 / 丹尼·努齐 / 杰森·贝瑞 / 伊万·斯图尔特', '经典', '1');
INSERT INTO `remen` VALUES ('6', 'https://s3.ax1x.com/2021/02/08/yU35s1.png', '摔跤吧爸爸', '4.8', '1011', '2', '2017-05-05(中国大陆) / 2016-12-23(印度)导演: 涅提·蒂瓦里编剧: 比于什·古普塔 / 施热亚·简 / 尼基尔·麦罗特拉 / 涅提·蒂瓦里主演: 阿米尔·汗 / 法缇玛·萨那·纱卡 / 桑亚·玛荷塔 / 阿帕尔夏克提·库拉那 / 沙克希·坦沃 / 塞伊拉·沃西 / 苏哈妮·巴特纳格尔 / 里特维克·萨霍里 / 吉里什·库卡尼', '经典', '1');
INSERT INTO `remen` VALUES ('7', 'https://s3.ax1x.com/2021/02/08/yU3Iqx.png', '寻梦环游记', '4.5', '1012', '2', '2017-11-24(中国大陆) / 2020-07-20(中国大陆重映) / 2017-11-22(美国)导演: 李·昂克里奇 / 阿德里安·莫利纳主演: 安东尼·冈萨雷斯 / 盖尔·加西亚·贝纳尔 / 本杰明·布拉特 / 阿兰娜·乌巴赫 / 芮妮·维克托 / 杰米·卡米尔 / 阿方索·阿雷奥 / 赫伯特·西古恩萨 / 加布里埃尔·伊格莱西亚斯 / 隆巴多·博伊尔 / 安娜·奥菲丽亚·莫吉亚 / 娜塔丽·科尔多瓦 / 赛琳娜·露娜 / 爱德华·詹姆斯·奥莫斯 / 索菲亚·伊斯皮诺萨 / 卡拉·梅迪纳', '动画', '1');
INSERT INTO `remen` VALUES ('8', 'https://s3.ax1x.com/2021/02/08/yU3TZ6.png', '阿甘正传', '4.7', '1013', '3', '1994-06-23(洛杉矶首映) / 1994-07-06(美国)导演: 罗伯特·泽米吉斯主演: 汤姆·汉克斯 / 罗宾·怀特 / 加里·西尼斯 / 麦凯尔泰·威廉逊 / 莎莉·菲尔德 / 海利·乔·奥斯蒙 / 迈克尔·康纳·亨弗里斯 / 哈罗德·G·赫瑟姆 / 山姆·安德森 / 伊俄涅·M·特雷奇 / 彼得·道博森 / 希芳·法隆 / 伊丽莎白·汉克斯 / 汉娜·豪尔 / 克里斯托弗·琼斯 / 罗布·兰德里 / 杰森·麦克奎尔 / 桑尼·施罗耶 / 艾德·戴维斯 / 丹尼尔C.斯瑞派克', '经典', '1');
INSERT INTO `remen` VALUES ('9', 'https://s3.ax1x.com/2021/02/08/yU37dK.png', '你的名字', '4.7', '1014', '7', '2016-12-02(中国大陆) / 2016-08-26(日本)导演: 新海诚编剧: 新海诚主演: 神木隆之介 / 上白石萌音 / 长泽雅美 / 市原悦子 / 成田凌 / 悠木碧 / 岛崎信长 / 石川界人 / 谷花音 / 寺杣昌纪 / 大原沙耶香 / 井上和彦 / 茶风林 / 加藤有花 / 花泽香菜 / 寺崎裕香', '动画', '1');
INSERT INTO `remen` VALUES ('10', 'https://s3.ax1x.com/2021/02/08/yU3HIO.png', '怦然心动', '4.7', '1015', '5', '2010-07-26(好莱坞首映) / 2010-09-10(美国)导演: 罗伯·莱纳编剧: 罗伯·莱纳 / 安德鲁·沙因曼 / 文德琳·范·德拉安南主演: 玛德琳·卡罗尔 / 卡兰·麦克奥利菲 / 瑞贝卡·德·莫妮 / 安东尼·爱德华兹 / 约翰·马奥尼 / 佩内洛普·安·米勒 / 艾丹·奎因 / 凯文·韦斯曼 / 摩根·莉莉 / 瑞安·克茨纳 / 吉莉安·普法夫 / 迈克尔·博萨 / 博·勒纳 / 杰奎琳·埃沃拉 / 泰勒·格鲁秀斯 ', '爱情 /经典', '1');
INSERT INTO `remen` VALUES ('11', 'https://s3.ax1x.com/2021/02/08/yU3qiD.png', '忠犬八公', '4.5', '1016', '6', '2009-06-13(西雅图电影节) / 2010-03-12(英国)导演: 拉斯·霍尔斯道姆编剧: 斯蒂芬·P·林赛 / 新藤兼人主演: 理查·基尔 / 萨拉·罗默尔 / 琼·艾伦 / 罗比·萨布莱特 / 艾瑞克·阿瓦利 / 田川洋行 / 杰森·亚历山大 / 罗伯特·卡普荣', '经典', '1');
INSERT INTO `remen` VALUES ('12', 'https://s3.ax1x.com/2021/02/08/yU3LJe.png', '当幸福来敲门', '4.6', '1017', '4', '2008-01-17(中国大陆) / 2020-07-20(中国大陆重映) / 2006-12-15(美国)导演: 加布里埃莱·穆奇诺\r\n编剧: 斯蒂夫·康拉德主演: 威尔·史密斯 / 贾登·史密斯 / 坦迪·牛顿 / 布莱恩·豪威 / 詹姆斯·凯伦 / 丹·卡斯泰兰尼塔 / 柯特·富勒 / 塔卡尤·费舍尔 / 凯文·韦斯特 / 乔治·张 / 戴维·迈克尔·西尔弗曼 / 多米尼克·博夫 / 杰弗·卡伦 / 乔伊芙·拉文 / 斯科特·克拉斯', '经典', '1');
INSERT INTO `remen` VALUES ('14', '', '测试电影2', '0.0', '100011', '0', '测试信息2', '测试标签2', '1');
INSERT INTO `remen` VALUES ('15', '', '测试电影3', '0.0', '10012', '0', '测试信息3', '测试标签3', '1');
INSERT INTO `remen` VALUES ('17', '', '测试电影1', '0.0', '100010', '0', '测试标签1', '测试信息1', '1');
INSERT INTO `remen` VALUES ('18', '', '测试电影4', '0.0', '10013', '0', '测试信息4', '测试标签', '1');
INSERT INTO `remen` VALUES ('19', 'https://s3.ax1x.com/2021/02/27/6pnQPK.png', '神奇女侠', '3.9', '1018', '3', '2017-05-30(中国香港/台湾) / 2017-06-02(中国大陆/美国)派蒂·杰金斯主演: 盖尔·加朵 / 克里斯·派恩 / 康妮·尼尔森 / 罗宾·怀特 / 大卫·休里斯 / 丹尼·赫斯顿 / 埃伦娜·安纳亚 / 露茜·戴维斯 / 萨伊德·塔格马奥 ', '动作。科幻', '1');

-- ----------------------------
-- Table structure for `reying`
-- ----------------------------
DROP TABLE IF EXISTS `reying`;
CREATE TABLE `reying` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `movie_name` varchar(255) NOT NULL,
  `rate` decimal(11,1) DEFAULT NULL,
  `movie_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '上映与否  //0上映  //1即将上映',
  `tag` varchar(255) DEFAULT NULL,
  `movie_info` varchar(255) DEFAULT NULL,
  `display` int(11) DEFAULT NULL,
  `people_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reying
-- ----------------------------
INSERT INTO `reying` VALUES ('1', 'https://s3.ax1x.com/2021/02/08/yUP1Re.png', 'moviedetail', '送你一朵小红花', '3.6', '1000', '1', '最新', '2020-12-31(中国大陆)导演: 韩延编剧: 韩延 / 韩今谅 / 贾佳薇 / 于勇敢 / 李晗主演: 易烊千玺 / 刘浩存 / 朱媛媛 / 高亚麟 / 夏雨 / 岳云鹏 / 陈祉希 / 李晓川 / 孔琳 / 吴晓亮 / 张绍刚 / 孙强 / 安笑歌 / 李增辉 / 姚未平 / 张浩天 / 柴陆', '1', '5');
INSERT INTO `reying` VALUES ('2', 'https://s3.ax1x.com/2021/02/08/yUPJsA.png', 'moviedetail', '蜂鸟计划', null, '1001', '0', '科幻 /动作', '2021-01-29(中国大陆) / 2018-09-08(多伦多电影节) / 2019-03-15(美国)导演: 阮金编剧: 阮金主演: 杰西·艾森伯格 / 亚历山大·斯卡斯加德 / 萨尔玛·海耶克 / 迈克尔·曼多 / 约翰·海尔登贝格 / 阿伊莎·伊萨 / 萨拉·古德伯格 / 弗兰克·萧宾 / 夸西·宋桂', '1', '0');
INSERT INTO `reying` VALUES ('3', 'https://s3.ax1x.com/2021/02/08/yUPBRg.png', 'moviedetail', '温泉屋的小老板娘', '2.8', '1002', '1', '动画', '2021-01-29(中国大陆) / 2018-06-11(安锡动画电影节) / 2018-09-21(日本)导演: 高坂希太郎编剧: 令丈裕子 / 亚沙美 / 吉田玲子主演: 小林星兰 / 水树奈奈 / 松田飒水 / 远藤璃菜 / 小樱悦子 / 麻上洋子 / 花泽香菜 / 一龙斋贞友 / 寺杣昌纪 / 折笠富美子 / 小林由美子 / 小松未可子 / 田中诚人 / 高桥里枝 / 坂本恭平 / 伊东美弥子', '1', '5');
INSERT INTO `reying` VALUES ('4', 'https://s3.ax1x.com/2021/02/08/yUPhJU.png', 'moviedetail', '拆弹专家2', '3.9', '1003', '1', '最新 /动作', '2020-12-24(中国大陆)导演: 邱礼涛编剧: 邱礼涛 / 李敏 / 李昇主演: 刘德华 / 刘青云 / 倪妮 / 谢君豪 / 姜皓文 / 吴卓羲 / 马浴柯 / 黄德斌 / 郑子诚 / 洪天明 / 袁富华 / 刘浩龙 / 凌文龙 / 赵永洪 / 蔡瀚亿 / 张竣杰 / 张扬', '1', '3');
INSERT INTO `reying` VALUES ('5', 'https://s3.ax1x.com/2021/02/08/yUP7LR.png', 'moviedetail', '心灵奇旅', '3.1', '1004', '1', '最新/动画', '2020-12-25(中国大陆/美国网络) / 2020-10-11(伦敦电影节)导演: 彼特·道格特 / 凯普·鲍尔斯编剧: 彼特·道格特 / 麦克·琼斯 / 凯普·鲍尔斯主演: 杰米·福克斯 / 蒂娜·菲 / 菲利西亚·拉斯海德 / 阿米尔-卡利布·汤普森 / 戴维德·迪格斯 / 格拉汉姆·诺顿 / 瑞切尔·豪斯 / 艾莉丝·布拉加 / 理查德·艾欧阿德 / 唐尼尔·罗林斯 / 安吉拉·贝塞特 / 马戈·霍尔 / 罗德莎·琼斯 / 韦斯·斯塔迪 / 沙基纳·贾弗里 / 福琼·费姆斯特', '1', '4');
INSERT INTO `reying` VALUES ('6', 'https://s3.ax1x.com/2021/02/08/yUOdQP.png', 'moviedetail', '大红包', '2.6', '1005', '1', '最新/喜剧', '2021-01-22(中国大陆)导演: 李克龙编剧: 李克龙主演: 包贝尔 / 克拉拉 / 张一鸣 / 贾冰 / 许君聪 / 廖蔚蔚 / 赵毅新 / 姜语心 / 杜源 / 王小利 / 李琳 / 岳跃利 / 李萍', '1', '6');
INSERT INTO `reying` VALUES ('7', 'https://s3.ax1x.com/2021/02/08/yU55ZR.png', 'moviedetail', '崖上的波妞', null, '1020', '1', '动画', ' 2020-12-31(中国大陆) / 2008-07-19(日本)导演: 宫崎骏编剧: 宫崎骏主演: 奈良柚莉爱 / 土井洋辉 / 山口智子 / 长岛一茂 / 天海祐希 / 所乔治 / 柊瑠美 / 矢野显子 / 吉行和子 / 奈良冈朋子 / 左时枝 / 羽鸟慎一 / 平冈映美 / 大桥望美', '1', null);
INSERT INTO `reying` VALUES ('8', 'https://s3.ax1x.com/2021/02/08/yU5Id1.png', null, '神奇女侠1984', '3.7', '1021', '1', '科幻/动作', '2020-12-18(中国大陆) / 2020-12-25(美国)导演: 派蒂·杰金斯编剧: 派蒂·杰金斯 / 乔夫·琼斯 / 戴夫·卡拉汉姆主演: 盖尔·加朵 / 克里斯·派恩 / 克里斯汀·韦格 / 佩德罗·帕斯卡 / 康妮·尼尔森 / 罗宾·怀特 / 莉莉·阿斯佩尔 / 加布瑞拉·王尔德 / 杜晨·科洛斯 / 琳达·卡特 / 克里斯托弗·普拉哈 / 里昂·贝克维思 / 拉维·帕特尔 / 娜塔莎·罗斯韦尔 / 泰莎·波纳姆·琼斯 / 艾拉·沃克 / 游朝敏', '1', '4');
INSERT INTO `reying` VALUES ('9', 'https://s3.ax1x.com/2021/02/08/yU5HJK.png', null, '温暖的抱抱', '3.5', '1022', '1', '喜剧/最新', '2020-12-31(中国大陆)导演: 常远编剧: 常远 / 冷旭阳 / 王志君主演: 常远 / 李沁 / 沈腾 / 乔杉 / 马丽 / 艾伦 / 田雨 / 王智 / 魏翔 / 王宁 / 黄才伦 / 张一鸣 / 王成思 / 张子栋 / 陈昊明 / 吴莫愁', '1', '3');
INSERT INTO `reying` VALUES ('10', 'https://s3.ax1x.com/2021/02/08/yU57i6.png', null, '武汉日夜', null, '1023', '1', '最新', '2021-01-22(中国大陆)导演: 曹金玲编剧: 曹金玲主演: 田定远 / 孟宪明 / 杨莉 / 苏洁 / 李青儿 / 曹珊 / 涂盛锦 / 王紫懿 / 王震 / 李超 / 王枫娇 / 左双贵 / 石长江', '1', null);
INSERT INTO `reying` VALUES ('11', 'https://s3.ax1x.com/2021/02/08/yU5oIx.png', null, '许愿神龙', null, '1024', '0', '最新/动画', '2021-01-15(中国大陆)导演: 克里斯·艾伯翰斯编剧: 克里斯·艾伯翰斯主演: 成龙 / 牛骏峰 / 薇薇安 / 苏柏丽', '1', null);
INSERT INTO `reying` VALUES ('12', 'https://s3.ax1x.com/2021/02/08/yU5qzD.png', null, '海底小纵队', null, '1025', '1', '动画', '2021-01-08(中国大陆)导演: 布莱尔·西蒙斯 / 周沁编剧: 霍耀武主演: 郭盛 / 苏俣 / 方宇 / 曹凯 / 周湘宁 / 张璐 / 汤水雨 / 严明 / 武媛媛 / 徐艺涵', '1', null);
INSERT INTO `reying` VALUES ('13', 'https://s3.ax1x.com/2021/02/08/yU5XsH.png', null, '疯狂原始人2', null, '1026', '1', '动画', '2020-11-27(中国大陆) / 2020-11-25(美国)导演: 乔尔·克劳福德编剧: 柯克·德·米科 / 丹·哈格曼 / 凯文·哈格曼 / 克里斯·桑德斯主演: 尼古拉斯·凯奇 / 艾玛·斯通 / 瑞恩·雷诺兹 / 凯瑟琳·基纳 / 莱斯利·曼恩 / 彼特·丁拉基 / 克拉克·杜克 / 克萝丽丝·利奇曼 / 乔安娜·林莉 / 凯莉·玛丽·陈', '1', null);
INSERT INTO `reying` VALUES ('14', 'https://s3.ax1x.com/2021/02/08/yU5jLd.png', null, '哆啦A梦：大熊的新恐龙', '3.1', '1027', '1', '动画', '2020-12-11(中国大陆) / 2020-08-07(日本)导演: 今井一晓编剧: 川村元气主演: 水田山葵 / 大原惠美 / 嘉数由美 / 关智一 / 木村昴 / 远藤绫 / 钉宫理惠 / 渡边直美 / 木村拓哉', '1', '4');
INSERT INTO `reying` VALUES ('15', 'https://s3.ax1x.com/2021/02/08/yU5zdI.png', null, '宝可梦：超梦的逆袭 进化', '3.3', '1028', '1', '动画', '2020-12-04(中国大陆) / 2019-07-12(日本)导演: 汤山邦彦 / 榊原幹典编剧: 首藤刚志 / 田尻智主演: 松本梨香 / 大谷育江 / 市村正亲 / 饭冢雅弓 / 兴梠里美 / 上田祐司 / 林原惠美 / 三木真一郎 / 犬山犬子 / 爱河里花子 / 高木涉 / 山寺宏一', '1', '2');
INSERT INTO `reying` VALUES ('16', 'https://s3.ax1x.com/2021/02/08/yU5xeA.png', null, '汪汪队立大功之超能救援', '3.2', '1029', '1', '动画', '2020-11-13(中国大陆)导演: 安德鲁·斯特里梅迪斯编剧: 安迪·格尔达 / 史蒂夫·苏利文主演: 麦克斯·卡林内斯库 / 德文·科恩 / 德鲁·戴维斯 / 欧文·梅森 / 斯图尔特·雷斯顿 / 亚历克斯·索恩 / 卡兰·霍利', '1', '5');
INSERT INTO `reying` VALUES ('17', 'https://s3.ax1x.com/2021/02/08/yUISot.png', null, '紧急救援', '3.2', '1030', '1', '最新 /动作', '2020-12-18(中国大陆)导演: 林超贤编剧: 支雅卿 / 王思敏 / 谭宇力主演: 彭于晏 / 王彦霖 / 辛芷蕾 / 蓝盈莹 / 王雨甜 / 徐洋 / 陈家乐 / 李岷城 / 张景祎 / 李欣蕊 / 郭晓东 / 张国强 / 魏大勋 / 连凯', '1', '6');
INSERT INTO `reying` VALUES ('18', 'https://s3.ax1x.com/2021/02/08/yUICJf.png', null, '卸甲归来', null, '1031', '0', '最新 /动作', '2021-01-30(中国大陆)导演: 杜修斌 / 郭虎编剧: 刘婉婷 / 单坤主演: 吕良伟 / 元彪 / 徐冬冬 / 周海媚 / 柏华力·莫高彼斯彻', '1', '0');
INSERT INTO `reying` VALUES ('19', 'https://s3.ax1x.com/2021/02/08/yUTqzT.png', null, '侍神令', null, '1032', '0', '最新 /爱情', '2021-02-12(中国大陆)导演: 李蔚然编剧: 张家鲁主演: 陈坤 / 周迅 / 陈伟霆 / 屈楚萧 / 王丽坤 / 沈月 / 王紫璇 / 王悦伊 / 孙红雷 / 艾米', '1', '0');
INSERT INTO `reying` VALUES ('20', 'https://s3.ax1x.com/2021/02/08/yUTOQU.png', null, '你好,李焕英', null, '1033', '0', '喜剧', '2021-02-12(中国大陆)导演: 贾玲编剧: 贾玲 / 孙集斌 / 王宇 / 刘宏禄 / 卜钰 / 郭宇鹏主演: 贾玲 / 张小斐 / 沈腾 / 陈赫 / 魏翔 / 刘佳', '1', '0');
INSERT INTO `reying` VALUES ('21', 'https://s3.ax1x.com/2021/02/08/yUTxeJ.png', null, '唐人街探案3', null, '1034', '0', '喜剧', '2021-02-12(中国大陆)导演: 陈思诚编剧: 陈思诚 / 张淳 / 刘吾驷 / 莲舟 / 严以宁主演: 王宝强 / 刘昊然 / 妻夫木聪 / 托尼·贾 / 长泽雅美 / 染谷将太 / 铃木保奈美 / 浅野忠信 / 三浦友和 / 尚语贤 / 肖央 / 张子枫 / 邱泽 / 张钧甯 / 马伯骞 / 程潇 / 陈哲远 / 李明轩 / 崔雨鑫 / 张熙然', '1', '0');
INSERT INTO `reying` VALUES ('22', 'https://s3.ax1x.com/2021/02/08/yUTzw9.png', null, '人潮汹涌', null, '1035', '0', '动作 /最新', '2021-02-12(中国大陆)导演: 饶晓志编剧: 饶晓志 / 范翔 / 李想主演: 刘德华 / 肖央 / 万茜 / 程怡 / 黄小蕾 / 郭京飞 / 刘天佐 / 路阳 / 郭帆 / 雷佳音 / 史航 / 魏之皓', '1', '0');
INSERT INTO `reying` VALUES ('23', 'https://s3.ax1x.com/2021/02/08/yU79F1.png', null, '不要先生与好的女士', null, '1036', '0', '爱情', '2021-02-14(中国大陆)导演: 安然编剧: 许昂主演: 余乐欣 / 周翊涛', '1', '0');
INSERT INTO `reying` VALUES ('24', 'https://s3.ax1x.com/2021/02/08/yU7CJx.png', null, '新神榜：哪吒重生', null, '1037', '0', '动画 /科幻', '2021-02-12(中国大陆)导演: 赵霁编剧: 沐川主演: 杨天翔 / 张赫 / 宣晓鸣 / 李诗萌 / 朱可儿 / 凌振赫 / 刘若班 / 张遥函 / 张喆 / 高增志 / 郭浩然', '1', '0');
INSERT INTO `reying` VALUES ('25', 'https://s3.ax1x.com/2021/02/08/yU7PW6.png', null, '熊出没·狂野大陆', null, '1038', '0', '动画', ' 2021-02-12(中国大陆) / 2020-08-01(上海电影节)导演: 丁亮 / 邵和麒编剧: 徐芸 / 崔铁志 / 张宇主演: 张伟 / 张秉君 / 谭笑', '1', '0');
INSERT INTO `reying` VALUES ('26', 'https://s3.ax1x.com/2021/02/08/yU7AyD.png', null, '猫和老鼠', null, '1039', '0', '动画', '2021-02-26(美国/中国大陆)导演: 蒂姆·斯托瑞编剧: 凯瑟琳·西尔伯曼 / 凯文·科斯特洛 / 威廉·汉纳 / 约瑟夫·巴伯拉 / 埃普尔·普罗瑟主演: 科洛·莫瑞兹 / 迈克尔·佩纳 / 郑肯 / 科林·乔斯特 / 乔丹·博尔格 / 罗伯·德兰尼 / 克里斯蒂娜·钟 / 布赖恩·斯特帕尼克 / 帕拉维·沙尔达 / 卡米拉·阿维森 / 克丽·麦克莱恩 / 卡米拉·拉瑟福德 / 泰·赫尔利', '1', '0');
INSERT INTO `reying` VALUES ('27', '', '', '测试1', '0.0', '1000010', '0', '测试1', '测试1', '1', '0');

-- ----------------------------
-- Table structure for `selectoptions`
-- ----------------------------
DROP TABLE IF EXISTS `selectoptions`;
CREATE TABLE `selectoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selectoptions
-- ----------------------------
INSERT INTO `selectoptions` VALUES ('1', '选项1', '点赞最多');
INSERT INTO `selectoptions` VALUES ('2', '选项2', '反对最多');
INSERT INTO `selectoptions` VALUES ('3', '选项3', '最新评论');

-- ----------------------------
-- Table structure for `tabbar_url`
-- ----------------------------
DROP TABLE IF EXISTS `tabbar_url`;
CREATE TABLE `tabbar_url` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tabbar_url
-- ----------------------------
INSERT INTO `tabbar_url` VALUES ('1', '影讯', 'movie_info');
INSERT INTO `tabbar_url` VALUES ('2', '电影', 'select_movie');
INSERT INTO `tabbar_url` VALUES ('3', '排行榜', 'rank');
INSERT INTO `tabbar_url` VALUES ('4', '分类', 'classify');
INSERT INTO `tabbar_url` VALUES ('5', '评论', 'comment');

-- ----------------------------
-- Table structure for `tuijian`
-- ----------------------------
DROP TABLE IF EXISTS `tuijian`;
CREATE TABLE `tuijian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuijian
-- ----------------------------
INSERT INTO `tuijian` VALUES ('1', '送你一朵小红花', '1000');
INSERT INTO `tuijian` VALUES ('2', '神奇女侠1984', '1018');
INSERT INTO `tuijian` VALUES ('3', '哆啦A梦：大熊的新恐龙', '1027');
INSERT INTO `tuijian` VALUES ('4', '拆弹专家2', '1003');
INSERT INTO `tuijian` VALUES ('5', '大红包', '1005');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(9) DEFAULT NULL,
  `user_img` varchar(255) DEFAULT NULL,
  `user_ur` varchar(12) DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '5001', '法大师傅后', 'https://s3.ax1x.com/2021/02/08/yURyex.png', 'asd0123', 'asd0123');
INSERT INTO `user` VALUES ('2', '5002', 'uytru', 'https://s3.ax1x.com/2021/02/08/yUR6w6.png', 'asd456', 'asd456');
INSERT INTO `user` VALUES ('3', '5003', 'u让他已经', 'https://s3.ax1x.com/2021/02/08/yURcTK.png', 'asd789', 'asd789');
INSERT INTO `user` VALUES ('8', '5005', 'hythyth', 'http://localhost:3000/upload/zyn1.jpg', 'asd000', 'asd000');
INSERT INTO `user` VALUES ('9', '5006', 'hgf', '', 'asd147', 'asd147');
INSERT INTO `user` VALUES ('11', '5008', '奥德赛', '', 'asd369', 'asd369');
INSERT INTO `user` VALUES ('12', '5010', '张飞', 'http://localhost:3000/upload/ctyls.jpg', 'asd0110', 'asd000');
INSERT INTO `user` VALUES ('33', '5011', '关羽', '', 'qqq111', '123456');
INSERT INTO `user` VALUES ('34', '5012', '赵云', '', 'asd111', '123456');
INSERT INTO `user` VALUES ('35', '5013', '诸葛亮', '', 'asd123', '123456');
INSERT INTO `user` VALUES ('36', '5014', '刘备', '', 'asd258', '123456');
INSERT INTO `user` VALUES ('37', '5015', 'hehee', 'http://localhost:3000/upload/pic_floor01_5@2x.png', 'admin', '123456');
