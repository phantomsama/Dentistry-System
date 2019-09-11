/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : travel

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 08/09/2019 22:44:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (3, 'mr', 'pbkdf2:sha256:50000$TkExX9Jm$d63477853a17dcaedcd52be4b6213ebb74b61a12456762ac19d6b7dfb559aa57');
INSERT INTO `admin` VALUES (2, 'mike', 'pbkdf2:sha256:50000$PDFSddjk$823d8221b6e837a9e7ffa264136c05bbc5a74aa4299ab638e39cd931467a7f2a');
INSERT INTO `admin` VALUES (1, 'admin', 'pbkdf2:sha256:50000$AjYXdUx3$070af6e5b59ff7bf0ed8634469297886a5859beb187460ce6535153ab6be7a3d');

-- ----------------------------
-- Table structure for adminlog
-- ----------------------------
DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE `adminlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_adminlog_addtime`(`addtime`) USING BTREE,
  INDEX `admin_id`(`admin_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminlog
-- ----------------------------
INSERT INTO `adminlog` VALUES (1, 1, '127.0.0.1', '2019-09-01 09:26:24');
INSERT INTO `adminlog` VALUES (2, 1, '127.0.0.1', '2019-09-01 09:27:09');
INSERT INTO `adminlog` VALUES (3, 1, '127.0.0.1', '2019-09-01 09:29:42');
INSERT INTO `adminlog` VALUES (4, 1, '127.0.0.1', '2019-09-01 14:52:55');
INSERT INTO `adminlog` VALUES (5, 1, '127.0.0.1', '2019-09-02 08:45:20');
INSERT INTO `adminlog` VALUES (6, 1, '127.0.0.1', '2019-09-02 10:02:37');
INSERT INTO `adminlog` VALUES (7, 1, '127.0.0.1', '2019-09-02 10:38:04');
INSERT INTO `adminlog` VALUES (8, 1, '127.0.0.1', '2019-09-02 10:53:51');
INSERT INTO `adminlog` VALUES (9, 1, '127.0.0.1', '2019-09-02 10:53:35');
INSERT INTO `adminlog` VALUES (10, 1, '127.0.0.1', '2019-09-02 14:14:36');
INSERT INTO `adminlog` VALUES (11, 1, '127.0.0.1', '2019-09-03 09:17:10');
INSERT INTO `adminlog` VALUES (12, 1, '127.0.0.1', '2019-09-03 11:04:20');
INSERT INTO `adminlog` VALUES (13, 1, '127.0.0.1', '2019-09-03 13:28:49');
INSERT INTO `adminlog` VALUES (14, 1, '127.0.0.1', '2019-09-07 22:31:01');
INSERT INTO `adminlog` VALUES (15, 1, '127.0.0.1', '2019-09-07 23:13:45');
INSERT INTO `adminlog` VALUES (16, 1, '127.0.0.1', '2019-09-08 13:30:12');
INSERT INTO `adminlog` VALUES (17, 1, '127.0.0.1', '2019-09-08 16:38:00');
INSERT INTO `adminlog` VALUES (18, 2, '127.0.0.1', '2019-09-08 18:53:27');
INSERT INTO `adminlog` VALUES (19, 1, '127.0.0.1', '2019-09-08 19:00:47');
INSERT INTO `adminlog` VALUES (20, 1, '127.0.0.1', '2019-09-08 19:01:24');
INSERT INTO `adminlog` VALUES (21, 1, '127.0.0.1', '2019-09-08 20:08:37');
INSERT INTO `adminlog` VALUES (22, 1, '127.0.0.1', '2019-09-08 22:38:02');

-- ----------------------------
-- Table structure for alembic_version
-- ----------------------------
DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE `alembic_version`  (
  `version_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`version_num`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alembic_version
-- ----------------------------
INSERT INTO `alembic_version` VALUES ('423caff1b936');

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `is_recommended` tinyint(1) NULL DEFAULT NULL,
  `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `ix_area_addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, 'Chapter 1 Introduction', '2019-09-01 10:45:33', 1, 'This book has been created as an introduction to the clinics at Leeds Dental Institute and it contains information about the clinics (equipment, responsibilities expected from the student/staff such as professional conduct, patient management...) and general clinical working practices (infection prevention and control, x-ray facilities...) as well as aspects related to the different restorative clinical procedures carried out in clinics.');
