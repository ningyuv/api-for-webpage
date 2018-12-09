/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 09/12/2018 15:57:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `downloadMethod` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `download` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (1, 'Microsoft Office', '../images/office.png', '安装问题\r\n因为有其他版本的 Office 而无法安装\r\n这种错误有很多案例，因为微软没有设定好卸载程序崩溃恢复功能，导致系统误认为Office 2003已经卸载，而无法删除注册表项，导致其他版本的Office无法安装。\r\n解决问题的方法：\r\n1.找到当初用来安装的Office 安装包，进入后选择卸载清理。\r\n2.如果是找不到安装包或者连卸载也出现错误，那么可以到网上下载“Office 2003顽固卸载”进入DOS系统后等待备份注册表，等待备份完毕后按1清除数据。（如果还是不行，也可以按2或其他按键修复）\r\n也可以来到Microsoft网站选择支持进行搜索，可以下载一个Microsoft Fix it文件。', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '建议使用迅雷进行下载', 'ED2K下载', '电脑办公');
INSERT INTO `articles` VALUES (7, '3DS MAX', '../images/3dsmax.jpg', '\n3DS MAX\n软件介绍\n3D Studio Max，常简称为3d Max或3ds MAX，是Discreet公司开发的（后被Autodesk公司合并）基于PC系统的三维动画渲染和制作软件。其前身是基于DOS操作系统的3D Studio系列软件。在Windows NT出现以前，工业级的CG制作被SGI图形工作站所垄断。3D Studio Max + Windows NT组合的出现一下子降低了CG制作的门槛，首先开始运用在电脑游戏中的动画制作，后更进一步开始参与影视片的特效制作，例如X战警II，最后的武士等。在Discreet 3Ds max 7后，正式更名为Autodesk 3ds Max 最新版本是3ds max 2019！\n \n软件优势\n性价比高\n3DS MAX有非常好的性能价格比，它所提供的强大的功能远远超过了它自身低廉的价格，一般的制作公司就可以承受的起，这样就可以使作品的制作成本大大降低，而且它对硬件系统的要求相对来说也很低，一般普通的配置已经就可以满足学习的需要了，我想这也是每个软件使用者所关心的问题。\n使用者多，便于交流\n在世界范围内拥有最多的使用者，便于交流，网络上的教程也很多，随着互联网的普及，关于3D MAX的论坛在国内也相当火爆。\n上手容易\n其次也是初学者比较关心的问题就是 3D MAX 是否容易上手，这一点你可以完全放心，3D MAX的制作流程十分简洁高效，可以使你很快的上手，所以先不要被它的大堆命令吓倒，只要你的操作思路清晰上手是非常容易的,后续的高版本中操作性也十分的简便，操作的优化更有利于初学者学习。\n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '室内/外设计');
INSERT INTO `articles` VALUES (8, 'Adobe After Effects', '../images/AE.png', '\nAdobe After Effects\n软件介绍\nAdobe After Effects简称“AE”是Adobe公司推出的一款图形视频处理软件，适用于从事设计和视频特技的机构，包括电视台、动画制作公司、个人后期制作工作室以及多媒体工作室。属于层类型后期软件。\nAdobe After Effects软件可以帮助您高效且精确地创建无数种引人注目的动态图形和震撼人心的视觉效果。利用与其他Adobe软件无与伦比的紧密集成和高度灵活的2D和3D合成，以及数百种预设的效果和动画，为您的电影、视频、DVD和Macromedia Flash作品增添令人耳目一新的效果。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '影视动画');
INSERT INTO `articles` VALUES (9, 'Adobe Animate', '../images/AN.png', '\nAdobe Animate\n软件介绍\nAnimate CC 由原Adobe Flash Professional CC 更名得来，2015年12月2日：Adobe [1]  宣布Flash Professional更名为Animate CC，在支持Flash SWF文件的基础上，加入了对HTML5的支持。 [2]  并在2016年1月份发布新版本的时候，正式更名为“Adobe Animate CC”，缩写为An。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '网页设计');
INSERT INTO `articles` VALUES (10, 'Adobe Audition', '../images/AU.jpg', '\nAdobe Audition\n软件介绍\nAdobe Audition是一个专业音频编辑和混合环境，原名为Cool Edit Pro. 被Adobe公司收购后，改名为Adobe Audition。Audition专为在照相室、广播设备和后期制作设备方面工作的音频和视频专业人员设计，可提供先进的音频混合、编辑、控制和效果处理功能。\n最多混合 128 个声道，可编辑单个音频文件，创建回路并可使用 45 种以上的数字信号处理效果。Audition 是一个完善的多声道录音室，可提供灵活的工作流程并且使用简便。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '影视动画');
INSERT INTO `articles` VALUES (11, 'AutoCAD', '../images/autocad.png', '\nAutoCAD\n软件优势\n平滑移植\n移植现在更易于管理。新的移植界面将 AutoCAD 自定义设置组织为您可以从中生成移植摘要报告的组和类别。\nPDF 支持\n您可以将几何图形、填充、光栅图像和 TrueType 文字从 PDF 文件输入到当前图形中。PDF 数据可以来自当前图形中附着的 PDF，也可以来自指定的任何 PDF 文件。数据精度受限于 PDF 文件的精度和支持的对象类型的精度。某些特性（例如 PDF 比例、图层、线宽和颜色）可以保留。\n共享设计视图\n您可以将设计视图发布到 Autodesk A360 内的安全、匿名位置。您可以通过向指定的人员转发生成的链接来共享设计视图，而无需发布 DWG 文件本身。支持的任何 Web 浏览器提供对这些视图的访问，并且不会要求收件人具有 Autodesk A360 帐户或安装任何其他软件。支持的浏览器包括 Chrome、firefox 和支持 WebGL 三维图形的其他浏览器。\n关联的中心标记和中心线\n您可以创建与圆弧和圆关联的中心标记，以及与选定的直线和多段线线段关联的中心线。出于兼容性考虑，此新功能并不会替换您当前的方法，只是作为替代方法提供。\n协调模型：对象捕捉支持\n您可以使用标准二维端点和中心对象捕捉在附着的协调模型上指定精确位置。此功能仅适用于 64 位 AutoCAD。\n用户界面\n已添加了几种便利条件来改善用户体验。\n在多个用于附着文件以及保存和打开图形的对话框中扩展了预览区域。\n可以启用新的 LTGAPSELECTION 系统变量来选择非连续线型间隙中的对象，就像它们已设置为连续线型一样。\n您可以使用 CURSORTYPE 系统变量选择是在绘图区域中使用 AutoCAD 十字光标，还是使用 Windows 箭头光标。\n您可以在“选项”对话框的“显示”选项卡中指定基本工具提示的延迟计时。\n您可以轻松地将三维模型从 AutoCAD 发送到 Autodesk Print Studio，以便为三维打印自动执行最终准备。Print Studio 支持包括 Ember、Autodesk 的高精度、高品质（25 微米表面处理）制造解决方案。此功能仅适用于 64 位 AutoCAD。\n性能增强功能\n已针对渲染视觉样式（尤其是内含大量包含边和镶嵌面的小块的模型）改进了 3DORBIT 的性能和可靠性。\n二维平移和缩放操作的性能已得到改进。\n线型的视觉质量已得到改进。\n通过跳过对内含大量线段的多段线的几何图形中心 (GCEN） 计算，从而改进了对象捕捉的性能。\n下载时请使用迅雷等支持ed2k下载功能的下载软件\n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '百度网盘', '室内/外设计');
INSERT INTO `articles` VALUES (12, 'Axure RP', '../images/axure.png', '\nAxure RP\n软件介绍\nAxure RP是一款专业的快速原型设计工具。Axure（发音：Ack-sure），代表美国Axure公司；RP则是Rapid Prototyping（快速原型）的缩写。\nAxure RP是美国Axure Software Solution公司旗舰产品，是一个专业的快速原型设计工具，让负责定义需求和规格、设计功能和界面的专家能够快速创建应用软件或Web网站的线框图、流程图、原型和规格说明文档。作为专业的原型设计工具，它能快速、高效的创建原型，同时支持多人协作设计和版本控制管理。\nAxure RP的使用者主要包括商业分析师、信息架构师、产品经理、IT咨询师、用户体验设计师、交互设计师、UI设计师等，另外，架构师、程序员也在使用Axure。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '网页设计');
INSERT INTO `articles` VALUES (13, 'Adobe Dreamweaver', '../images/DW.png', '\nAdobe Dreamweaver\n软件介绍\nAdobe Dreamweaver，简称“DW”，中文名称 \"梦想编织者\"，最初为美国MACROMEDIA公司开发，2005年被Adobe公司收购。DW是集网页制作和管理网站于一身的所见即所得网页代码编辑器。利用对 HTML、CSS、JavaScript等内容的支持，设计师和程序员可以在几乎任何地方快速制作和进行网站建设。\nAdobe Dreamweaver使用所见即所得的接口，亦有HTML（标准通用标记语言下的一个应用）编辑的功能，借助经过简化的智能编码引擎，轻松地创建、编码和管理动态网站。访问代码提示，即可快速了解 HTML、CSS 和其他Web 标准。使用视觉辅助功能减少错误并提高网站开发速度。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '网页设计');
INSERT INTO `articles` VALUES (14, 'Adobe Flash', '../images/FL.jpg', '\nAdobe Flash\n软件介绍\nFlash是由macromedia公司推出的交互式矢量图和 Web 动画的标准，由Adobe公司收购。做Flash动画的人被称之为闪客。网页设计者使用 Flash 创作出既漂亮又可改变尺寸的导航界面以及其他奇特的效果。Flash的前身是Future Wave公司的Future Splash，是世界上第一个商用的二维矢量动画软件，用于设计和编辑Flash文档。1996年11月，美国Macromedia公司收购了Future Wave，并将其改名为Flash。后又于2005年12月3日被Adobe公司收购。Flash通常也指Macromedia Flash Player（现Adobe Flash Player）。2012年8月15日，Flash退出Android平台，正式告别移动端。2015年12月1日，Adobe将动画制作软件Flash professional CC2015升级并改名为Animate CC 2015.5，从此与Flash技术划清界限。\n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '网页设计');
INSERT INTO `articles` VALUES (15, 'Adobe Illustrator', '../images/Illustrator.jpg', '\nAdobe Illustrator\n软件介绍\nAdobe illustrator，常被称为“AI”，是一种应用于出版、多媒体和在线图像的工业标准矢量插画的软件。\n作为一款非常好的矢量图形处理工具，该软件主要应用于印刷出版、海报书籍排版、专业插画、多媒体图像处理和互联网页面的制作等，也可以为线稿提供较高的精度和控制，适合生产任何小型设计到大型的复杂项目。\n它是一款专业图形设计工具，提供丰富的像素描绘功能以及顺畅灵活的矢量图编辑功能，能够快速创建设计工作流程。借助Expression Design，可以为屏幕/网页或打印产品创建复杂的设计和图形元素。 它支持许多矢量图形处理功能，拥有很多拥护者，也经历了时间的考验，因此人们不会随便就放弃它而选用微软的Expression Design。提供了一些相当典型的矢量图形工具，诸如三维原型（primitives）、多边形（polygons）和样条曲线（splines），一些常见的操作从这里都能被发现。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '平面设计');
INSERT INTO `articles` VALUES (16, 'Adobe InDesign', '../images/indesign.jpg', '\nAdobe InDesign\n软件介绍\nInDesign软件是一个定位于专业排版领域的设计软件， 是面向公司专业出版方案的新平台，由Adobe公司于1999年9月1日发布。它是基于一个新的开放的面向对象体系，可实现高度的扩展性，还建立了一个由第三方开发者和系统集成者可以提供自定义杂志、广告设计、目录、零售商设计工作室和报纸出版方案的核心。可支持插件功能。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '平面设计');
INSERT INTO `articles` VALUES (17, 'Adobe Lightroom', '../images/lightroom.jpg', '\nAdobe Lightroom\n软件介绍\nAdobe Photoshop Lightroom是Adobe 研发的一款以后期制作为重点的图形工具软件，是当今数字拍摄工作流程中不可或缺的一部分。其增强的校正工具、强大的组织功能以及灵活的打印选项可以帮助您加快图片后期处理速度，将更多的时间投入拍摄。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '平面设计');
INSERT INTO `articles` VALUES (18, 'Lumion', '../images/lumion.jpg', '\nVray\n软件介绍\nAct-3D 的技术总监Remko Jacobs说，“我相信我们创造了非常特别的东西。这个软件的最大优点就在于人们能够直接预览并且节省时间和精力。”\nAct-3D刚刚发布了关于即将到来的建筑可视化软件Lumion的更多细节。Lumion是一个实时的3D可视化工具，用来制作电影和静帧作品，涉及到的领域包括建筑、规划和设计。它也可以传递现场演示。Lumion的强大就在于它能够提供优秀的图像，并将快速和高效工作流程结合在了一起，为你节省时间、精力和金钱。\n人们能够直接在自己的电脑上创建虚拟现实。通过渲染高清电影比以前更快，Lumion大幅降低了制作时间。视频演示了你可以在短短几秒内就创造惊人的建筑可视化效果。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '室内/外设计');
INSERT INTO `articles` VALUES (21, '微PE工具箱', '../images/PE.png', '全能的安装程序\r\n微PE的智能EXE安装包使得WinPE能够灵活地安装到系统开机启动项、制作可启动U盘、移动硬盘、生成ISO镜像。\r\n全面并完美地支持各个操作系统，甚至是在最新的UEFI启动的系统。\r\n我们致力于让复杂的技术操作简单化，让维护效率迅速提升。安装PE从此变得特别简单。\r\n \r\n完整并精简的内核\r\n为了创造一个功能完整、体积更小的Windows子系统，微PE做出了推进行业发展的努力。\r\n我们花了巨大的精力研究Win系统内核，精简掉了很多在WinPE维护操作中不必要的文件，并保证了功能完整不缺失，每一个MB都不浪费。\r\n我们的极致追求让一个采用Win8系统内核的WinPE在保证稳定性的前提下做到了业界最小。\r\n \r\n性价比超高的第三方工具合集\r\n为了让我们在PE中能够完成更多的维护操作，我们甄选了一大批备受好评的维护型工具软件，这些软件均来自经验丰富的开发者，每个都很好用。\r\n同时我们对全部软件都进行了精简和压缩适配，在保证功能完整的情况下，减小了存储和传输的成本。\r\n我们的这些努力使微PE成为唯一一个不但内核小，而且工具全的PE工具箱，堪称精华中的精华。', '简体中文', 'WinXP/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '电脑办公');
INSERT INTO `articles` VALUES (22, 'Adobe Photoshop', '../images/photoshop.png', '\nAdobe Photoshop\n软件介绍\nAdobe Photoshop，简称“PS”，是由Adobe Systems开发和发行的图像处理软件。\nPhotoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以有效地进行图片编辑工作。ps有很多功能，在图像、图形、文字、视频、出版等各方面都有涉及。\n2003年，Adobe Photoshop 8被更名为Adobe Photoshop CS。2013年7月，Adobe公司推出了新版本的Photoshop CC，自此，Photoshop CS6作为Adobe CS系列的最后一个版本被新的CC系列取代。\nAdobe支持Windows操作系统 、安卓系统与Mac OS， 但Linux操作系统用户可以通过使用Wine来运行Photoshop。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '平面设计');
INSERT INTO `articles` VALUES (23, 'Adobe Premiere', '../images/premiere.jpg', '\nAdobe Premiere\n软件介绍\nAdobe Premiere是一款常用的视频编辑软件，由Adobe公司推出。现在常用的版本有CS4、CS5、CS6、CC 2014、CC 2015、CC 2017、CC 2018以及CC2019版本。Adobe Premiere是一款编辑画面质量比较好的软件，有较好的兼容性，且可以与Adobe公司推出的其他软件相互协作。目前这款软件广泛应用于广告制作和电视节目制作中。 其最新版本为Adobe Premiere Pro CC 2019。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '影视动画');
INSERT INTO `articles` VALUES (24, 'Microsoft Project', '../images/project.png', '\nMicrosoft Project\n       &nbspMicrosoft Project 不仅可以快速、准确地创建项目计划，而且可以帮助项目经理实现项目进度、成本的控制、分析和预测，使项目工期大大缩短，资源得到有效利用，提高经济效益。\n        软件设计目的在于协助专案经理发展计划、为任务分配资源、跟踪进度、管理预算和分析工作量。\n        第一版微软Project 为微软Project for Windows 95，发布于1995年。其后版本各于1998, 2000, 2003，2006和2012年发布。\n        本应用程序可产生关键路径日程表——虽然第三方ProChain和Spherical Angle也有提供关键链关联软件。日程表可以以资源标准的，而且关键链以甘特图形象化。另外，Project可以辨认不同类别的用户。这些不同类的用户对专案、概观、和其它资料有不同的访问级别。自订物件如行事历、观看方式、表格、筛选器和字段在企业领域分享给所有用户。\n下载时请使用迅雷等支持ed2k下载功能的下载软件\n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '建议使用迅雷进行下载', 'ED2K下载', '电脑办公');
INSERT INTO `articles` VALUES (25, 'SketchUp', '../images/sketchup.jpg', '\nVray\n软件介绍\nSketchup是一套直接面向设计方案创作过程的设计工具，其创作过程不仅能够充分表达设计师的思想而且完全满足与客户即时交流的需要，它使得设计师可以直接在电脑上进行十分直观的构思，是三维建筑设计方案创作的优秀工具。\nSketchUp是一个极受欢迎并且易于使用的3D设计软件，官方网站将它比喻作电子设计中的“铅笔”。它的主要卖点就是使用简便，人人都可以快速上手。并且用户可以将使用SketchUp创建的3D模型直接输出至Google Earth里，非常的酷！@Last Software公司成立于2000年，规模较小，但却以SketchUp而闻名。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '室内/外设计');
INSERT INTO `articles` VALUES (26, 'Microsoft Visio', '../images/visio.png', '\nMicrosoft Visio\n       &nbspOffice Visio 是office软件系列中的负责绘制流程图和示意图的软件，是一款便于IT和商务人员就复杂信息、系统和流程进行可视化处理、分析和交流的软件。使用具有专业外观的 Office Visio 图表，可以促进对系统和流程的了解，深入了解复杂信息并利用这些知识做出更好的业务决策。\n       &nbspMicrosoft Office Visio帮助您创建具有专业外观的图表，以便理解、记录和分析信息、数据、系统和过程。\n        大多数图形软件程序依赖于结构技能。然而，在您使用 Visio 时，以可视方式传递重要信息就像打开模板、将形状拖放到绘图中以及对即将完成的工作应用主题一样轻松。Office Visio 2010中的新增功能和增强功能使得创建 Visio 图表更为简单、快捷，令人印象更加深刻。\n下载时请使用迅雷等支持ed2k下载功能的下载软件\n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '建议使用迅雷进行下载', 'ED2K下载', '电脑办公');
INSERT INTO `articles` VALUES (27, 'Vray', '../images/vray.png', '\nVray\n软件介绍\nVRay是由chaosgroup和asgvis公司出品，中国由曼恒公司负责推广的一款高质量渲染软件。VRay是目前业界最受欢迎的渲染引擎。基于V-Ray 内核开发的有VRay for 3ds max、Maya、Sketchup、Rhino等诸多版本，为不同领域的优秀3D建模软件提供了高质量的图片和动画渲染。方便使用者渲染各种图片。\nVRay渲染器提供了一种特殊的材质——VrayMtl。在场景中使用该材质能够获得更加准确的物理照明（光能分布），更快的渲染，反射和折射参数调节更方便。使用VrayMtl，你可以应用不同的纹理贴图，控制其反射和折射，增加凹凸贴图和置换贴图，强制直接全局照明计算，选择用于材质的BRDF。\n \n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '百度网盘', '网盘下载', '室内/外设计');
INSERT INTO `articles` VALUES (28, 'Windows 系统', '../images/windows.png', '\n本章收录了WinXP到Win10的桌面系统\nWindows 7 为简易版、家庭普通版、家庭高级版、企业版、旗舰版合集，可在安装时选择版本\nWindows 10 为Windows系列最后一款以版本号命名的系统，今后微软将以更新的形式推出新版系统，本站仅收录最新版系统（当前为1809版）\n如何您想获得旧版本的Windows 10系统请移步到MSDN (https://msdn.itellyou.cn/)\n下载时请使用迅雷等支持ed2k下载功能的下载软件\n', '简体中文', 'WinXP/WinVista/Win7/Win8/Win8.1/Win10', '建议使用迅雷等支持ed2k的软件进行下载', 'ED2K下载', '电脑办公');

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES (1, 'Office 2003 标准版', 'ed2k://|file|sc_office_2003_std.iso|429031424|DB59D0F8CC31EF72CC15D675FC9B7C34|/', NULL, 1);
INSERT INTO `links` VALUES (2, 'Office 2003 企业专业版', 'ed2k://|file|sc_office_2003_pro.iso|616847360|AB7DEC602B533F9DF8A04AAB1B27C213|/', NULL, 1);
INSERT INTO `links` VALUES (3, 'Office 2007 标准版 x86', 'ed2k://|file|zh-hans_office_standard_2007_x86_cd_x12-18931.iso|528621568|8BC9FD5DB21A3A93E10EF151BE6EF229|/', NULL, 1);
INSERT INTO `links` VALUES (4, 'Office 2007 专业版', 'ed2k://|file|cn_office_professional_2007_cd_X12-42319.iso|632324096|74DE8A6B2FDF7932809AB8A6B997EF63|/', NULL, 1);
INSERT INTO `links` VALUES (5, 'Office 2007 专业版 Plus', 'ed2k://|file|cn_office_professional_plus_2007_dvd_X12-38713.iso|694059008|CFAE350F8A9028110D12D61D9AEC1315|/', NULL, 1);
INSERT INTO `links` VALUES (6, 'Office 2007 企业版', 'ed2k://|file|cn_office_enterprise_2007_DVD_VL_X12-19567.iso|792221696|CDFFBCB61F4DD3C75E9DFCE89F41C6CB|/', NULL, 1);
INSERT INTO `links` VALUES (7, 'Office 2007 旗舰版', 'ed2k://|file|cn_office_ultimate_2007_DVD_X12-22271.iso|763938816|5507C6CCF4C1503A8A682D78AC05B87B|/', NULL, 1);
INSERT INTO `links` VALUES (8, 'Office 2010 标准版', 'ed2k://|file|cn_office_standard_2010_with_sp1_x86_dvd_731077.iso|2628749312|38672C85E63F1DE8D00B5867CBE97CB9|/', NULL, 1);
INSERT INTO `links` VALUES (9, 'Office 2010 专业版', 'ed2k://|file|cn_office_professional_plus_2010_with_sp1_x86_x64_732114.iso|2939512832|7A118C7E70D022C54D27E6C3B9C72C36|/', NULL, 1);
INSERT INTO `links` VALUES (10, 'Office 2013 专业版', 'ed2k://|file|cn_office_professional_plus_2013_with_sp1_x86_and_x64_dvd_3921921.iso|1838749696|C2C7DCB43293252480A32F91F21DE3B3|/', NULL, 1);
INSERT INTO `links` VALUES (11, 'Office 2016 专业版', 'ed2k://|file|cn_office_professional_plus_2016_x86_x64_dvd_6969182.iso|2588266496|27EEA4FE4BB13CD0ECCDFC24167F9E01|/', NULL, 1);
INSERT INTO `links` VALUES (12, 'Office 2019 专业版', 'ed2k://|file|cn_office_professional_plus_2019_x86_x64_dvd_5e5be643.iso|3775004672|1E4FFA5240F21F60DC027F73F1C62FF4|/', NULL, 1);
INSERT INTO `links` VALUES (35, '3DS MAX 2010', 'https://pan.baidu.com/s/1boHIs0Z', 'jixn', 7);
INSERT INTO `links` VALUES (36, '3DS MAX 2011', 'http://pan.baidu.com/s/1i4VRYk9', 'k8i7', 7);
INSERT INTO `links` VALUES (37, '3DS MAX 2012', 'https://pan.baidu.com/s/1c1PhJHI', '4rwg', 7);
INSERT INTO `links` VALUES (38, '3DS MAX 2013 x86', 'https://pan.baidu.com/s/1wFlCZauG5_-WTE04aVHR3g', 'f2uc', 7);
INSERT INTO `links` VALUES (39, '3DS MAX 2013 x64', 'https://pan.baidu.com/s/1o8Cm0kU', 'b7bj', 7);
INSERT INTO `links` VALUES (40, '3DS MAX 2014 x64', 'https://pan.baidu.com/s/1bo8oS9p', '764g', 7);
INSERT INTO `links` VALUES (41, '3DS MAX 2015 x64', 'https://pan.baidu.com/s/1nvlkfjj', 'r64g', 7);
INSERT INTO `links` VALUES (42, '3DS MAX 2016 x64', 'https://pan.baidu.com/s/1gfNqan5', 'kafs', 7);
INSERT INTO `links` VALUES (43, '3DS MAX 2017 x64', 'https://pan.baidu.com/s/1Oa-AA2mNr5Ys9EbMZ4urMQ', 't17n', 7);
INSERT INTO `links` VALUES (44, '3DS MAX 2018 x64', 'https://pan.baidu.com/s/1mhBa3Ew', 'sgun', 7);
INSERT INTO `links` VALUES (45, '3DS MAX 2019 x64', 'https://pan.baidu.com/s/14HVrSxSP-sVoGHJSpAeAFQ', 'd8wk', 7);
INSERT INTO `links` VALUES (46, 'After Effects CS5 x64', 'http://pan.baidu.com/s/1cDtJfK', 'i8q2', 8);
INSERT INTO `links` VALUES (47, 'After Effects CS6 x64', 'https://pan.baidu.com/s/1miFtveg', '67ta', 8);
INSERT INTO `links` VALUES (48, 'After Effects  CC2015 x64', 'https://pan.baidu.com/s/1jKpagx4', 'v4wk', 8);
INSERT INTO `links` VALUES (49, 'After Effects  CC2017 x64', 'http://pan.baidu.com/s/1boAZAUF', 'dnv8 ', 8);
INSERT INTO `links` VALUES (50, 'After Effects  CC2018 x64', 'https://pan.baidu.com/s/1pLKCV3d', 'kp68', 8);
INSERT INTO `links` VALUES (51, 'Animate CC2017 x64', 'https://pan.baidu.com/s/1mists2O', 'ubvk ', 9);
INSERT INTO `links` VALUES (52, 'Animate CC2018 x64', 'https://pan.baidu.com/s/1o8qnqYI', 'tvu5', 9);
INSERT INTO `links` VALUES (53, 'Audition CS6 x64', 'https://pan.baidu.com/s/1nv0y5hn', 'nndv', 10);
INSERT INTO `links` VALUES (54, 'Audition CC2015 x64', 'https://pan.baidu.com/s/1kVL1uOR', 'mtsj', 10);
INSERT INTO `links` VALUES (55, 'Audition CC2017 x64', 'https://pan.baidu.com/s/1nvontS9', 'xuhb ', 10);
INSERT INTO `links` VALUES (56, 'Audition CC2018 x64', 'https://pan.baidu.com/s/1eRID1S2', 'f65e', 10);
INSERT INTO `links` VALUES (57, 'AutoCAD 2004', 'https://pan.baidu.com/s/1nw0PqE9', '79vk', 11);
INSERT INTO `links` VALUES (58, 'AutoCAD 2005', 'https://pan.baidu.com/s/1sna8W4t', 'epj1', 11);
INSERT INTO `links` VALUES (59, 'AutoCAD 2006', 'https://pan.baidu.com/s/1bqimM9T', 'c4dk', 11);
INSERT INTO `links` VALUES (60, 'AutoCAD 2007', 'https://pan.baidu.com/s/1smm3Ydn', 'cs3x', 11);
INSERT INTO `links` VALUES (61, 'AutoCAD 2008 x86', 'https://pan.baidu.com/s/1dHk0OBB', 'p4n5', 11);
INSERT INTO `links` VALUES (62, 'AutoCAD 2008 x64', 'https://pan.baidu.com/s/1mkrEfqw', 'pksi', 11);
INSERT INTO `links` VALUES (63, 'AutoCAD 2009', 'https://pan.baidu.com/s/1smpRLKD', 'r64g', 11);
INSERT INTO `links` VALUES (64, 'AutoCAD 2010 x86', 'https://pan.baidu.com/s/1nwyhbPB', 'gweb', 11);
INSERT INTO `links` VALUES (65, 'AutoCAD 2010 x64', 'https://pan.baidu.com/s/1pMvvhyj', '5yp4', 11);
INSERT INTO `links` VALUES (66, 'AutoCAD 2011 x86', 'https://pan.baidu.com/s/1qZhgu4k', 'smq7', 11);
INSERT INTO `links` VALUES (67, 'AutoCAD 2011 x64', 'https://pan.baidu.com/s/1o8Wvehc', 'gd3g', 11);
INSERT INTO `links` VALUES (68, 'AutoCAD 2012 x86', 'https://pan.baidu.com/s/1ehRpW6', 'jv86', 11);
INSERT INTO `links` VALUES (69, 'AutoCAD 2012 x64', 'https://pan.baidu.com/s/1kVm7TcF', 'wmut', 11);
INSERT INTO `links` VALUES (70, 'AutoCAD 2013 x86', 'https://pan.baidu.com/s/1jIXRqCm', 'ahn8', 11);
INSERT INTO `links` VALUES (71, 'AutoCAD 2013 x64', 'https://pan.baidu.com/s/1jHXGODK ', '4dda', 11);
INSERT INTO `links` VALUES (72, 'AutoCAD 2014 x86', 'https://pan.baidu.com/s/1o9VoYk6', 'sia4', 11);
INSERT INTO `links` VALUES (73, 'AutoCAD 2014 x64', 'https://pan.baidu.com/s/1Z21xa2rF9kgiO48R9sBHfQ', '2mnd', 11);
INSERT INTO `links` VALUES (74, 'AutoCAD 2015 x86', 'https://pan.baidu.com/s/1pMHcwpP', 'm4mv', 11);
INSERT INTO `links` VALUES (75, 'AutoCAD 2015 x64', 'https://pan.baidu.com/s/1boIvZmZ', 'v2tx', 11);
INSERT INTO `links` VALUES (76, 'AutoCAD 2016 x86', 'https://pan.baidu.com/s/1pM8S2Vp', 'kqi7', 11);
INSERT INTO `links` VALUES (77, 'AutoCAD 2016 x64', 'https://pan.baidu.com/s/1bqHyzUJ', '7kyt', 11);
INSERT INTO `links` VALUES (78, 'AutoCAD 2017 x86', 'https://pan.baidu.com/s/1bqkUTK7', 'wmi1', 11);
INSERT INTO `links` VALUES (79, 'AutoCAD 2017 x64', 'https://pan.baidu.com/s/1kVZPqmV', 'sgyp', 11);
INSERT INTO `links` VALUES (80, 'AutoCAD 2018 x86', 'https://pan.baidu.com/s/1ebdgke', 'j2wy', 11);
INSERT INTO `links` VALUES (81, 'AutoCAD 2018 x64', 'https://pan.baidu.com/s/1qZGXLi0', '27st', 11);
INSERT INTO `links` VALUES (82, 'AutoCAD 2019 x86', 'https://pan.baidu.com/s/1tuOaVvfgAOk_P28GHr4Tlw', '76bx', 11);
INSERT INTO `links` VALUES (83, 'AutoCAD 2019 x64', 'https://pan.baidu.com/s/1r5hdcs9r7TQ3JUH2SkErhw', '2hz5', 11);
INSERT INTO `links` VALUES (84, 'Axure RP 7.0', 'https://pan.baidu.com/s/1slbWmfz', 'k8rb', 12);
INSERT INTO `links` VALUES (85, 'Axure RP 8.0', 'https://pan.baidu.com/s/1qYSLkKW', 'skaw', 12);
INSERT INTO `links` VALUES (86, 'Axure RP 9.0', 'https://pan.baidu.com/s/18fMBeBB0789DHqr1fVwiyQ ', 'ttfj ', 12);
INSERT INTO `links` VALUES (87, 'Dreamweaver CS6', 'https://pan.baidu.com/s/1o7CrmC6', 'i5pn', 13);
INSERT INTO `links` VALUES (88, 'Dreamweaver CC2015 x64', 'https://pan.baidu.com/s/1kVnBey7', 'xdfc', 13);
INSERT INTO `links` VALUES (89, 'Dreamweaver CC2017 x64', 'https://pan.baidu.com/s/1qXD9cPA', 'n55k ', 13);
INSERT INTO `links` VALUES (90, 'Dreamweaver CC2018 x64', 'https://pan.baidu.com/s/1jH8vDVS', 'twsg', 13);
INSERT INTO `links` VALUES (91, 'Flash CS6', 'https://pan.baidu.com/s/1jIoZ8OI', 'craf', 14);
INSERT INTO `links` VALUES (92, 'Flash CC2015 x64', 'https://pan.baidu.com/s/1c1WoTTu', 'k4hn', 14);
INSERT INTO `links` VALUES (93, 'Illustrator CS5', 'https://pan.baidu.com/s/1qY8zH5i', 'bdhx', 15);
INSERT INTO `links` VALUES (94, 'Illustrator CS6', 'https://pan.baidu.com/s/1pLkLp6z', 'qd83', 15);
INSERT INTO `links` VALUES (95, 'Illustrator CC2015 x64', 'https://pan.baidu.com/s/1gfPDdvl', 'db46', 15);
INSERT INTO `links` VALUES (96, 'Illustrator CC2017 x86', 'https://pan.baidu.com/s/1jIpFfl8', 'ddun', 15);
INSERT INTO `links` VALUES (97, 'Illustrator CC2017 x64', 'https://pan.baidu.com/s/1i45abLb ', 'cwi8', 15);
INSERT INTO `links` VALUES (98, 'Illustrator CC2018 x86', 'https://pan.baidu.com/s/1c2cunQS ', '2jdm', 15);
INSERT INTO `links` VALUES (99, 'Illustrator CC2018 x64', 'https://pan.baidu.com/s/1c8SpjS', 'ubqt', 15);
INSERT INTO `links` VALUES (100, 'InDesign CS5', 'https://pan.baidu.com/s/1cEYnb4', 'yn8h', 16);
INSERT INTO `links` VALUES (101, 'InDesign CS6', 'https://pan.baidu.com/s/1hslFKHm ', 'dscr', 16);
INSERT INTO `links` VALUES (102, 'InDesign CC2015 x64', 'https://pan.baidu.com/s/1geQJexX', '96za', 16);
INSERT INTO `links` VALUES (103, 'InDesign CC2017', 'https://pan.baidu.com/s/1qYUeHvY', '6ykj', 16);
INSERT INTO `links` VALUES (104, 'InDesign CC2018 x64', 'https://pan.baidu.com/s/1qXMwYmC', 'hgnk', 16);
INSERT INTO `links` VALUES (105, 'lightroom 5.0', 'https://pan.baidu.com/s/1hsEMpta', 'n9as', 17);
INSERT INTO `links` VALUES (106, 'lightroom  6.0', 'https://pan.baidu.com/s/1qYuTjis', 'xqav', 17);
INSERT INTO `links` VALUES (107, 'lightroom  CC6.4 x64', 'https://pan.baidu.com/s/1gf6aPLx', '3dgn', 17);
INSERT INTO `links` VALUES (108, 'lightroom  CC7.0 x64', 'https://pan.baidu.com/s/1o8MbAKq', 'du1f', 17);
INSERT INTO `links` VALUES (109, 'Lumion 2.5', 'https://pan.baidu.com/s/1slATVWx', 'd29l', 18);
INSERT INTO `links` VALUES (110, 'Lumion 3.0 x64', 'https://pan.baidu.com/s/1c2nDPS0', 'l77r', 18);
INSERT INTO `links` VALUES (111, 'Lumion 4.0 x64', 'https://pan.baidu.com/s/1o7EN7jc', 'a8x6', 18);
INSERT INTO `links` VALUES (112, 'Lumion 4.5 x64', 'https://pan.baidu.com/s/1bpH2gYN', 'b8c2', 18);
INSERT INTO `links` VALUES (113, 'Lumion 5.0 x64', 'https://pan.baidu.com/s/1hsectMW', 'tjdf', 18);
INSERT INTO `links` VALUES (114, 'Lumion 6.0 x64', 'https://pan.baidu.com/s/1pKZKr8n', '9xgi', 18);
INSERT INTO `links` VALUES (115, 'Lumion 8.0 x64', 'https://pan.baidu.com/s/1vLInTKYWEFjHP-hQ7xOuJQ', 'fxkq', 18);
INSERT INTO `links` VALUES (128, '微PE工具箱', 'https://pan.baidu.com/s/1g_ACiENzMrFMjqJyGXI6ng', 'x46f', 21);
INSERT INTO `links` VALUES (129, 'Photoshop CS5', 'https://pan.baidu.com/s/1dEHZjxB', '90nh', 22);
INSERT INTO `links` VALUES (130, 'Photoshop CS6', 'https://pan.baidu.com/s/1c1LyU32', 'rrg9', 22);
INSERT INTO `links` VALUES (131, 'Photoshop CC2015 x86', 'https://pan.baidu.com/s/1kVGbt91', 'npgx', 22);
INSERT INTO `links` VALUES (132, 'Photoshop CC2015 x64', 'https://pan.baidu.com/s/1ge81Fr1', 'erwy', 22);
INSERT INTO `links` VALUES (133, 'Photoshop CC2017 x86', 'https://pan.baidu.com/s/1pLeF247', '26b3', 22);
INSERT INTO `links` VALUES (134, 'Photoshop CC2017 x64', 'https://pan.baidu.com/s/1mj7CIoS', 'tygy', 22);
INSERT INTO `links` VALUES (135, 'Photoshop CC2018 x86', 'https://pan.baidu.com/s/1o8XGBwQ', 'n6h6', 22);
INSERT INTO `links` VALUES (136, 'Photoshop CC2018 x64', 'https://pan.baidu.com/s/1pNr7KLX', 'qpzu', 22);
INSERT INTO `links` VALUES (137, 'Photoshop CC2019', 'https://pan.baidu.com/s/1zAQut4pUfSHoWu6UYneYGg', 'fjst', 22);
INSERT INTO `links` VALUES (138, 'Premiere CS5 x64', 'https://pan.baidu.com/s/1eS4G9l4', '8rc9', 23);
INSERT INTO `links` VALUES (139, 'Premiere CS6', 'https://pan.baidu.com/s/1qXCn8h2', 'ebwx', 23);
INSERT INTO `links` VALUES (140, 'Premiere  CC2015', 'https://pan.baidu.com/s/1jIinOvO', 'waiw', 23);
INSERT INTO `links` VALUES (141, 'Premiere  CC2017 x64', 'https://pan.baidu.com/s/1dFjJVMx', '62rg', 23);
INSERT INTO `links` VALUES (142, 'Premiere  CC2018 x64', 'https://pan.baidu.com/s/1qXCn8i4', 'ewgg', 23);
INSERT INTO `links` VALUES (143, 'Project 2003 标准版', 'ed2k://|file|cs_office_2003_project_sta.iso|423024640|B608748C49DF92D5533C0B79A969DD0F|/', NULL, 24);
INSERT INTO `links` VALUES (144, 'Project 2003 专业版', 'ed2k://|file|sc_office_2003_project_pro.iso|423288832|0EA1E18020963B76604D6F8607DB18A6|/', NULL, 24);
INSERT INTO `links` VALUES (145, 'Project 2007 标准版', 'ed2k://|file|cn_office_project_standard_2007_cd_X12-18939.iso|389980160|0E54EFD2D4A0E50DE6815BA787C52CFB|/', NULL, 24);
INSERT INTO `links` VALUES (146, 'Project 2007 专业版', 'ed2k://|file|cn_office_project_professional_2007_cd_X12-18938.iso|392437760|48C3FCBE802FDA5C8326C5A26F2A95FD|/', NULL, 24);
INSERT INTO `links` VALUES (147, 'Project 2010 标准版', 'ed2k://|file|cn_project_standard_2010_x86_516812.exe|402151768|AE4445C53060C69941D33C0CE9798364|/', NULL, 24);
INSERT INTO `links` VALUES (148, 'Project 2010 专业版', 'ed2k://|file|cn_project_standard_2010_x64_516825.exe|425107176|098058C3A09CD6DF335886765016E386|/', NULL, 24);
INSERT INTO `links` VALUES (149, 'Project 2013 专业版', 'ed2k://|file|cn_project_professional_2013_with_sp1_x86_and_x64_dvd_3911523.iso|1001801728|7106C35EB6B7EF6AA26DB23560B21393|/', NULL, 24);
INSERT INTO `links` VALUES (150, 'Project 2016 专业版', 'ed2k://|file|cn_project_professional_2016_x86_x64_dvd_6966612.iso|2588266496|DEF65A0A9B12D8A8B734528800F625D5|/', NULL, 24);
INSERT INTO `links` VALUES (151, 'Sketchup 2015 x86', 'https://pan.baidu.com/s/1hulGQG0', 'gpsg', 25);
INSERT INTO `links` VALUES (152, 'Sketchup 2015 x64', 'https://pan.baidu.com/s/1jKkqPD0', 'enxu', 25);
INSERT INTO `links` VALUES (153, 'Sketchup 2016 x86', 'https://pan.baidu.com/s/1qZTPBC4', 'gpsr', 25);
INSERT INTO `links` VALUES (154, 'Sketchup 2016 x64', 'https://pan.baidu.com/s/1dCboBk', 'er7d', 25);
INSERT INTO `links` VALUES (155, 'Sketchup 2017 x64', 'https://pan.baidu.com/s/1qZOzWhY', '9iym', 25);
INSERT INTO `links` VALUES (156, 'Sketchup 2018 x64', 'https://pan.baidu.com/s/1geLwSU3', 'qfdy', 25);
INSERT INTO `links` VALUES (157, 'Visio 2003 标准版', 'ed2k://|file|sc_office_2003_visio_std.iso|346390528|0DA3D16461BD59665EB88D6009596729|/', NULL, 26);
INSERT INTO `links` VALUES (158, 'Visio 2003 专业版', 'ed2k://|file|sc_office_2003_visio_pro.iso|365697024|1DFA2EBA79C35BD4AE6BA82838352406|/', NULL, 26);
INSERT INTO `links` VALUES (159, 'Visio 2007', 'ed2k://|file|cn_office_visio_professional_2007_cd_X12-18942.iso|436232192|DA713EB035605555704786C74CAE5BCA|/', NULL, 26);
INSERT INTO `links` VALUES (160, 'Visio 2010', 'ed2k://|file|cn_visio_2010_x86_x64_dvd_516301.iso|1032679424|9E051C3D1FAB1DCB81DF1A68D28A6C33|/', NULL, 26);
INSERT INTO `links` VALUES (161, 'Visio  Premium 2010 x86', 'ed2k://|file|SW_DVD5_Visio_Premium_2010w_SP1_W32_ChnSimp_Std_Pro_Prem_MLF_X17-75847.iso|674627584|9945A8591D1B2D185656B5B3DC2CA24B|/', NULL, 26);
INSERT INTO `links` VALUES (162, 'Visio Premium 2010 x64', 'ed2k://|file|SW_DVD5_Visio_Premium_2010w_SP1_64Bit_ChnSimp_Std_Pro_Prem_MLF_X17-75849.iso|770732032|B0BFCB2BA515B4A55936332FBD362844|/', NULL, 26);
INSERT INTO `links` VALUES (163, 'Visio 2013 专业版', 'ed2k://|file|cn_visio_professional_2013_with_sp1_x86_and_x64_dvd_3911008.iso|1099735040|EB4F690733452B45D38C0EFE9D53E7FA|/', NULL, 26);
INSERT INTO `links` VALUES (164, 'Visio 2016 专业版', 'ed2k://|file|cn_visio_professional_2016_x86_x64_dvd_6970929.iso|2588262400|52A997F3AF4E40B896C8E4677CF10E90|/', NULL, 26);
INSERT INTO `links` VALUES (165, 'Vray 1.5 for 3DS MAX 2009-2011', 'https://pan.baidu.com/s/1nvPgmcL', '77li', 27);
INSERT INTO `links` VALUES (166, 'Vray 2.0 for 3DS MAX 2008-2012', 'https://pan.baidu.com/s/1kVg4XCj', 'o7pa', 27);
INSERT INTO `links` VALUES (167, 'Vray 2.3 for 3DS MAX 2013', 'https://pan.baidu.com/s/1hsNo71y', 'g00m', 27);
INSERT INTO `links` VALUES (168, 'Vray 2.4 for 3DS MAX 2014', 'https://pan.baidu.com/s/1bJgMCm', '6kkf', 27);
INSERT INTO `links` VALUES (169, 'Vray 3.0 for 3DS MAX 2014', 'https://pan.baidu.com/s/1i46HmWP', 'qbk2', 27);
INSERT INTO `links` VALUES (170, 'Vray 3.4 for 3DS MAX 2014 x64', 'https://pan.baidu.com/s/1i59StMH', '6an3', 27);
INSERT INTO `links` VALUES (171, 'Vray 3.4 for 3DS MAX 2015 x64', 'https://pan.baidu.com/s/1min1AbA', '4nkh', 27);
INSERT INTO `links` VALUES (172, 'Vray 3.4 for 3DS MAX 2016 x64', 'https://pan.baidu.com/s/1geRXdYj', 'rkgc', 27);
INSERT INTO `links` VALUES (173, 'Vray 3.4 for SketchUp 2017 2016 2015 x64', 'https://pan.baidu.com/s/1diUZKU', '2m9g', 27);
INSERT INTO `links` VALUES (174, 'Vray 3.4 for Rhino5.0 x64', 'http://pan.baidu.com/s/1misRXaw', 'wlat', 27);
INSERT INTO `links` VALUES (175, 'Vray 3.6 for 3DS MAX 2013 x64', 'https://pan.baidu.com/s/1GH_llkQCufuTQl5Cu3gi6A', 'bs55', 27);
INSERT INTO `links` VALUES (176, 'Vray 3.6 for 3DS MAX 2014 x64', 'https://pan.baidu.com/s/1KeUumK7QUrokPzGL18gd5A', 'xkpc', 27);
INSERT INTO `links` VALUES (177, 'Vray 3.6 for 3DS MAX 2015 x64', 'https://pan.baidu.com/s/1SwhUhBX4_mw_g2TP8u9PiQ', 'h2s3', 27);
INSERT INTO `links` VALUES (178, 'Vray 3.6 for 3DS MAX 2016 x64', 'https://pan.baidu.com/s/1Fj_kgaVGBIiWoUFYuumdFQ', 'gbuv', 27);
INSERT INTO `links` VALUES (179, 'Vray 3.6 for 3DS MAX 2017 x64', 'https://pan.baidu.com/s/1o1zy1LWGe0PIE7a8cUyEtw', 'ja1j', 27);
INSERT INTO `links` VALUES (180, 'Vray 3.6 for 3DS MAX 2018 x64', 'https://pan.baidu.com/s/1KICmixVLdcN18XmWndedbw', '5xsu', 27);
INSERT INTO `links` VALUES (181, 'Windows XP', 'ed2k://|file|zh-hans_windows_xp_service_pack_3_x86_cd_x14-60563.iso|417675264|2AAB7F0CD4BE378D9113557B1D24D8D0|/', NULL, 28);
INSERT INTO `links` VALUES (182, 'Windows 7 x86 SP1', 'ed2k://|file|cn_windows_7_ultimate_with_sp1_x86_dvd_u_677486.iso|2653276160|7503E4B9B8738DFCB95872445C72AEFB|/', NULL, 28);
INSERT INTO `links` VALUES (183, 'Windows Vista x86 SP2', 'ed2k://|file|cn_windows_vista_enterprise_with_sp2_x86_dvd_x15-40257.iso|2348410880|A567A6C970038233C0B2B7F130ADEF23|/', NULL, 28);
INSERT INTO `links` VALUES (184, 'Windows Vista x64 SP2', 'ed2k://|file|cn_windows_vista_enterprise_with_sp2_x64_dvd_x15-40402.iso|3104415744|D0CF708192BF9596CC603DF53ABDB76D|/', NULL, 28);
INSERT INTO `links` VALUES (185, 'Windows 7 x64 SP1', 'ed2k://|file|cn_windows_7_ultimate_x64_dvd_x15-66043.iso|3341268992|7DD7FA757CE6D2DB78B6901F81A6907A|/', NULL, 28);
INSERT INTO `links` VALUES (186, 'Windows 8 x86 普通版', 'ed2k://|file|cn_windows_8_x86_dvd_915414.iso|2679801856|9AF10141BFD61BC66D9D6459758D7749|/', NULL, 28);
INSERT INTO `links` VALUES (187, 'Windows 8 x64 普通版', 'ed2k://|file|cn_windows_8_x64_dvd_915407.iso|3652950016|5C7F8C212BD3A1827866563773A431C2|/', NULL, 28);
INSERT INTO `links` VALUES (188, 'Windows 8 x86 专业版', 'ed2k://|file|cn_windows_8_pro_vl_x86_dvd_917720.iso|2595137536|E87CEF7B8B4EFB12B0A7397795209301|/', NULL, 28);
INSERT INTO `links` VALUES (189, 'Windows 8 x64 专业版', 'ed2k://|file|cn_windows_8_pro_vl_x64_dvd_917773.iso|3558014976|7956620A80428F37D4F2989CB5CF3B5A|/', NULL, 28);
INSERT INTO `links` VALUES (190, 'Windows 8 x86 企业版', 'ed2k://|file|cn_windows_8_enterprise_x86_dvd_917682.iso|2597502976|7B6541942A16EB54BC81E84558DF09DF|/', NULL, 28);
INSERT INTO `links` VALUES (191, 'Windows 8 x64 企业版', 'ed2k://|file|cn_windows_8_enterprise_x64_dvd_917570.iso|3560837120|8CAE8064C4B8F9CD84941B4FF4A34722|/', NULL, 28);
INSERT INTO `links` VALUES (192, 'Windows 8.1 x86 普通版', 'ed2k://|file|cn_windows_8_1_x86_dvd_2707405.iso|3055904768|B296A943F16FADFC5FFA2F1D583DCC49|/', NULL, 28);
INSERT INTO `links` VALUES (193, 'Windows 8.1 x64 普通版', 'ed2k://|file|cn_windows_8_1_x64_dvd_2707237.iso|4076017664|839CBE17F3CE8411E8206B92658A91FA|/', NULL, 28);
INSERT INTO `links` VALUES (194, 'Windows 8.1 x86 专业版', 'ed2k://|file|cn_windows_8_1_pro_vl_x86_dvd_2972620.iso|3049981952|5B396C3A0BA99617647D9AFE8403AFA5|/', NULL, 28);
INSERT INTO `links` VALUES (195, 'Windows 8.1 x64 专业版', 'ed2k://|file|cn_windows_8_1_pro_vl_x64_dvd_2971907.iso|4032598016|1FDA520B3E8880E2FB00B20439E0826E|/', NULL, 28);
INSERT INTO `links` VALUES (196, 'Windows 8.1 x86 企业版', 'ed2k://|file|cn_windows_8_1_enterprise_x86_dvd_2972257.iso|3050842112|6B60ABF8282F943FE92327463920FB67|/', NULL, 28);
INSERT INTO `links` VALUES (197, 'Windows 8.1 x64 企业版', 'ed2k://|file|cn_windows_8_1_enterprise_x64_dvd_2971863.iso|4039327744|08BAF18320B8FFC58D4C35BCC7A32012|/', NULL, 28);
INSERT INTO `links` VALUES (198, 'Windows 10 x86 1809 business edition', 'ed2k://|file|cn_windows_10_business_edition_version_1809_updated_sept_2018_x86_dvd_31238f21.iso|3665960960|10896A79FACDF39ACAA327EB4386A59C|/', NULL, 28);
INSERT INTO `links` VALUES (199, 'Windows 10 x64 1809 business edition', 'ed2k://|file|cn_windows_10_business_edition_version_1809_updated_sept_2018_x64_dvd_84ac403f.iso|5028311040|7484013AAA64C8EF414B3F78DDACF99F|/\n', NULL, 28);
INSERT INTO `links` VALUES (200, 'Windows 10 x86 1809 consumer edition', 'ed2k://|file|cn_windows_10_consumer_edition_version_1809_updated_sept_2018_x86_dvd_8c32ac6a.iso|3709065216|645A85A963F007C58B67A4FB32DE0925|/\n', NULL, 28);
INSERT INTO `links` VALUES (201, 'Windows 10 x64 1809 consumer edition', 'ed2k://|file|cn_windows_10_consumer_edition_version_1809_updated_sept_2018_x64_dvd_f7b9c8a9.iso|5085956096|226AB51B290C3C0393A6A17096CB7497|/\n', NULL, 28);

SET FOREIGN_KEY_CHECKS = 1;