INSERT INTO `area` VALUES (2, 'Chapter 2 The Clinics', '2019-09-01 11:40:13', 1, 'The Clinics are divided into North and South clinics, with staff treatment surgeries in the area between at the start of each term each member of staff will be allocated a group of students. They will be responsible for their teaching and assessment for that term. At the end of term they will be asked to provide term grades and comments on the student\'s performance.');
INSERT INTO `area` VALUES (3, 'Chapter 3 General Clinical Working Practices', '2019-09-02 09:31:59', 1, 'While operating, staff and students should be conscious of the importance of Infection Prevention and Control practices, asepsis, cleanliness and sterility. You should avoid putting your hands through your pockets or your hair. You should familiarise yourself with the LTHT Health and Safety guidelines.');
INSERT INTO `area` VALUES (6, 'Chapter 4 Patient Assessment', '2019-09-08 13:38:48', 1, 'Aspects of history taking, examination, diagnosis and treatment planning are discussed below.\r\nWhen assessing patients, think about their complaint, tailor history taking accordingly and follow a systematic examination approach in order to gather the necessary information to achieve a diagnosis. Only once a diagnosis is achieved, a treatment plan can be established.');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scenic_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_collect_addtime`(`addtime`) USING BTREE,
  INDEX `scenic_id`(`scenic_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (3, 1, 7, '2019-09-02 09:25:14');
INSERT INTO `collect` VALUES (8, 5, 1, '2019-09-08 22:36:38');

-- ----------------------------
-- Table structure for oplog
-- ----------------------------
DROP TABLE IF EXISTS `oplog`;
CREATE TABLE `oplog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_oplog_addtime`(`addtime`) USING BTREE,
  INDEX `admin_id`(`admin_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oplog
-- ----------------------------
INSERT INTO `oplog` VALUES (18, 1, '127.0.0.1', 'Add chapter 4 Patient Assessment', '2019-09-08 13:38:48');
INSERT INTO `oplog` VALUES (19, 1, '127.0.0.1', 'Add chapter hahaha', '2019-09-08 18:16:18');
INSERT INTO `oplog` VALUES (20, 1, '127.0.0.1', 'delete chapter hahaha', '2019-09-08 18:17:10');
INSERT INTO `oplog` VALUES (21, 1, '127.0.0.1', 'delete admin mike', '2019-09-08 18:48:27');
INSERT INTO `oplog` VALUES (22, 1, '127.0.0.1', 'Delete Subsection Cleaning the dental unit', '2019-09-08 20:27:16');
INSERT INTO `oplog` VALUES (23, 1, '127.0.0.1', 'Add subsectionCleaning the dental unit', '2019-09-08 20:27:25');

-- ----------------------------
-- Table structure for scenic
-- ----------------------------
DROP TABLE IF EXISTS `scenic`;
CREATE TABLE `scenic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `star` int(11) NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_hot` tinyint(1) NULL DEFAULT NULL,
  `is_recommended` tinyint(1) NULL DEFAULT NULL,
  `area_id` int(11) NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `logo`(`logo`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE,
  INDEX `ix_scenic_addtime`(`addtime`) USING BTREE,
  INDEX `area_id`(`area_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenic
-- ----------------------------
INSERT INTO `scenic` VALUES (1, 'Equipment', 5, '20190908192902714f0a83cd8341068ab7291ce35dd521.png', 'There are a total of 62 dental operating cubicles, 26 in the North Dental clinics and 36 in the Conservation clinics on the South. On the south side there are 10 A/DEC chairs and lights, these can be found close to the windows. The mains switch for these are on the bracket table (as a small switch just under the right hand side) see below.', '<p>There are a total of <strong>62</strong> dental operating cubicles, <strong>26</strong> in the North Dental clinics and <strong>36 </strong>in the Conservation clinics on the South. On the south side there are 10 A/DEC chairs and lights, these can be found close to the windows. <em>The mains switch for these are on the bracket table (as a small switch just under the right hand side) see below.</em></p>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/201909081925589cdd0122741d4964afd389f3788b8618.png\" style=\"height:376px; width:500px\" /></p>\r\n\r\n<p>Knee break chair</p>\r\n\r\n<p>The majority of the units are of a <em><ins><strong>PLANMECA</strong></ins> </em>type with a side delivery operators control module except for those with a pillar mounted control module which are adaptable for use by left handed operators.<br />\r\nIn addition there are several knee brake chairs for patients who would be otherwise compromised. These can be identified by senior staff.<br />\r\nPatients may require the use of a HOIST THIS IS LOCATED ON THE SOUTH SIDE, please ask nursing staff for assistance if the hoist is required.<br />\r\nThe following notes will be of assistance in explaining the equipment basic controls and functions.</p>\r\n', 'Equipment  PLANMECA type', 1, 1, 2, '2018-03-22 12:48:16');
INSERT INTO `scenic` VALUES (3, 'Introduction', 5, '20190908203523701b778e1c614342ab4af0b2078f636a.png', 'This book has been created as an introduction to the clinics at Leeds Dental Institute and it contains information about the clinics (equipment, responsibilities expected from the student/staff such as professional conduct, patient management...) and general clinical working practices (infection prevention and control, x-ray facilities...) as well as aspects related to the different restorative clinical procedures carried out in clinics.', '<blockquote>\r\n<p>It is the nature of publishing in the clinical field that developments in materials and techniques can quickly make any published work seem dated and obsolete. For this reason this document will be updated regularly, the most current version will be available on both clinics and online.</p>\r\n</blockquote>\r\n\r\n<p><big>For students</big></p>\r\n\r\n<blockquote>\r\n<p><br />\r\nYour clinical experience is extremely important, both to you and your patients. We are very proud of our students at Leeds and the treatment they provide. For this reason we have to establish and maintain a set of standards that both ensure patient safety but also set you on the right road to successful clinical practice. This book gives an outline, no more than a reminder of standards and accepted practices. Preparation for clinics is vital, you will be expected to be well versed in the materials and techniques you are proposing to undertake or use each session. For this purpose this manual alone will not be sufficient and reading of the recommended texts is extremely important.</p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><br />\r\n<big>For clinical members of staff</big><br />\r\nThe following notes have been prepared to assist you with your teaching responsibilities and to give you some guidance on department policy on a range of clinical and organisational issues. Should anything remain unclear please do not hesitate to ask clinical colleagues.<br />\r\nOur dental undergraduates spend a high proportion of their time in these clinics from first year onwards. In addition the 4th and final years will visit out-reach clinics at Beeston, Bradford and Hull. It is important therefore to know about:</p>\r\n\r\n<ul>\r\n	<li>The clinic working arrangements</li>\r\n	<li>The facilities of the clinics including the emergency and safety provisions, and</li>\r\n	<li>The equipment and how it works</li>\r\n	<li>The procedures and techniques that our students are taught</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><br />\r\n<big>Acknowledgements</big></p>\r\n\r\n<blockquote>\r\n<p>A big thank you to all members of staff who kindly reviewed parts of this material, in special Sharon Kelly who revised/updated the &lsquo;General working practices&rsquo; section of this book.</p>\r\n</blockquote>\r\n', 'Introduction students staff', 1, 1, 1, '2018-03-24 13:01:27');
INSERT INTO `scenic` VALUES (4, 'The Dental Chair', 5, '20190908194227648be6205de544ccb5c71d8abe6f6cb1.png', 'The dental chair is centrally located in the cubicle and must not be moved without staff consent. It has two sets of controls – HAND CONTROLS AND FOOT CONTROLS – the foot controls to permit chair adjustment during operating without gloved hands either contaminating or being contaminated by the hand controls. The control functions are shown below.', '<p><big>Dental Operating Light</big></p>\r\n\r\n<blockquote>\r\n<p>The standard OPERATING light is ceiling mounted ON A TRACK and the lenses must be kept clean to maintain efficiency. It has a sharply delineated cut-off to avoid dazzling the patient. There are three settings:</p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li><samp>When the switch is in the up position at it is brightest</samp></li>\r\n	<li><samp>When down it is dimmer to prevent composite material from prematurely setting.</samp></li>\r\n	<li><samp>When in the middle it is OFF</samp></li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/20190908193649e8b78cf5844f48d5b6ecce0371286839.png\" style=\"height:396px; width:528px\" /></p>\r\n\r\n<p><small>Operating light</small></p>\r\n\r\n<blockquote>\r\n<p>NB On entry and exit from the chair the light should be moved to protect all concerned !!!!!<br />\r\nNB If the green light on the track is not on, the bulb may have gone or the unit is not turned on.</p>\r\n</blockquote>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/20190908193832e54c833cf24a4ebeae877d0b8b352ca2.png\" style=\"height:411px; width:550px\" /></p>\r\n\r\n<p><small>Operating light with switch in full position</small></p>\r\n\r\n<p><big>Chair-mounted Spittoon/Suction Unit</big></p>\r\n\r\n<blockquote>\r\n<p>This is mounted to the patient&rsquo;s left when seated in the dental chair. It offers one touch filling for plastic disposable cups, and mouth rinsing facilities for the patient and has a triple function syringe, high and low volume suction for use by the chairside assistant. The key features are shown below.</p>\r\n</blockquote>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/201909081942011a3399b76b434d2cb6f1929df6eaa433.png\" style=\"height:353px; width:472px\" /></p>\r\n\r\n<p><small>Suction unit</small></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Operating Light  Suction unit', 1, 1, 2, '2018-03-24 13:05:54');
INSERT INTO `scenic` VALUES (5, 'Radiographic assessment and report', 5, '20190908222525632a48ed87b64f679e6b40b4d9016541.png', 'Radiographs should be requested only after taking the patient\'s medical history and completing a full clinical examination, in this way they are likely to contribute to a clinical diagnosis and management. A radiographic report should be carry out on any radiographs taken as part of the initial assessment. When requesting a radiograph the student should always ask the question \'will this radiograph affect the patient\'s management or prognosis?\', if the answer to this is no, then a radiograph is not necessary. Some guidelines are provided bellow to help students decide which and when these might be appropriate.', '<blockquote>\r\n<p>Radiographs should be requested only after taking the patient&#39;s medical history and completing a full clinical examination, in this way they are likely to contribute to a clinical diagnosis and management.<br />\r\nA radiographic report should be carry out on any radiographs taken as part of the initial assessment.<br />\r\nWhen requesting a radiograph the student should always ask the question &#39;will this radiograph affect the patient&#39;s management or prognosis?&#39;, if the answer to this is no, then a radiograph is not necessary.<br />\r\nSome guidelines are provided bellow to help students decide which and when these might be appropriate.</p>\r\n</blockquote>\r\n\r\n<p><big>Selection criteria</big></p>\r\n\r\n<blockquote>\r\n<p>(From &#39;Selection criteria for dental radiography&#39;, 3rd edition - FGDP 2013)</p>\r\n</blockquote>\r\n\r\n<p><small>Diagnosis of dental caries</small></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">Caries Risk</th>\r\n			<th scope=\"col\">Frequency of radiograph</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>High</td>\r\n			<td>Posterior BWs at 6 month intervals</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Moderate</td>\r\n			<td>Posterior BWs at 12 month intervals</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Low</td>\r\n			<td>Primary dentition: 12 - 18 month intervals. Permanent dentition: 2 year intervals</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><small>Assessment of periodontal disease</small></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Lesion</td>\r\n			<td>Radiograph</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Uniform pockets &le; 5mm, little or no recession</td>\r\n			<td>Horizontal BWs</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pocketing of &gt; 5mm</td>\r\n			<td>Vertical BWs supplemented, if necessary, by PAs</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Irregular pocketing</td>\r\n			<td>Horizontal or vertical BWs depending on pocket depth supplemented, if necessary, by PAs</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Concurrent problems (e.g. symptomatic 8s, multiple crowns and/or heavily restored teeth and/or multiple endo)</td>\r\n			<td>OPT supplemented, if necessary, by PAs</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Perio-endo lesion</td>\r\n			<td>PA</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;\r\n<p>&nbsp;\r\n<p><big>Guidelines on writing a radiographic report Check that radiographs are correctly marked with patient identifier and orientated correctly</big></p>\r\n</p>\r\n</p>\r\n\r\n<blockquote>\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Include the date and type of radiograph</li>\r\n	<li>Comment on image quality (any faults or artefacts that may affect the diagnostic quality?)</li>\r\n	<li>If there are several radiographs to examine, do them chronologically and assess progression of lesions where possible</li>\r\n	<li>Have a method of going round the entire radiograph</li>\r\n</ul>\r\n\r\n<p>e.g. if an OPT is being reported, start on the patient&#39;s top right, going left, lower left to lower right</p>\r\n</blockquote>\r\n\r\n<p><br />\r\n<big>Periodontal</big></p>\r\n\r\n<blockquote>\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Alveolar bone levels (if the apex can be seen then the bone loss should be measured as a percentage of root length in 10% grades. If you cannot see the apices (e.g. bitewings), then bone loss should be measured in mm)</li>\r\n	<li>Summarise the pattern of bone loss (i.e. is it generally horizontal or irregular with multiple vertical defects?), The variation in the horizontal loss (i.e. a range 30-50%?). Is the mandible different from the maxilla?</li>\r\n	<li>If calculus deposits are seen on a number of teeth, then simply say that. Do not list every piece seen. If there is a particularly large piece with an associated vertical defect then this may be worth listing</li>\r\n	<li>Plaque-retaining factors</li>\r\n	<li>Furcation involvements</li>\r\n	<li>Marginal widening</li>\r\n	<li>Combined perio-endo lesions</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><br />\r\n<big>Caries</big></p>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li>Site and depth</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><br />\r\n<big>Restorations</big></p>\r\n\r\n<blockquote>\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li>No need to mention every single restoration, but it is worth to mention heavily-restored teeth</li>\r\n	<li>Deficiencies, overhangs or leaking must be noted</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p>Endodontic and periapical</p>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li>Periapical radiolucencies</li>\r\n	<li>Assess carefully apical status of crowned teeth</li>\r\n	<li>Widening of periodontal membrane space</li>\r\n	<li>Quality of root canal fillings (extruded / short from apex by how many mm? GP well / poorly condensed? Voids observed in coronal / middle / apical 1/3 of which root(s)?) Presence of posts?</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><big>Other</big></p>\r\n\r\n<blockquote>\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Presence of a retained root and, if relevant, their relationship with anatomical structures</li>\r\n	<li>Radio-opacities</li>\r\n	<li>Unerupted teeth if past their normal eruption date</li>\r\n	<li>Third molars should normally be classified into their degree of eruption, any abnormal angulation and particularly in the case of lowers, their root morphology and relation to the ID canal</li>\r\n	<li>Finally, look at the areas of the radiograph beyond the dentition in case there is further pathology</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p>Example - radiographic report</p>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/20190908222312907cddd5feda4c2b9fc1fe8b13c49111.png\" style=\"height:338px; width:448px\" /><img alt=\"\" src=\"/static/uploads/ckeditor/2019090822232361c4c053ff2243438e27353790d77278.png\" style=\"height:338px; width:448px\" /></p>\r\n\r\n<blockquote>\r\n<p>Upper and lower, right PAs of posterior teeth dated 20/11/17.<br />\r\nJustification: Periapical pathology? Caries?<br />\r\nImage quality excellent.<br />\r\nNo previous films for comparison.<br />\r\nHeavily restored dentition.</p>\r\n</blockquote>\r\n\r\n<p><big>Periodontal</big></p>\r\n\r\n<blockquote>\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Generally, minimal 10-20% horizontal bone loss</li>\r\n	<li>Probable perio-endo lesion UR6, where there are retained roots</li>\r\n	<li>LR6 has furcation involvement</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><br />\r\n<big>Caries</big></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li>UR6 grossly broken down retained roots</li>\r\n	<li>UR5 distal caries into dentine</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><br />\r\n<big>Restorations</big></p>\r\n\r\n<blockquote>\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Extensive restorations on all remaining molar teeth</li>\r\n	<li>Nayyar core type restorations on LR6, LR7</li>\r\n	<li>Poorly contoured proximal contact LR6, LR7</li>\r\n	<li>Negative margin distal LR6</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><br />\r\n<big>Endodontic and periapical</big></p>\r\n\r\n<blockquote>\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Periapical inflammatory lesion associated with UR6 retained roots</li>\r\n	<li>Good, well-condensed root canal fillings LR6 and LR7</li>\r\n	<li>2mm extrusion of root canal filling distal root LR6, but no associated periapical pathology</li>\r\n	<li>Under-prepared apical ⅓, loss of lamina dura and faint radiolucency mesial root LR6. It cannot be said without previous radiographs whether this is increasing in size, or healing and decreasing in size</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><br />\r\n<big>Other</big></p>\r\n\r\n<blockquote>\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>UR6 retained roots closely associated with the floor of the maxillary sinus</li>\r\n</ul>\r\n</blockquote>\r\n', 'Selection criteria radiographic report', 1, 1, 6, '2018-03-24 13:10:08');
INSERT INTO `scenic` VALUES (7, 'Cleaning the dental unit', 5, '20190908202724886ad3e012f443419ba55ec9b30a6806.png', 'The dental unit requires cleaning prior to use, between each patient and at the end of the session. The dental unit requires cleaning prior to use, between each patient and at the end of the session. The dental unit requires cleaning prior to use, between each patient and at the end of the session.', '<p><big>Cleaning the dental unit at the beginning of the session</big></p>\r\n\r\n<blockquote>\r\n<p>You should always <strong>decontaminate your hands</strong> as per LTHT Hand Hygiene policy and wear appropriate <strong>personal protective equipment</strong> [PPE] when preparing the unit for use.<br />\r\nPPE to clean the dental unit: don gloves and clinical gown/plastic apron. When flushing the dental waterlines face protection is required: eye protection and face mask.<br />\r\nYou should clean at the beginning of each session with<strong> a micro fibre cloth</strong> and use a<strong> Clinell wipe</strong> to clean after each patient (please see cleaning the dental unit after each patient).<br />\r\nFirst clean of session with micro fibre cloth</p>\r\n\r\n<ul>\r\n	<li>Wet the cloth in the product sink (<strong>do not use the hand wash basin</strong>)</li>\r\n	<li>Squeeze out excess water; fold in half, use to clean, once the first side is soiled the cloth should be turned to the clean side</li>\r\n	<li>Working from clean to dirty, wipe in an &lsquo;S&rsquo; shape pattern, taking care not to go over the same area twice</li>\r\n	<li>The cloth can be rinsed again and can continue to be used until all the surfaces of the unit have been cleaned</li>\r\n</ul>\r\n\r\n<p>If there is visible blood spillage disinfect with chlorine at 10,000 ppm strength, see LTHT Standard Infection Prevention and Control Precautions guideline.<br />\r\nThe unit should be cleaned in the following order</p>\r\n</blockquote>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/20190908202648461711bd62c84ad09f84897779caf487.png\" style=\"height:310px; width:500px\" /></p>\r\n\r\n<blockquote>\r\n<p>Section 1</p>\r\n\r\n<ul>\r\n	<li>All worktop surfaces and ledges (move all equipment stored on worktop e.g. sharps bin, etc &ndash; all items should also be externally cleaned)</li>\r\n	<li>Product Taps and Sink</li>\r\n	<li>Mobile Cart - all external surfaces including electrical cable and ledges, internal pull out shelf (Amalgamator equipment)</li>\r\n	<li>Drawer and door handles</li>\r\n</ul>\r\n\r\n<p>Section 2</p>\r\n\r\n<ul>\r\n	<li>Ledge (lift items to clean underneath)</li>\r\n	<li>Top of towel dispenser</li>\r\n	<li>Visitor chair</li>\r\n</ul>\r\n\r\n<p>Section 3</p>\r\n\r\n<ul>\r\n	<li>Ledge</li>\r\n	<li>Xray switch</li>\r\n	<li>Computer table, computer, keyboard, mouse and scanning wand</li>\r\n</ul>\r\n\r\n<p>Section 4</p>\r\n\r\n<ul>\r\n	<li>Operator light &ndash; bracket arm, light and handles</li>\r\n	<li>Dental chair &ndash; head rest, back rest, seat and arms</li>\r\n	<li>Bracket table including all exposed surfaces of delivery arm, control panel, handpiece and 3 in 1 tubings</li>\r\n	<li>Suction arm, suction tubings and box casing</li>\r\n	<li>Cup filler</li>\r\n</ul>\r\n\r\n<p>Section 5</p>\r\n\r\n<ul>\r\n	<li>Operator chair, assisting chair &ndash; all surfaces (including back supports and spokes) Dispose of micro fibre cloth in clinical waste</li>\r\n</ul>\r\n\r\n<p>Section 6</p>\r\n\r\n<ul>\r\n	<li>Foot control and spittoon - use one clinell wipe to clean each item On completion of cleaning the unit, perform an intensive dental waterline flush</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><big>Cleaning the dental unit after patient use</big></p>\r\n\r\n<blockquote>\r\n<p>You should always decontaminate your hands as per LTHT Hand Hygiene policy and wear appropriate personal protective equipment [PPE] when cleaning the dental unit after each patient use.<br />\r\nPPE to clean the dental unit: don gloves and clinical gown/plastic apron.<br />\r\nWhen flushing the dental waterlines face protection is required: eye protection and face mask.<br />\r\nHow to use a Clinell wipe</p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<ul>\r\n	<li>Remove ONE wipe from the pack</li>\r\n	<li>Working from clean to dirty, wipe in an &lsquo;S&rsquo; shape pattern, taking care not to go over the same area twice</li>\r\n	<li>Change wipe if it becomes dry or soiled and discard in clinical waste</li>\r\n	<li>If the surface is visibly wet, dry the surface with a clean dry paper towel</li>\r\n</ul>\r\n\r\n<p>If there is visible blood spillage disinfect with chlorine at 10,000 ppm strength, see LTHT Standard Infection Prevention and Control Precautions guideline.</p>\r\n\r\n<p>The unit should be cleaned in the following order</p>\r\n</blockquote>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/20190908201735d196e7f05e7f40a7aef44b1f29efc528.png\" style=\"height:310px; width:500px\" /></p>\r\n\r\n<blockquote>\r\n<p>Return clean and used instruments, equipment and materials to appropriate dispensary; remove all single use protective covers and items before commencing clean. Rinse the spittoon bowl by pressing the bowl rinse key. Empty one cup of water with each suction hose by aspirating water and air through the suction handpiece and perform a short dental waterline flush.<br />\r\nSection 1</p>\r\n\r\n<ul>\r\n	<li>All worktop surfaces (move all equipment stored on worktop e.g. sharps bin, etc &ndash; all items should also be externally cleaned)</li>\r\n	<li>Product Taps and Sink if used</li>\r\n	<li>Mobile Cart - Work surface [and the amalgamator equipment if used]</li>\r\n	<li>Drawer and door handles</li>\r\n</ul>\r\n\r\n<p>Section 2</p>\r\n\r\n<ul>\r\n	<li>Visitor chair if used</li>\r\n</ul>\r\n\r\n<p>Section 3</p>\r\n\r\n<ul>\r\n	<li>Xray switch</li>\r\n	<li>Computer table, computer, keyboard, mouse and scanning wand</li>\r\n</ul>\r\n\r\n<p>Section 4</p>\r\n\r\n<ul>\r\n	<li>Operator light &ndash; bracket arm, light and handles</li>\r\n	<li>Dental chair &ndash; head rest, back rest, seat and arms</li>\r\n	<li>Bracket table including all exposed surfaces of delivery arm, control panel, handpiece and 3 in 1 tubing&rsquo;s</li>\r\n	<li>Suction arm, suction tubings and box casing</li>\r\n	<li>Cup filler and spittoon (discard wipe after use)</li>\r\n</ul>\r\n\r\n<p>Section 5</p>\r\n\r\n<ul>\r\n	<li>Operator chair, assisting chair &ndash; all surfaces (including back supports)</li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p><big>Flushing of dental unit water lines (DUWL)</big></p>\r\n\r\n<blockquote>\r\n<p><br />\r\nDental unit water line systems are used to irrigate the oral cavity during dental treatment. Water delivered from these devices is not sterile and can contain high numbers of bacteria, mainly because of formation of biofilms within the pipework. Some of these bacteria can be pathogenic to humans (e.g. Pseudomonas aeruginosa, Legionella species, non-tuberculous mycobacteria). 2013 guidance from the Department of Health (HTM 01-05: Decontamination in primary care dental practices) set an expectation: that the quality of DUWL water, where monitored, should be expected to lie in the range 100 to 200 colony forming units per millilitre (cfu/ml). The guidance also recommends untreated DUWLs should be flushed for at least two minutes at the beginning and the end of the day and after any significant period when they have not been used (for example, after lunch breaks). In addition they should be flushed for at least 20 to 30 seconds between patients.<br />\r\n&bull; DUWLs should be flushed for 30 seconds:</p>\r\n\r\n<ul>\r\n	<li>First flush of the day</li>\r\n	<li>After each patient use</li>\r\n	<li>Before the PM session</li>\r\n	<li>End of session</li>\r\n</ul>\r\n\r\n<p>To prevent the build-up of biofilms within the DUWLs the manufactures&rsquo; instructions for Alpron 1% solution, Oxygenal 6 - 0.02% solution and ICX tablet solution specify that the products should be used as continuous dosing system, therefore the bottles should not be removed, drained, and left open to the air to dry overnight.<br />\r\nPlease see the LTHT &lsquo;Decontamination and flushing of Dental Unit Water Lines incorporating Hygiene and Maintenance of Suction System&rsquo; SOP.</p>\r\n</blockquote>\r\n', 'Cleaning steps', 1, 1, 3, '2019-09-08 20:27:25');

-- ----------------------------
-- Table structure for suggestion
-- ----------------------------
DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE `suggestion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_suggestion_addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of suggestion
-- ----------------------------
INSERT INTO `suggestion` VALUES (1, 'andy', 'andy@qq.com', 'haha', '2019-09-02 14:56:05');
INSERT INTO `suggestion` VALUES (2, 'andy', 'andy@qq.com', 'haha', '2019-09-02 14:58:57');
INSERT INTO `suggestion` VALUES (3, 'andy', 'andy@qq.com', 'haha', '2019-09-02 14:59:55');
INSERT INTO `suggestion` VALUES (4, 'andy', 'andy@qq.com', 'haha', '2019-09-02 14:59:59');
INSERT INTO `suggestion` VALUES (5, 'andy', 'andy@qq.com', 'haha', '2019-09-02 15:00:03');
INSERT INTO `suggestion` VALUES (6, 'andy', 'andy@qq.com', 'haha', '2019-09-02 15:00:43');
INSERT INTO `suggestion` VALUES (7, 'andy', 'andy@qq.com', 'haha', '2019-09-02 15:00:48');
INSERT INTO `suggestion` VALUES (8, 'andy', 'andy@qq.com', 'haha', '2019-09-02 15:01:12');
INSERT INTO `suggestion` VALUES (10, 'andy', 'andy@qq.com', 'haha', '2019-09-02 15:21:12');
INSERT INTO `suggestion` VALUES (14, 'adfadsfadc', 'adfwegwag@aefwqe.com', 'agadgwag', '2019-09-08 22:43:22');

-- ----------------------------
-- Table structure for travels
-- ----------------------------
DROP TABLE IF EXISTS `travels`;
CREATE TABLE `travels`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `scenic_id` int(11) NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE,
  INDEX `ix_travels_addtime`(`addtime`) USING BTREE,
  INDEX `scenic_id`(`scenic_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travels
-- ----------------------------
INSERT INTO `travels` VALUES (1, 'dongdongdingdingbilibiliguanguanguang', 'mike', '<p>【dongdongdingdingbilibiliguanguanguang】<br />\r\ndongdongdingdingbilibiliguanguanguang: dongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguang. dongdongdingdingbilibiliguanguanguang/dongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguang.<br />\r\ndongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguang.<br />\r\ndongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguang. dongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguang.<br />\r\n<br />\r\n【dongdongdingdingbilibiliguanguanguang】</p>\r\n\r\n<blockquote>\r\n<ol>\r\n	<li>dongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguangdongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguangdongdongdingdingbilibiliguanguanguangdongdongdingdingbilibiliguanguanguangdongdongdingdingbilibiliguanguanguang.</li>\r\n	<li>dongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguang. dongdongdingdingbilibiliguanguanguangdongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguangdongdongdingdingbilibiliguanguanguang. dongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguangdongdongdingdingbilibiliguanguanguangdongdongdingdingbilibiliguanguanguang. dongdongdingdingbilibiliguanguanguang, dongdongdingdingbilibiliguanguanguang.</li>\r\n</ol>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/201909082231417053f33bc8624a1bad93c2f677edffe9.jpg\" style=\"height:334px; width:500px\" /></p>\r\n', 1, '2019-09-02 13:49:32');
INSERT INTO `travels` VALUES (2, 'lalalalalalalalalalalalala', 'Andy', '<p>hahahahahahahahahahahahahahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahahahahahahahahahahahahahaha.</p>\r\n\r\n<p>hahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahahahahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahahahahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahahahahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahaha,&nbsp;hahahahahahahahahahahahahahahahahahahahahahahaha.</p>\r\n\r\n<p>hihihahaxixilalahahahahahahahahahahahaha, hihihahaxixilalahahahahahahahahahahahaha,hihihahaxixilalahahahahahahahahahahahaha (hihihahaxixilalahahahahahahahahahahahaha),&nbsp;hihihahaxixilalahahahahahahahahahahahahahihihahaxixilalahahahahahahahahahahahahahihihahaxixilalahahahahahahahahahahahahahihihahaxixilalahahahahahahahahahahahaha,hihihahaxixilalahahahahahahahahahahahahahihihahaxixilalahahahahahahahahahahahahahihihahaxixilalahahahahahahahahahahahahahihihahaxixilalahahahahahahahahahahahaha,&nbsp;hihihahaxixilalahahahahahahahahahahahaha.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/static/uploads/ckeditor/20190908222840a62ba7a4a7dd412a95c8923ce9a7c949.jpg\" style=\"height:312px; width:500px\" /></p>\r\n', 1, '2019-09-04 13:24:56');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  `face` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `phone`(`phone`) USING BTREE,
  UNIQUE INDEX `face`(`face`) USING BTREE,
  INDEX `ix_user_addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (4, 'pbkdf2:sha256:50000$TkExX9Jm$d63477853a17dcaedcd52be4b6213ebb74b61a12456762ac19d6b7dfb559aa57', 'andy@mrsoft.com', '2019-09-02 14:26:12', NULL, NULL, NULL, 'Andy');
INSERT INTO `user` VALUES (5, 'pbkdf2:sha256:50000$qFfVpeJK$9bc7ff46019ff211c31081e016d42770be6fae4df99e2f8d386ebd00e852ebda', 'zhangsan@qq.com', '2019-09-02 10:50:34', NULL, NULL, NULL, 'San');
INSERT INTO `user` VALUES (7, 'pbkdf2:sha256:50000$sSujvFmg$0958ae9e146e41e1301d38c55d424fe9c1fae98c0843e84234fefe1aab1a7d38', 'lisi@qq.com', '2019-09-02 16:10:13', NULL, NULL, NULL, 'Floor');
INSERT INTO `user` VALUES (8, 'pbkdf2:sha256:50000$PDFSddjk$823d8221b6e837a9e7ffa264136c05bbc5a74aa4299ab638e39cd931467a7f2a', 'mike@aaa.com', '2019-09-08 13:22:12', NULL, NULL, NULL, 'mike');
INSERT INTO `user` VALUES (1, 'pbkdf2:sha256:50000$R58bfxCM$5f438a7d055522a085148475eaab9281032e59ae0d0f8c3d3eeba79a75498120', 'admin@admin.com', '2019-09-08 18:58:56', NULL, NULL, NULL, 'admin');

-- ----------------------------
-- Table structure for userlog
-- ----------------------------
DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ix_userlog_addtime`(`addtime`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userlog
-- ----------------------------
INSERT INTO `userlog` VALUES (1, 1, '127.0.0.1', '2019-09-02 10:06:15');
INSERT INTO `userlog` VALUES (2, 4, '127.0.0.1', '2019-09-02 14:28:54');
INSERT INTO `userlog` VALUES (3, 5, '127.0.0.1', '2019-09-02 10:50:56');
INSERT INTO `userlog` VALUES (4, 7, '127.0.0.1', '2019-09-02 09:12:38');
INSERT INTO `userlog` VALUES (5, 7, '127.0.0.1', '2019-09-02 09:21:02');
INSERT INTO `userlog` VALUES (6, 7, '127.0.0.1', '2019-09-02 09:24:59');
INSERT INTO `userlog` VALUES (7, 5, '127.0.0.1', '2019-09-02 09:33:05');
INSERT INTO `userlog` VALUES (8, 5, '127.0.0.1', '2019-09-02 10:35:49');
INSERT INTO `userlog` VALUES (9, 8, '127.0.0.1', '2019-09-08 13:22:25');
INSERT INTO `userlog` VALUES (10, 8, '127.0.0.1', '2019-09-08 13:29:01');
INSERT INTO `userlog` VALUES (11, 9, '127.0.0.1', '2019-09-08 18:59:08');
INSERT INTO `userlog` VALUES (12, 1, '127.0.0.1', '2019-09-08 22:33:43');
INSERT INTO `userlog` VALUES (13, 1, '127.0.0.1', '2019-09-08 22:35:29');

SET FOREIGN_KEY_CHECKS = 1;
