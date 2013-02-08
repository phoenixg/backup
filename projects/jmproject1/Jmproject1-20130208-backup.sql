-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 02 月 08 日 05:18
-- 服务器版本: 5.5.16
-- PHP 版本: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `jmproject1`
--

-- --------------------------------------------------------

--
-- 表的结构 `jm_cults`
--
-- 创建时间: 2013 年 02 月 08 日 04:14
-- 最后更新: 2013 年 02 月 08 日 04:14
--

CREATE TABLE IF NOT EXISTS `jm_cults` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `cult_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cult_intro_brief` text COLLATE utf8_unicode_ci,
  `cult_intro_detail` text COLLATE utf8_unicode_ci,
  `cult_establish_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cult_founder` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cult_name_abbr` varbinary(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `jm_cults`
--

INSERT INTO `jm_cults` (`id`, `cult_name`, `cult_intro_brief`, `cult_intro_detail`, `cult_establish_date`, `cult_founder`, `cult_name_abbr`) VALUES
(1, '大学生研经宣教会', '大學生研經宣教會（University Bible Fellowship，簡稱U.B.F.）是一個由韓人Samuel Lee創立的基督教教會，其信徒多為大學生，起源於1960年代的南韓。[來源請求]\r\n該教會的目標是教導大學生聖經，栽培宣教士到其他地方傳播基督教，其主要目標為中國、北韓和回教國家，[來源請求]並於2041年前，派10萬位宣教士到233個國家傳播基督教。', '大學生研經宣教會（University Bible Fellowship，簡稱U.B.F.）是一個由韓人Samuel Lee創立的基督教教會，其信徒多為大學生，起源於1960年代的南韓。[來源請求]\r\n該教會的目標是教導大學生聖經，栽培宣教士到其他地方傳播基督教，其主要目標為中國、北韓和回教國家，[來源請求]並於2041年前，派10萬位宣教士到233個國家傳播基督教。[1]\r\n争议\r\n\r\n一般人對大學生研經宣教會有两极化的反应。一位马里兰大学校园报纸的记者如此報導：“……一个令学生呈現两极化反應的组织。有些学生对該教会严重关切，而另外许多學生卻喜欢它。”[2] [3]\r\n2006年5月，《今日基督教》杂志上发表一篇读者投書，指称UBF为邪教组织。在2006年7月，该杂志又发表了該讀者收回指责的更正函[4] [5]\r\n有一些观察家和前学员描述該組織为专制、充斥辱骂、盲目崇拜，學員被鼓励切断与朋友和家人的联系，并服從組織领导人的要求。[6] [7] [8] [9]出现了这些问题在加拿大和德国的大学以及美国。[10] [11] [12] [13][14]\r\n一些大学已经限制UBF在校园內招募新人，例如伊利诺伊大学、[9]温尼伯大学、[15] 圭尔夫大学、曼尼托巴大学、[13] [16]和帝博大学。[17]\r\nUBF曾被《虐待的教堂》一書作為案例。該書发表於1991年，為羅納·恩洛斯博士所著，主要探討有“精神虐待”現象的一些基督教教会及团体。', '1960年代', 'Samuel Lee', 'UBF'),
(2, '张大卫共同体', '1996年，韩国某福音派长老会的传道人来到中国上海复旦大学，开始向那里的学生传讲圣经信息。不久之后，神的话语便在一些青年人的心中种下了关于救赎以及天国的属天盼望，并且从他们心中燃起了让中国这片属灵的荒漠成为福音泉源之地的梦想。委身成为耶稣门徒的青年们开始在广阔的中国土壤中播撒像芥菜种一样微小的福音种子。然而很快地，这项福音的事工扩展到中国内地的许多地方。更多拥有着同样异象的青年门徒被呼召并参与到这项势不可挡的青年宣教事工之中。', '2001年，耶稣青年会在北京正式成立。中国的青年宣教事工有了崭新的起点，各地青年宣教及门徒培训更加兴旺。不仅如此，一些青年门徒受到感召成为第一批源自中国的宣教士团体，被派遣到香港、美国、韩国、泰国、蒙古、印度、新加坡、澳大利亚、加拿大、葡萄牙、哈萨克斯坦、法国、马来西亚、瑞士以及英国等地，在更多的地方为耶稣基督的福音做生命的见证。直至2002年耶稣青年会有了更为长足的发展。然而神要带领耶稣青年会去的地方是有高山有低谷的地方。\r\n2007年，暴发了“香港独立调查团的事件”。香港新兴宗教研究所就基督教基本教义的问题向耶稣青年会发出质疑。之后又连带发生了“基督日报事件”。与此同时在韩国和日本一些教内人士也就最基本的基督论问题向耶稣青年会提出严肃问话。面对这些问话，不论实情如何，耶稣青年会需要面对某些圣经信息的错谬解读，并需对此事宜负不容推卸的责任，同时，更需要在神学以及教会的伦理实践上做深刻的检讨。\r\n2009年年末，经过与基督教会各界人士的交流，耶稣青年会的相关事件已经正式在韩国得到澄清。然而在香港、中国内地，还有日本，耶稣青年会需要更多的努力、耐心、诚恳和正直面对同在耶稣基督里的弟兄姐们，这也需要内地的众教会领袖，以及在香港、日本的基督教会的领袖们给予更多中肯、合乎福音信息的帮助和指引。耶稣青年会也将祈求神赐予更加成熟的属灵生命和智慧与同在耶稣基督里的弟兄姐们在圣经真理的教导上，通过基本的神学和教会伦理的实践做更加深入的交流和沟通。\r\n然而即便如此，耶稣青年会并没有因为陷入到各样的质疑之中便丢弃了它宣教的使命。2005年，耶稣青年会正式加入到WEA（世界福音联盟），作为从中国发展出来的福音派宣教团体向着更有体系，更加完善以及成熟的方向发展。现在耶稣基督的青年门徒们，在全世界20多个国家和200多个校园宣布从耶稣基督来的救恩，并开始每年派遣更多的宣教同工去到海外学习。希望以更加成熟的生命喂养各处飢饿的灵魂，并以此更加和睦地与各教会同工，实现使得中国成为福音泉源之地的盼望。\r\n时至今日，虽然经历了很多的艰难和患难，面对来自社会舆论、经济变型、教会合一等的外在压力，神却亲自引导了祂在青年人中乃至整个中国的救赎工作，没有放弃祂的青年徒们，坚定了耶稣青年会为主传福音之信心，并借着这简陋的器皿——不论是它的可爱之处，亦或可恶之处——见证了在这个时代已经渐渐失丧的圣经的权威和耶稣基督 祂自己的荣耀权柄。', '1992年', '张大卫', 'DAVIDIAN');

-- --------------------------------------------------------

--
-- 表的结构 `jm_glossary`
--
-- 创建时间: 2013 年 02 月 08 日 04:14
-- 最后更新: 2013 年 02 月 08 日 04:14
--

CREATE TABLE IF NOT EXISTS `jm_glossary` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `glossary_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `glossary_name_translated` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `glossary_intro` text COLLATE utf8_unicode_ci,
  `cult_id` int(10) DEFAULT NULL,
  `glossary_relate_id` int(20) DEFAULT NULL,
  `glossary_translator_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=240 ;

--
-- 转存表中的数据 `jm_glossary`
--

INSERT INTO `jm_glossary` (`id`, `glossary_name`, `glossary_name_translated`, `glossary_intro`, `cult_id`, `glossary_relate_id`, `glossary_translator_id`) VALUES
(1, '12', '12', 'UBF里面经常使用的数字。多数使用在<span id="anchor_112">UBF目标</span>里，比如一个针对12名<span id="anchor_69">新成员</span>的教导目标。在我的<span id="anchor_29">分支</span>，干事会指挥每个成员必须具有教导12名新成员的目标，无论该成员是否能应付这么多的新成员。注意这里的12跟<a href="http://en.wikipedia.org/wiki/G12_Vision">G12异象</a>类似，那是一间每个基督徒应该让12名新基督徒成为自己“门徒”所组成的教会成长模型的信仰。', 1, NULL, 2),
(2, '120', '120', 'UBF信徒抬高了取使徒行传1:15的经文。这一数字多数时候被用作为分支的总成员数量而制定的目标上。它还被用作人们想在他/她的整个生命中教导多少名新成员的数量目标。', 1, NULL, 2),
(3, '252 colleges in Canada', '252 所加拿大大学', '尽管这个数字并不是该国高等教育机构的精确数量，但UBF的人们将此作为在加拿大的252所大学校园招募会友的目标而祷告。', 1, NULL, 2),
(8, 'Abraham of Faith', '亚伯拉罕的信心', '用以描述成为UBF分支中已经<span id="anchor_234">深受教义熏陶的</span>首位美国土生土长的男性白人成员的术语。在UBF韩国分教会非韩籍教徒中，此人在属灵层面的排名位居首位。通常，他充当着韩国分教会管理人员的左膀右臂，经常受到赞扬，并被所有新加入者视为榜样。“亚伯拉罕的信心”这个词是由《创世记》第12章的意义衍生而来。就如上帝让亚伯拉罕离开他的家，离开他的亲人，并在上帝的指引下去一个未知之地一样，加入UBF的人也被期望放下他们的生活，全身心地投入到UBF的工作中。另见<span id="anchor_205">撒拉的信心</span>。', 1, NULL, 4),
(4, '2gm', '2gm', '缩写：<span id="anchor_207">第二代传教士</span>', 1, NULL, 2),
(7, '10000', '10000', '在中国和韩国文化中，这是一个具有重要意义的数字。（见维基百科<a href="http://en.wikipedia.org/wiki/Ten_thousand_years">该文章</a>）。这个数字多数被用作为UBF希望扶植起来的“<span id="anchor_62">家庭教会</span>”或“<span id="anchor_179">PhD牧者</span>”的祷告目标。', 1, NULL, 2),
(5, '2nd-Gen', '2nd-Gen', '缩写：<span id="anchor_207">第二代传教士</span>', 1, NULL, 2),
(6, '531 colleges in America', '531 所美国大学', '尽管这个数字并不是该国高等教育机构的精确数量，但UBF的人们将此作为在美国的531所大学校园招募会友的目标而祷告。', 1, NULL, 2),
(9, 'absolute', '绝对', '在UBF中具有积极含义的词。UBF的领袖在许多场合都愿意使用这个形容词，比如：“绝对的服从”、“绝对的态度”、“绝对的信念”。领导人常常宣称他们所解释经文是上帝的“绝对指令”，使用“绝对”这个词，是UBF领袖对他们成员灌输对纯粹性（利夫顿的八点之一，Lifton''s eight points）的需求。', 1, NULL, 4),
(10, 'accept', '接受', '（见 <span id="anchor_11">将耶稣接纳入心</span>）是UBF中经常使用的一个动词。一次，我的导师告知我有罪，并且会下地狱，因为我没有接受他对我的<span id="anchor_77">引导</span>，对食物来者不拒，包括含有咖啡因的饮料以及橙汁。在<span id="anchor_237">周日礼拜</span>的时候经常有人问：“你从今天的布道中学到了什么？”“学到/接受<span id="anchor_173">一个词</span>”这个短语是特别受人喜爱的。基本上，UBF里使用“接受”这个词的原因是他们希望会员们能够去接受告诉他们要相信的任何事物，不管那是什么。', 1, NULL, 4),
(11, 'accept Jesus into your heart', '将耶稣接纳入心', '（另作：变得<span id="anchor_234">深受教义熏陶</span>）', 1, NULL, 4),
(12, 'additional offering', '额外奉献', '（感恩奉献的UBF用语）这是一种在成员们在<span id="anchor_200">例行奉献</span>之外，期望给予额外的货币奉献。会员期望给予额外奉献的场合可以是：找到了新工作，结婚生子等。额外风险所得到的金钱与例行奉献得到的金钱其作用相同。', 1, NULL, 4),
(13, 'Advanced Thought Reform Meeting', '高级思想改良聚会', '（<span id="anchor_139">领导小组会议</span>的UBF用语）基本上，这是<span id="anchor_98">周五聚会</span>或<span id="anchor_54">小组聚会</span>的扩展版，但仅针对UBF韩国成员及其他深受教义熏陶的成员。聚会一般时长两到三个小时。首先，他们会按通常小组聚会的时间安排进行，当祈祷结束后，成员们会轮流朗读学到的章节。然后，领袖会向每个成员询问问卷的答案，并与他的下属进行谈话，询问他们的意见以及属灵层面的事情。每次领袖都会在听完最后一句话时，把它下属所提出偏离正途的想法纠正。就此，聚会研究部分就结束了。（相对于<span id="anchor_107">思想改良课程</span>及<span id="anchor_237">周日礼拜</span>的计划来说，他们的进度要提前一周。如此，其他领导这就能接受从领袖而来的正确解释，然后在来周再将这些解释教授给其他同修。）接下来，领袖会让每个成员就上周的活动作出报告，这可能包括：吸纳新成员所花的时间，努力吸纳新成员的结果，某位同修在思想改革课程上所表露的想法，同修们在这些会议上所说的，及UBF目标的进展。当每个报告都完结后，领袖会就这些报告进行评论，若有领袖不满意的报告，那么该成员将受到领袖的批评与谴责，但若成员表现超卓，该成员将受到称赞，而若某个成员的UBF目标完成了，领袖将对其表示感恩及赞美。', 1, NULL, 4),
(14, 'Amen', '阿门', '在UBF中经常使用这个词。在说的时候通常发长音的“阿”，每个UBF的祈祷都用它来结束。在大多数的UBF聚会中，不同的人在不同的场合都也可以使用。经常以一种高昂洪亮的声音说，并伴随着权威性的手势。', 1, NULL, 4),
(15, 'American', '美国人', '在UBF中这个词通常指的是一个在美国本土出生的白人。尽管与<span id="anchor_137">韩国人</span>相比，他们被当作二等公民，但就事实而言，他们是吸纳新成员的最理想选择。', 1, NULL, 4),
(16, 'Attitude', '态度', '这个词使用在UBF的个人及精神控制上，UBF的常用演讲模式就是要求人们在对待UBF活动时必须要有一种“绝对态度”。这为成员们设定了一个完美极高要求的标准，而另一用处则是UBF领导者们评估成员或同修们的“态度”。当向领袖报告他们的思想改良课程时，领袖一般会问：“他/她的态度如何？”若这位同修接受了UBF导师的教条和要求时，领袖的回答就是“不错”，不然，回答就会是“离经叛道”、“凡人的看法”或一些其他负面的“态度”。UBF成员可以在任何时候，任何理由指着一位属灵层面较低的成员有消极的“态度”，而这会被认为是一种最严厉的批评。在他们的发言中，UBF的成员经常“承认”他们“有罪”的态度，因此可以说，UBF注重态度上的罪。大多数情况下，他们只是在偏离UBF的观念上有罪，但在圣经意义方面，他们并没有罪。', 1, NULL, 4),
(17, 'Appointment', '预约', '在UBF中，这个词非常重要。UBF是一项事业，若有人一时忘记奉献了，那么预约将会使UBF交易中最重要的东西了。与某人预约一次思想改良课程的重要性价值千金，也就是说，UBF的人会有一次单方面的机会，在一个特定的时间和场合，约见一位同修，并向其展示UBF主义。然后，在那周周末，这次的约见将会记入该UBF的人头上，而那些成功的约见也一定会被记录。', 1, NULL, 4),
(18, 'Authority', '权威性', '圣经归于上帝的无上权威，以及基督及圣灵的特殊权威。也有数次记录该权威赐给了摩西，大卫，先知，施洗约翰，耶稣12门徒以及使徒保罗。然而，UBF的领导者们希望把这所有的权威加在他们自己身上，当他们扭曲圣经意义的时候，他们巧妙地把自己放在上述权威的位置上。', 1, NULL, 4),
(19, 'Bible academy', '圣经学院', '另作：<span id="anchor_119">UBF学术讨论会丛刊</span>', 1, NULL, 4),
(20, 'Bible America', '圣经美国', 'UBF常见口号，以及<span id="anchor_112">UBF目标</span>。当UBF信徒为 “圣经美国”祈祷时，他们是在为UBF主义遍布整个美国，并成为主要宗教而祈祷。', 1, NULL, 4),
(21, 'Bible center', '圣经中心', '另作：<span id="anchor_109">UBF中心</span>', 1, NULL, 4),
(22, 'Bible conference', '圣经大会', '另作：<span id="anchor_110">UBF大会</span>', 1, NULL, 4),
(23, 'Bible house', '圣经之家', '另作：<span id="anchor_109">UBF中心</span>', 1, NULL, 4),
(24, 'Bible materials', '圣经资料', '另作：<span id="anchor_117">UBF学习资料</span>', 1, NULL, 4),
(25, 'Bible study', '圣经学习', '另作：<span id="anchor_107">思想改良课程</span>', 1, NULL, 4),
(26, 'Bible symposium', '圣经研讨会', '另作：<span id="anchor_118">UBF研讨会</span>', 1, NULL, 4),
(27, 'Bible teacher', '圣经老师', '另作：<span id="anchor_120">UBF老师</span>', 1, NULL, 4),
(28, 'born again', '重生', '另作：<span id="anchor_234">深受教义熏陶</span>', 1, NULL, 4),
(29, 'Branch', '分会/分支', '（分教会的<span id="anchor_115">UBF用语</span>）当地UBF人的小组及他们见面的地方。', 1, NULL, 4),
(30, 'broken shepherd heart', '牧羊人破碎的心', '这个词很奇特，它包含了两个印象——“破碎的心”和“牧羊人的心”。这个词的主要意思是UBF吸纳新人的热忱以及思想改良、热心的UBF人说他们有颗“破碎的心”是因为他们在打电话给那些无意犯错的同修并试图将他们带回正轨，而那些活跃在吸纳新人及思想改良的同修则有一颗“牧羊人的心”，他们就像“牧羊人”一样，帮助那些精神上盲目如同迷路“羔羊”一样的同修。有时，UBF教徒祈祷能有一颗“牧羊人破碎的心”，但有时他们又被指责没有。', 1, NULL, 4),
(31, 'Brother', '弟兄', '男性<span id="anchor_69">新加入者</span>。对UBF最低级别的男性的称呼。', 1, NULL, 6),
(32, 'by faith', '依靠信仰', '（UBF韩裔成员发音作"by face"）这个词广泛地运用在修饰预言上,也就是说,UBF期望每个成员都接受比他们<span id="anchor_229">属灵秩序</span>高的人的教导与指引，不管这些教导与指引有多么的无稽、不当、怪异、带有辱骂性的或非基督徒的。UBF的领袖会故意让他的下属处于一个过分的境况，或向他们提出一些无礼的要求，然后告诉他们，他们必须“依靠信仰”来忍受。若他们能坚持下去，那么赞美必将属于他们。这个短语的作用在于，当UBF成员偏离与他们领导者的要求时，他们会感觉到他们并没有信仰上帝。因此，领导者的意愿会被视为上帝的意愿，盲目追随领袖也等同于信仰上帝。', 1, NULL, 4),
(33, 'Calling', '呼召', '指一个人的天职。<a href="http://web.archive.org/web/20071231223424/http://www.ubfsurvivor.info/ubfism.html">UBF学说</a>中，成为一名UBF人是唯一正当的呼召。有时，人们会说一些更具体的愿望，如：希望上某间大学或去某个国家。这种呼召被视为上自上帝，但实际上却是来自UBF的领导人。', 1, NULL, 4),
(34, 'campus mission', '校园使命', '对一个UBF人来说，“校园使命”等同于UBF主义，而UBF主义则被视为唯一正当的校园使命。事实上，UBF与校园使命一点关系都没有，相反，他们在大学里搜寻学生为她们及他们扭曲的需要服务。', 1, NULL, 4),
(35, 'Challenge', '挑战', '（UBF韩国人经常发音为"challengee"。）UBF经常使用的一个动词。习惯用于鼓吹和夸大UBF人员想要做什么事情的思想。不是招募，而是“挑战<span id="anchor_171">1:1的圣经战斗</span>”；不是试图早起，而是说“挑战<span id="anchor_32">依靠信心的</span><span id="anchor_82">清晨祷告</span>”。', 1, NULL, 6),
(36, 'Changed', '改变', '（UBF韩裔成员发音作"changeed"）UBF领导者描述在人们身上发生的两种变化。当一个人接受了UBF学说，那么他们就是一个“改变”了的人，这其实很准确，因为那些接受了UBF的人为了接受新的UBF自我，而扼杀了真正的自我。UBF领导者所描述的第二个变化则是一个UBF人拒绝了UBF，这样的情况视为产生了心理或精神上的背叛，从而导致拒绝UBF。事实上，这意味着当事人摆脱了UBF虚假的身份，恢复到了真正的自我。（这只是一个简单的说明，在许多时候，一个人若想要从宗教狂热中恢复到真实的自我需要几个月甚至几年。）', 1, NULL, 4),
(37, 'Chang Woo Lee', '李昌禹', '（UBF对传教士博士Samuel Lee的称呼）与<span id="anchor_204">Sara Barry</span>一块，是UBF运动的主要创始人及领导人，他是一个具有非凡魅力但却没有接受过正规理论训练的男人。（据<a href="http://web.archive.org/web/20071231223424/http://www.voy.com/60734/5/9017.html">报导</a>，他眼中的理论学位来自野鸡大学。）他已被描述成了一个病态的自恋狂，且因开设古怪的“培训”（见培训）而臭名昭著，并疯狂的敛财。他的追随者指责他命令堕胎，财政管理混乱以及进行无情的政治角力（详情见<a href="http://web.archive.org/web/20071231223424/http://rsqubf.fortunecity.net/discussion.html">RSQUBF档案</a>）。到目前为止，UBF仍然宣称Lee没有做错什么，这个组织也充满了他这样的人。尽管他在2002年1月8日死于家中失火，但哪怕是现在他行为仍然在很大程度上影响着UBF。', 1, NULL, 4),
(38, 'Chapter', '分会/分支', '另作：<span id="anchor_29">分教教会</span>', 1, NULL, 4),
(39, 'Church', '教会', '（UBF韩裔成员发音作"chorch"）在UBF中这个词含有强烈的贬义含义。UBF认为他们是一个“校园事工”但不是一个教会，UBF认为所有的教会都是“无意义的”、“虚假的”，并且是撒旦工作的地方。UBF中常见的修辞是“教会基督徒”,当UBF使用这个词时，一般指那些去教会的基督徒没有活在基督世界里，因为他们只去教会，并装模作样的做一个“基督徒”。所以，除了UBF的基督徒都是假的。有人问，如果UBF不是教会，那是什么？是一个校园事工吗？UBF以大学或学院为目标，但他们大部分的成员却不是大学生。它是一个户外传教组织吗？不,因为像CCC或IVCF这类的户外传教组织鼓励他们的成员参与主流的基督教会。相反，UBF不允许他们的成员参与除他们之外的宗教聚会。（UBF拥有其独立的礼拜仪式。）所以，很明显，不管他们自己是怎么想的，UBF就是一个教会。', 1, NULL, 4),
(40, 'Christian', '基督徒', 'UBF认为只有UBF主义才是真正的基督教精神，只有他们才能完全展现基督精神。所以，只有UBF人称的上是基督徒，而其他的则是“假基督徒”或“非信徒”。', 1, NULL, 4),
(41, 'closed-mind [sic]', '思想闭塞 [攻击性言论]', '形容词，形容不愿接受UBF学说的人。例如，当UBF成员未能强迫一位同修服从他时，他会“<span id="anchor_182">祈祷</span>”那位同修“为自己思想闭塞而<span id="anchor_196">忏悔</span>”。', 1, NULL, 4),
(42, 'Commitment', '委身', 'UBF向其成员不断为组织委身施压。因此，这就是为什么我们常看到“委身”在使用的同时还具有褒义涵义。例如，他们会强迫同修填写大会“登记表”，就算这位同修不想去，他们也得填写这份表作为他们为上帝的“委身”，然后，若这位同修不去的话他就会感到内疚。在2003年夏天，那个所谓的“教徒研讨会”结束后，我所在的分教会里，有一位资深成员说过，他发现作为一个UBF人，必须要“终生”奉献。', 1, NULL, 4),
(43, 'common life', '共同生活', '用以描述UBF成员之间的集居生活。为了这个目的，许多分教教会拥有住所。其目的是在于让那些有希望的同修与一些资深的UBF人住在一块，所以，那些同修们会从一般家庭或集体里面搬到UBF的环境中来。', 1, NULL, 4),
(44, 'conference preparation', '大型聚会筹备', '指在重要的<span id="anchor_110">UBF大会</span>前的一段时期，一般在两到四周。在这段之内，会练习一些特殊的歌曲，会进行一些<span id="anchor_223">演讲稿</span>的撰写以及<span id="anchor_224">训练</span>，同时也有<span id="anchor_152">布道</span>及<span id="anchor_81">舞台剧</span>的训练。通常在这个时间段也会强调<span id="anchor_83">UBF每日清晨集会</span>，为大会出席率的目标数字而祈祷。', 1, NULL, 4),
(45, 'council meeting', '委员会', '一些分教会有年度事务会议，并只允许<span id="anchor_234">深受教义熏陶的</span>UBF分教成员参加。我所在的分教教会在一月举行，在这时，分教教会会回顾去年完成（或没完成）的进度，制定新一年的目标以及预算评估，新一年经准核的评估。分教教会的管理者会把所有事物都计划好，且所有参与会的人都在他/她的掌控之下，所以，财政计划不会有质疑。我的印象时，许多UBF分教教会要么没有这样的会议，要么资料很模糊。', 1, NULL, 4),
(46, 'Coworker', '同工', '另作：<span id="anchor_116">UBF的配偶</span>', 1, NULL, 4),
(47, 'Cross', '十字架', '就如UBF的期望一样，基督十字架的沉重的方面被强调了，而解放的质量则被最小化了。UBF人受到的教育时，我们必须带着的十字架有两种，一种是“自我十字架”，这可以理解为使我们生活在地球上的负担，如：工作、纳税、上学、购买必需品等。而另一个则更重要，是“十字架的<span id="anchor_160">使命</span>”，很明显，这指的是必须参加且不断增加负担的UBF活动。注意，这样教学的片面结果时，生命分成了“世俗”以及“神圣”两个部分，但这样的教学是错误的。', 1, NULL, 4),
(48, 'God', '上帝', 'UBF对上帝的认知非常奇怪。他们认为上帝就像天空中一个大型UBF机构的<span id="anchor_78">领导者</span>，或者像是超自然的<span id="anchor_37">Chang Woo Lee</span>。UBF认为上帝对个人日常事务进行干涉。考试成绩的好与坏都来源于上帝，而与个人努力学习程度无关。上帝是一个具有威慑性的存在，以保障对违反UBF准则的行为降下惩罚。同时，上帝也被认为是对那些为UBF付出巨大牺牲的人赐予福祉（好的工作、居所、婚姻、孩子，以及得以教育很多信教者）的存在。另外，UBF认为上帝会对所有不信仰UBF的人降下诅咒。这就是会有很多社会问题的原因——太多人不信仰UBF。', 1, NULL, 5),
(49, 'grace', '恩典', '（另见acefully）基督教对“恩典”的解释在UBF这里完全行不通。虽然UBF也会提及或者教导，救赎是对信仰的恩典。但是“恩典”这个概念本身从未被强调过。一般UBF会使用另外一种说法：“如恩典般的”。顺从和牺牲在UBF准则中远比接受恩典值得强调。UBF准则强调对UBF的忠诚信仰。我得以离开UBF，是因为我意识到无论我是否以UBF的标准为生活准则，上帝的恩典都会降临到我的身上。', 1, NULL, 5),
(50, 'gracefully', '恩典般地', '形容词，用以形容某件事以一种为UBF领导者所喜见的方式而做成。比如，“你所进行的<span id="anchor_152">布道</span>是犹如恩典一般的”。', 1, NULL, 5),
(51, 'great', '相当棒的', '在UBF中是一个常用的形容词，一个积极而又多重含义的术语。最普遍被用于形容一个UBF信徒的企图心——去做上帝最忠实的仆人。人们产生夸大的自我认知，认为自己是非常有神性的。比如，一个拖莱多的UBF信徒被人称作是队长杰夫，另一个称呼是万能的格雷格。', 1, NULL, 5),
(52, 'group', '小组', '（UBF所说的团契）是UBF<span id="anchor_29">分支</span>的下属团体。每一个足够规模的分支机构都会分成几个小规模的小组。每个小组都以一个单词而命名。例如，希望、挑战者、摩西。每个小组都会有一个领袖，由一个韩籍UBF信徒，或者是一个接受了<span id="anchor_234">足够充分的UBF教育</span>的信徒担任。小组组长，以及小组的构成，都是由UBF分支机构的<span id="anchor_78">领导者</span>绝对私意决定的。小组每周会开一次小组会议。小组一般会在每周日的聚会后半小时开组会。此时，小组成员围圈而坐，组长会让每位组员依次述说其从当天聚会布道中所“学习”到的内容。这是给组长一个机会，来修正组员所存有的任何不符合UBF准则的想法。小组会议过程中，会提供含糖软饮以及甜食。这个短会会以所有人分对“祈祷”而结束。', 1, NULL, 5),
(53, 'group leader', '小组领袖', '（UBF所说的团契领袖；见小组）其定义是不言自明的。', 1, NULL, 5),
(54, 'group meeting', '小组聚会', '（UBF所说的团契例会）每周一次的，由小组所有成员参加的会议。小组会议会在非周末的晚上，一般是周五晚上（见<span id="anchor_98">周五聚会</span>）举行。在小组会议的开始，组长会选择一首赞美诗，由所有出席者一起吟唱。随后，组长会指派一名信徒为小组会议而祈祷。然后所有信徒依次阅读本周前期所学习的经文（一般会是随后的周日大会上的主要内容）。然后所有组员会阅读他们所准备的演讲（有时站在讲坛上，有时坐在座位上进行）。在每个人完成之后，组长都会对其所讲内容进行讲评。讲评可能会是对所将内容某个观点的重申，或者是修正一个错误的观点，或者是表扬或批评组员的某种行为。组长也会用这个时间来对组员在上一周在招新活动中的表现进行回顾和评价。', 1, NULL, 5),
(55, 'group report', '小组汇报', '（UBF所说的团契报告，见<span id="anchor_238">主日报告</span>）<span id="anchor_52">小组</span>活动的周报，需要在每周日提交给分支机构<span id="anchor_78">领导者</span>。点击<a href="http://web.archive.org/web/20070704051941/http://www.ubfsurvivor.info/report.html">这里</a>可以阅读一份实际周报的例子。', 1, NULL, 5),
(56, 'grow', '成长', '成长为对<a href="http://web.archive.org/web/20080101164843/http://www.ubfsurvivor.info/ubfism.html">UBF主义</a>产生更深刻的认同和服从。', 1, NULL, 5),
(57, 'Hallelujah Christian', '哈利路亚基督徒', 'UBF暗语，形容肤浅的基督徒高喊“哈里路亚”来做样子，并对神性表现出过分的狂喜。一般，这一术语特指那些寻求绝对真理的五甸节派教徒。这一术语在UBF中是贬义词。', 1, NULL, 5),
(58, 'happy', '喜乐/快乐', '这一词语的使用在UBF中比较复杂。根本的原则是，如果一个人终生以UBF准则而生活，他将是喜乐的。如果一个人对UBF准则有所保留，他将是不喜乐的。UBF的领导常常吹嘘他们是多么的喜乐，哪怕他们正在经历自己所带来的痛苦。其实这只是一种掩饰，用以掩盖他们正处于十分不快乐的处境中的事实。如果你看起来并未处于依UBF准则生活而应该具有的快乐之中，那么你将被众人批评。但是，从根本上UBF会认为喜悦是一种罪。如果你沉醉于狂喜和愉悦中，人们会谴责你是一个“哈里路亚的基督徒”，或者他们会说你已经陷入了对享乐的追求之中。因此，在UBF中快乐的复杂性在于，你不能因追求快乐而快乐，但你要表现的快乐。顺便一说，一些刚入门的UBF信徒或者一些年轻的信徒，确实是在经历着快乐幸福的。他们所经历的，是UBF活动所带来了一种嗑药般的兴奋体验（这在精神控制的团体中并非罕见）。这样的兴奋体验在一年左右后会逐渐消失。', 1, NULL, 5),
(59, 'heart', '心', 'UBF主义很大一部分就针对于控制情绪。因此，“心”这一术语理所当然地可以被以很多方式进行解读。这一术语最常被用于两种情境下。第一例是应用于劝戒中：“将耶稣接纳入你的心”。当使用上述语言时劝导一个刚入教者接受UBF主义时，这个新入教者会认为，他在接受训导时产生的情绪是源于将耶稣接纳进了自己的心。UBF对“心”一词第二种常见使用的情形，是用于“心”与“脑”的对比。UBF教徒们认为，不信仰UBF的人，只是用“脑”在学习《圣经》，而不会把经文的教诲应用于生活中。而UBF教徒们将《圣经》的教诲铭刻于“心”中，并时刻遵从着它的真义。当然，这一主张并非事实，而仅仅为UBF教徒所迷信。', 1, NULL, 5),
(60, 'HNW', 'HNW', '见 神圣国度的女人', 1, NULL, 5),
(61, 'holy nation woman', '神圣国度的女人', '一个美国本土出生的白种人女性。每个UBF分支机构都有明确的数量指标，需要在该机构吸纳一定数量的HNW。她们是非常珍贵的，因为在历史上UBF一般很难吸纳到这一种群的成员。', 1, NULL, 5),
(62, 'house church', '家庭教会', '（UBF韩籍教徒发音“how-chur”）指一名UBF成员用于UBF活动的居所。很多小型UBF分支机构的会议都是在机构领导者的家中举行的。UBF领导者们意在效仿基督教。早期基督教就是在教徒家中举行集会，随后才发展出教堂作为固定的集会场所。注意，家庭教会可以有另外的含义，例如指代UBF教徒的婚姻伴侣。', 1, NULL, 5),
(63, 'humble', '谦卑', '（另见<span id="anchor_147">马槽事工</span>）一个在UBF主义中具有积极含义的术语。UBF信徒们常常吹嘘他们有多“谦卑”——他们中一般的人都不会说英语，而他们的组织规模相比于同类组织（例如红十字会）要小得多。', 1, NULL, 5),
(64, 'human', '人', '在UBF用语中是一个具有负面意义的词。根据UBF非黑即白的世界观，如果什么事情是人的，那么其就是非源于上帝的。因此，UBF教徒常常说他们摒弃了“（作为）人的努力”和“（作为）人的观点”。进而他们会盲目地追随他们的领导者，因为他们认为领导者是上帝的代言人。', 1, NULL, 5),
(65, 'humanism', '人道主义/人性主义', '（另见<span id="anchor_187">问题</span>）在UBF主义下是一个负面的，甚至带有侮辱性质的词语。这个词可以用于描述<span id="anchor_112">UBF目标</span>的情境，例如，“我想要克服自己的人性，而在生活中遵从上帝的完美计划”；这个词也可以用作指控中：“你必须为自己带有人性的想法而忏悔”。在这两种情形中，“带有人性的”用于描述任何同UBF主义不符的观点和想法。但是注意，这个词的贬义含义来源于借鉴其他教派对该词所产生的感情色彩。原教旨主义认为，世俗的人性是基督教的敌人。即使在UBF教义中人性具有与之完全不同的含义，这一暗含的贬义色彩却被借鉴并发扬成词汇本身所含之义。', 1, NULL, 5),
(66, 'image of God', '神的形象', 'UBF教徒们被鼓励用语言的形式描绘出他们在课堂上所构建的<span id="anchor_59">心中</span>的上帝形象。事实上，他们是把领导者的形象植入在了自己的心中。（想一下两句话的逻辑关系，并思考这样的逻辑关系所暗含的必然结果。）', 1, NULL, 5),
(67, 'individualism', '个人主义', '（参见问题）一个具有同“人性”和“自私”相类似的言外之意的词。通过在小组中积极扼杀任何个人主义的萌芽，UBF一直奉行着极权主义。', 1, NULL, 5),
(68, 'indoctrinate', '灌输', '（UBF所谓的教导，哺育）这一定义是不言自明的。', 1, NULL, 5),
(69, 'initiate', '新受教者', '（UBF所谓的羊羔；见<span id="anchor_31">弟兄</span>, <span id="anchor_220">姐妹</span>）指代那些受到了UBF教义影响的，但还未成为<span id="anchor_234">被足够充分教化</span>的人。', 1, NULL, 5),
(70, 'Daily Bread', '每日灵粮', '另作：<span id="anchor_111">UBF的简短灵修</span>', 1, NULL, 6),
(71, 'decision of faith', '信心的决定', 'UBF人经常谈论做出“信心的决定”。这通常指做出一个依靠盲目的信心去顺从在<span id="anchor_229">属灵秩序</span>上高一点的人的命令的决定，也指为了适应UBF的需求而做一些完全不合理的事。例如，拥有孩子的夫妻们经常做出一个“信心的决定”，离开他们的孩子而不给予正当的照顾，以便他们可以抽身参加一场UBF聚会。在聚会期间，领导们经常对那些作出“信心的决定”的人给予口头上的表扬。', 1, NULL, 6),
(72, 'delicious', '美味的', '（UBF韩国成员发音为"dee-lee-shurs"）也许因为他们的英语不好，UBF韩国的成员好像只知道一个描述食物的形容词，称为“美味的”。尤其是，当食物作为一个UBF活动的一部分而准备时，他们会积极地推销多么“美味的”食物。对于某些人而言，这是一个销售点，但就我个人而言，我不喜欢被迫吃韩国食物。', 1, NULL, 6),
(73, 'demon', '魔鬼', '（另见：<span id="anchor_84">邪恶</span>，<span id="anchor_217">罪</span>）UBF成员相信属灵的世界能积极地干预日常的生活。这个信念的一部分是许多被UBF看作为有罪的态度或活动事实上是由魔鬼控制所引起的。在UBF里被称为“魔鬼的作为”包括：“睡觉的欲望”，“自私自利”和“同性恋的欲望”。请注意，UBF信徒相信即使已经<span id="anchor_28">重生</span>的成员，他也可能会受魔鬼的控制。这个信念与正统的福音派基督教教义背道而驰。', 1, NULL, 6),
(74, 'Deny', '否定', '这里的否定指的是否定自己的一些方面。路加福音9章23节在UBF里是经常被使用的，也是经常作为主要经文。经上记着说：“耶稣又对众人说：‘若有人要跟从我，就当舍已，天天背起他的十字架来跟从我。’”（CEV）UBF的自我否定教义有两个问题。首先，他们教导你否定所有人性的欲望，以致于你基本上就变成了一个机器人。其次，他们过分强调自我否定而不强调恩典。这导致UBF成员中形成一种“虔诚的”禁欲主义。', 1, NULL, 6),
(75, 'dig out God''s word', '挖掘神的话', '一个空洞的毫无意义的短语用来充实UBF的学习过程。写出UBF问卷上的答案，记下UBF的演讲或报告，被看作是“挖掘神的话”。暗示着涉及非常严肃、有品质的圣经学习。当然，这是不正确的，作为UBF主义的核心信条之一，这是被所有公认的圣经学习形式所弃绝的。', 1, NULL, 6),
(76, 'digest', '消化/吸收', '另一个没有意义的形容词曾经给人这样的印象，UBF学习是很深的圣经学习。“深深地挖掘神的话”是经常被使用的短语，仅意味着一个人应该花费大量的时间和努力学习UBF主义。', 1, NULL, 6),
(77, 'direction', '指示', '由UBF领导发给在<span id="anchor_229">属灵位分</span>较低等级的一些人的命令。这个命令是绝对的并且可能是任意的。通常，这些“指示”是荒谬的或令人烦扰的。例如，步行半小时穿过暴风雪到达UBF大楼，和从未见过面的人结婚，放弃工作，搬家，为UBF目的到海外旅行，写一个30页的UBF演讲稿且必须在第二天早上六点交上来，中断与朋友和家人的关系，写一个UBF<span id="anchor_81">情景剧</span>的剧本，到头来却发现领导从来就没有打算使用你的剧本。', 1, NULL, 6),
(78, 'director', '执事', 'UBF<span id="anchor_29">分部</span>和其成员有关的全部事宜的最高领袖和被授权的话语传递者。执事的<span id="anchor_229">属灵位分</span>高于所有其他分部的成员，因此他可以命令任何人做任何事。', 1, NULL, 6),
(79, 'disciple', '门徒', '根据UBF主义，成为耶稣的门徒唯一的正确方法是成为一个接受<span id="anchor_234">彻底教义灌输的</span>UBF成员。', 1, NULL, 6),
(80, 'doctor', '博士', ' （UBF韩裔成员发音作"doc-tah"）UBF把获得博士学位看得具有很高的价值。那些拥有这样学位的人被赋予这个头衍。这样，拥有两个假的博士学位的<span id="anchor_37">Chang Woo Lee</span>，凭借他的信仰被赋予“传教士李博士”的称谓。', 1, NULL, 6),
(81, 'drama', '情景剧', '在UBF，情景剧指的是一种有具体剧情的戏剧，是UBF所特有的。这个剧是以夸张的动作和面部表情为特点的。它也包含对声音进行仔细地调整以获得一种“<span id="anchor_122">UBF声音</span>”。参加情景剧被认为是一种“<span id="anchor_108">训练</span>”，与对表演拥有绝对权力的主管/培训者一起进行。有一次，我接受一个特殊类型的情景剧训练。要求我写一个情景剧的剧本。当我准备上交时，UBF中的韩国人笑了并告诉我，他们从来没有打算用我的剧本，那只是为了“训练”。', 1, NULL, 6),
(82, 'early morning prayer', '晨祷', '另作：<span id="anchor_83">UBF早会</span>', 1, NULL, 6),
(83, 'early morning UBF meeting', 'UBF早会', '（UBF称之为晨祷）每天早上7点之前一段时间举行的会议，通常是在总部举行。会议包括读一段圣经，写并分享一个非常短的<span id="anchor_223">讲话</span>和祷告 （背诵<span id="anchor_112">UBF目标</span>）。这些活动的主题是由每日灵粮的书提供的，这本书的作者是<span id="anchor_204">Sara Barry</span>，所有的UBF成员必须购买这本书。一些<span id="anchor_29">分部</span>只在特殊的季节才举行这样的早会，例如在一次大型聚会的准备期。', 1, NULL, 6),
(84, 'evil', '罪恶', '（另见：<span id="anchor_73">魔鬼</span>，<span id="anchor_217">罪</span>）在UBF中，很多事情被认为是罪恶。正如一个人所预料的，一些被作为强调罪恶的事并不是圣经中所强调为罪恶的事。恰恰相反，只要不符合UBF主义的都是罪。UBF认识为罪恶的例子包括：所有UBF之外的人，所有与UBF文化不同的文化，所有与UBF主义不同的宗教信仰，所有与古典的和传统的基督教音乐不同的音乐形式，一晚上睡觉超过5个小时，参加音乐会或运动会，有业余爱好，所有约会或求偶形式。', 1, NULL, 6),
(85, 'faith', '信心', '（另见：<span id="anchor_32">依靠信心</span>和<span id="anchor_149">婚姻</span>）UBF视信心等同于无条件地服从领导。该词用于像“人的信心”这样的语境中。他们总是强调亚伯拉罕有信心（见希伯来书）和那些离开他们的“过去的生活”成为UBF成员的人有很大的“信心”。', 1, NULL, 6),
(86, 'family-centered', '以家庭为中心的', '一个贬义词，用于描述那些拥有正常健康的家庭关系，或者实际上具有任何其他关系的人。UBF宁愿它的成员和他们的家庭没有关系。因此，UBF把人们贴上“以家庭为中心的”的标签，暗示他们不是“以上帝为中心的”。马可福音2章35节这样的经文常被用来支持这个观点。实际上，基督教教义并不包含和家庭脱离关系，只含有把上帝放在第一位。', 1, NULL, 6),
(87, 'feed', '喂养', '（另作：<span id="anchor_68">教义灌输</span>）', 1, NULL, 6),
(88, 'fellowship', '团契', '（另作：<span id="anchor_52">组织</span>）', 1, NULL, 6),
(89, 'fellowship leader', '团契领袖', '（另作：<span id="anchor_53">小组领袖</span>）', 1, NULL, 6),
(90, 'fellowship meeting', '团契聚会', '（另作：<span id="anchor_54">小组聚会</span>）', 1, NULL, 6),
(91, 'fellowship report', '团契汇报', '（另作：<span id="anchor_55">小组汇报</span>）', 1, NULL, 6),
(92, 'fish', '钓鱼', '（见 钓鱼事工）', 1, NULL, 6),
(93, 'fishing ministry', '钓鱼事工', '（另作：<span id="anchor_192">招募</span>，UBF韩裔成员发音作"feeshing ministree"）', 1, NULL, 6),
(94, 'fish sheep', '钓羊羔', '（另作：<span id="anchor_192">招募</span>，UBF韩裔成员发音作"feesh-a-ship"或"feesh-a-sheep"）', 1, NULL, 6),
(95, 'fleshful', '肉体的', '用于描述特定的“<span id="anchor_84">罪恶</span>”态度或行为的形容词。包括：“睡觉的欲望“，食欲，性欲和人的野心。任何数量的这些事都被认为是罪恶。事实上，只有当这些事发展到极端时才会变成罪恶或有罪的。', 1, NULL, 6),
(96, 'flock of God', '上帝的群羊', '用来指一个分部里非韩国人成员的团体的短语。通常来说，一个分部有数字目标，例如“120只上帝的羊”，意思是他们想拥有120名非韩国人的成员。请注意，这里体现了固有的种族歧视和牧羊主义。', 1, NULL, 6),
(97, 'foxy', '狐狸似的', '（UBF韩国人发音为"fox-she"）一个贬义词，用来描述有魅力的或对异性感兴趣的女人。例如，一个分部的领袖可能会在他的<span id="anchor_152">报告</span>中哀叹，他的一个新加入者因为对一个“狐狸似的”女人感兴趣而走入歧途。基本上，使用这个词意味着，性的吸引不应该在UBF中存在。UBF期望所有的性感觉应该被压抑，一个人应该准备好随时与一个完全没有吸引力的人<span id="anchor_149">结婚</span>。', 1, NULL, 6),
(98, 'Friday meeting', '周五聚会', '一个在星期五（大多数情况下）举行的<span id="anchor_54">小组聚会</span>。他们在星期五下午6点到9点或类似的时间举行会议的原因是确保新加入者没有机会参加正常的社会生活。', 1, NULL, 6),
(99, 'fruitful', '结果实的', '基于上帝给第一个男人和女人的命令“要生养众多。”（创1：28）UBF强调获得果子。在UBF，果了主要是指UBF一个分部的成员数量，或者是对新加入者的教导的数量。圣经中关于果子的不同观点，见加拉太书5章22节。', 1, NULL, 6),
(100, 'teach', '教导', '（另作：<span id="anchor_68">灌输</span>）', 1, NULL, 7),
(101, 'teachable', '可教的', 'UBF内部行话，用于形容那种具有比较顺从的性格的学生。如果一个人不可教或是不听从别人的教训，则被称作是<span id="anchor_189">叛逆的</span>。', 1, NULL, 7),
(102, 'testimony', '见证', '（另作：<span id="anchor_223">讲话</span>）', 1, NULL, 7),
(103, 'testimony training', '见证培训', '（另作：<span id="anchor_224">演讲培训</span>）', 1, NULL, 7),
(104, 'thankful', '感恩的', NULL, 1, NULL, 7),
(105, 'thanksgiving offering', '感恩节奉献', '（另作：<span id="anchor_12">额外奉献</span>）', 1, NULL, 7),
(106, 'theology', '神学', '在UBF中，这是一个负面意义上的词汇。UBF普遍认为“UBF教授圣经，而其它地方只教授神学理论。”当然，UBF也相信上帝，因此它也有自己的神学体系。但是UBF却不愿意承认这个事实，因为一旦人们系统的去分析他们的信仰就会发现他们的信仰是矛盾的并且明显的是错误的。在理论上UBF宗教体系类似于基督教基要主义，但在实践中却是截然不同。', 1, NULL, 7),
(107, 'thought reform session', '思想改造会议', '（UBF称为圣经学习）', 1, NULL, 7),
(108, 'training', '训练', NULL, 1, NULL, 7),
(109, 'UBF center', 'UBF中心', '（UBF称为圣经中心，圣经屋）', 1, NULL, 7),
(110, 'UBF conference', 'UBF大会', '（UBF称之为圣经大会）UBF每年都会有季节性的会议。每年夏季，UBF人需要最少出席一次会议，他们的会议有时也会在其它季节举办。通常情况下他们的会议会召开3到4天，只分享一章，为一个地区或一个名族所独享。他们也会举办国际性的会议，分享UBF领导人的讯息，进行小组学习，经文写作或是一起分享戏剧、音乐，有时也会一起舞蹈---所有的这些都是由UBF成员操办的。在国际会议上，只有最有声望的UBF领导才有资格给全体会众讲道。在一些小的会议上通常也会有年少的牧羊人给大家传讲信息和做培训。那些级别较高的牧羊人通常会加入到“使命团”当中去，在别的国家参加会议。他们会参加很多的会议，基本上没有自由时间。对于那些主持会议的人员，想睡点觉几乎是不可能的。那要在国外开会的话，就需要吃饭和住宿，因此也就要缴纳一定的费用。在大会召开之前，UBF通常会提前举办“一美元”募捐活动并<span id="anchor_42">提供</span>会议的经费。', 1, NULL, 7),
(111, 'UBF devotional', 'UBF简短祷告', '（UBF称之为每日的灵粮）', 1, NULL, 7),
(112, 'UBF goal', 'UBF目标', '（UBF称为祷告主题）指人们所要祷告的目标。这样的目标会有很多，通常一些新加入者会希望受到牧养，还有一些出席者会希望在大会上做祷告。UBF人也会为克服自己的<span id="anchor_187">问题</span>做祷告，在UBF的“祷告主题”和<span id="anchor_55">小组汇报</span>中就会看到UBF真正的需要祷告的事项。', 1, NULL, 7),
(113, 'UBF Korean', 'UBF韩国人', '（UBF术语，传教士之意）', 1, NULL, 7),
(114, 'UBF marriage', 'UBF婚姻', '（UBF称为因着信心的婚姻）在UBF内部基本上所有的婚姻都是由其领导所操办的。他们通常会在一个很完美的环境和气氛中，由UBF的牧养者引导这位男性当场向那位由这位牧养者亲自挑选的女性求婚。通常这对新人根本就不认识对方。但在他们订婚之后会有一段相处的时间来了解彼此。UBF会控制着他们的结婚计划以及婚礼仪式的各个方面，也被看做是与家庭婚礼截然不同的UBF内部中的一件大事。同一地区其它分支的UBF成员大多都会出席这样的婚礼。当地的主管人员通常会主持婚礼并发表演说。（事实上，大多情况下这些领导不是很擅长主持婚礼。）其他的UBF成员或歌或舞或伴奏，也会为他们的婚礼助兴。', 1, NULL, 7),
(115, 'UBFspeak', 'UBF术语、行话', '我对于UBF术语、行话的称呼。', 1, NULL, 7),
(116, 'UBF spouse', 'UBF配偶', '（UBF称为同工）已经结了婚的UBF人不称自己的配偶为“配偶”“丈夫”或“妻子”而是“同工”。这就反映了UBF人对于婚姻的一种心态——在UBF中，一个人的配偶必须首先是他的同工，然后才是妻子或丈夫。', 1, NULL, 7),
(117, 'UBF study materials', 'UBF学习资料', '（UBF称为圣经资料）', 1, NULL, 7),
(118, 'UBF symposium', 'UBF座谈会', '（UBF称为圣经座谈会）', 1, NULL, 7),
(119, 'UBF symposium series', 'UBF座谈会系列', '（UBF称为圣经学院）', 1, NULL, 7),
(120, 'UBF teacher', 'UBF老师', '（UBF称为圣经老师）', 1, NULL, 7),
(121, 'UBF trip', 'UBF之旅', '（UBF称为传教旅行）', 1, NULL, 7),
(122, 'UBF voice', 'UBF声音', '当UBF人，以及美国人说话吞吞吐吐，非常夸张的时候经常会发错音，也会很容易把冠词省略。比方说“钓鱼传教”和“你想学圣经吗？”', 1, NULL, 7),
(123, 'uncle sheep', '大龄羊羔', '一个超过大学年龄阶段的新加入者。UBF的主要成员是年轻的大学生，而这些大龄羊羔们则为大叔辈的了。', 1, NULL, 7),
(124, 'vessel of coworkship', '同工之舰', '本质上这个词其实是没有什么意义的词，过去用来表示UBF人对合作所持有的观点。', 1, NULL, 7),
(125, 'wonderful', '奇妙的，极好的', NULL, 1, NULL, 7),
(126, 'work hard', '努力工作', '（UBF的韩国人对此的发音为：”wuk-a-hahd”）', 1, NULL, 7),
(127, 'work of God', '神的工', NULL, 1, NULL, 7),
(128, 'worldly', '世俗的，现世的', NULL, 1, NULL, 7),
(129, 'world mission', '全球大使命', NULL, 1, NULL, 7),
(130, 'world mission offering', '对全球大使命的奉献', '（另作：<span id="anchor_200">日常的奉献</span>）', 1, NULL, 7),
(131, 'Jesus', '耶稣', '（UBF韩国人发音为"Je-jurs," "Je-jus" 或 "Je-zurz"，见<span id="anchor_48">上帝</span>，<span id="anchor_37">李昌禹</span>）UBF的耶稣画像是这样子的：四分之一的基要主义的基督徒耶稣和四分之三的<span id="anchor_37">李昌禹</span>的混合体。', 1, NULL, 6),
(132, 'junk sheep', '废物羊羔', '指没有希望的或不合需要的<span id="anchor_69">新加入者</span>，通常不是指“<span id="anchor_123">大龄羊羔</span>”就是指“<span id="anchor_174">其他羊羔</span>”。', 1, NULL, 6),
(133, 'key verse', '关键经文', '（另作：<span id="anchor_222">特殊的经文</span>）', 1, NULL, 6),
(134, 'kimchee', '韩国泡菜', '放很多香料后发酵的卷心菜。韩国人对泡菜的消费毫不吝惜。我认为这是令人恶心的东西。', 1, NULL, 6),
(135, 'kingdom of priests and a holy nation', '祭司的国度和圣洁的国民', 'UBF常用的术语。UBF把自己看成是特殊的人们，称为是上帝自己执行UBF主义工作。他们试图证明他们对圣经带有暗示性的夸大自己观点是正当的，尤其是出埃及记19章6节和彼得前书2章9节。然而，请注意，新约圣经所提到大部分新教徒认为人人皆祭司。UBF并不相信人人皆祭司，因为这与他们的“<span id="anchor_229">属灵的位分</span>”的观念相冲突。', 1, NULL, 6),
(136, 'KOPHN', NULL, '（祭司的国度和圣洁的国民的缩写）', 1, NULL, 6),
(137, 'Korean', '韩国的/韩国人', '一个UBF的肯定术语。韩国的人、文化和食物都优先于美国的风俗和食物（除了巨无霸之外）。', 1, NULL, 6),
(138, 'laziness', '懒惰', '（UBF韩国人发音为"lazy-niece"）UBF里的<span id="anchor_217">罪</span>、<span id="anchor_187">难题</span>或<span id="anchor_73">魔鬼</span>。在UBF里，懒惰通常是指对于完成UBF活动缺乏热情，例如招募，教导和参加会议。有时候，用这种方式描述一个人理论方面的感观错误或者私人生活。UBF称为“懒惰”的事情在基督徒的观念中很少是被看作为实际上有罪的。', 1, NULL, 6),
(139, 'leaders'' team meeting', '领袖小组会议', '（另作：<span id="anchor_13">高级思想改良会议</span>）', 1, NULL, 6),
(140, 'liberal', '自由主义者', 'UBF中一个带有负面意义的词。自由派<span id="anchor_106">神学</span>，政治学，哲学都被视为来自于魔鬼。UBF自认为一个保守的组织，但它离任何有良好声誉的保守派基督教组织都很远。', 1, NULL, 6),
(141, 'life direction', '生活指导', NULL, 1, NULL, 6),
(142, 'life key verse', '生活关键性经文', '选择一段<span id="anchor_222">特别的经文</span>来代表一个人的一生。通常，一个UBF成员在他们<span id="anchor_234">深受教义熏陶</span>时选择这样的经文。', 1, NULL, 6),
(143, 'life testimony', '生活见证', '（另作：<span id="anchor_223">演说</span>）', 1, NULL, 6),
(144, 'love', '爱', 'UBF中对爱的最佳描述是一个人是否有想成为UBF成员的渴望，或者一个UBF成员是否想更深地了解UBF主义。在UBF，严厉的指责、训练和给予无理的命令（指示）都被认为是完美的“爱”。', 1, NULL, 6),
(145, 'LT', NULL, '（<span id="anchor_143">生活见证</span>的首字母缩写）', 1, NULL, 6),
(146, 'M.', NULL, '（传教士的缩写）', 1, NULL, 6),
(147, 'manger ministry', '马槽事工', 'UBF成员使用这个术语指的是他们自己，尤其是指较小的UBF分会或小组。UBF成员试图掩盖这样一个事实，他们宣称他们是“<span id="anchor_63">谦卑</span>”的计划不是非常成功。如同耶稣出生在马槽，这样比其他类似的小组更“属灵”。', 1, NULL, 6),
(148, 'man of God', '神人', '在圣经希伯来书中，短语“神人”用来指卓越的宗教人物，如先知。（进一步的讨论，见维基百科<a href="http://web.archive.org/web/20060913000000/http://en.wikipedia.org/wiki/Man_of_God">该文章</a>）在UBF，这个术语可能用于任何一个成员。也就是说，普通的UBF成员认为他们自己就是与旧约圣经中的先知相似的现代宗教领袖，这证明UBF成员并不像他们自己宣称的那样<span id="anchor_63">谦卑</span>。', 1, NULL, 6),
(149, 'marriage', '婚姻', '（另作：<span id="anchor_114">UBF婚姻</span>）', 1, NULL, 6),
(150, 'meet Jesus personally', '单独遇见耶稣', '（另作：成为<span id="anchor_234">深受教义熏陶的</span>）', 1, NULL, 6);
INSERT INTO `jm_glossary` (`id`, `glossary_name`, `glossary_name_translated`, `glossary_intro`, `cult_id`, `glossary_relate_id`, `glossary_translator_id`) VALUES
(151, 'memorize', '熟记', '每个春天，UBF成员要熟记哥林多前书15章，并举行背诵比赛。参与者被划分等级，根据他们能记住多少经文，他们的错误有多少，他们对背诵用<span id="anchor_59">心</span>多少。UBF韩国人根本不知道熟记和背诵的区别。这样，在背诵文章之前，每一个UBF成员会说：“我，**牧者，上帝的仆人，现在要<span id="anchor_32">依靠信心</span>熟记哥林多前书15章。', 1, NULL, 6),
(152, 'message', '报告', '（UBF韩国人发音为"mess-a-gee" 或 "mess-age"）布道。可以<a href="http://web.archive.org/web/20071102041432/http://www.ubfsurvivor.info/message.html">在此</a>读到典型的带有评论说明的UBF报告。', 1, NULL, 6),
(153, 'message training', '报告训练', '报告训练是<span id="anchor_224">演说训练</span>的进一步补充，根据特别的圣经经文进行主题创作和发布布道或报告。通常，首先是撰写涵盖从童年到现在的20页或更多页数的详细的生活见证。 然后与训练员分享这个见证，受训者要写一份5~10页的带有简短个人应用部分的报告初稿。通常，报告将在训练员的指导下经历繁重的修改，以致于达到报告变成了训练员的报告而不是受训者的报告那样的程度。经常将李昌禹的关于一段特殊经文的报告作为范例。在经过训练员一番更多的修改之后，受训者还可能接受这样的教育：如何发表一个UBF风格的报告，适当的停顿、语调和手势（见<span id="anchor_122">UBF声音</span>）。<a href="http://web.archive.org/web/20071102041432/http://www.ubfsurvivor.info/message.html">在此</a>可以读到典型的带有评论说明的UBF报告。', 1, NULL, 6),
(154, 'messenger', '报告者', '发表<span id="anchor_152">报告</span>的人。', 1, NULL, 6),
(155, 'ministry', '事工', '（UBF韩国人发音为"meenistree"）UBF指的是它们自己的“事工”，成员们经常称他们自己的分部为“事工部”。然而，事工这个词意味着已经完成的一些类型的服务。既然这明显不是圣经学习或慈善工作，人们很好奇UBF实际为人们提供的服务是什么。也许是自我讨好的服务？', 1, NULL, 6),
(156, 'Mis.', NULL, ' (传教士的缩写)', 1, NULL, 6),
(157, 'Misn.', NULL, '（传教士的缩写）', 1, NULL, 6),
(158, 'Missionary', '传教士', '（另作：UBF韩国的，UBF韩国人发音为"mee-shon-air-ee"）传教士是给予第一代韩国UBF成员的头衍，他们在韩国开始他们的UBF学习。一般而言，传教士的等级高于<span id="anchor_213">牧者</span>，而牧者的等级高于<span id="anchor_212">羔羊</span>。', 1, NULL, 6),
(159, 'Missionary Doctor Samuel Lee, PhD, Litt. D.', '传教士博士Samuel Lee，哲学博士，文学博士', '（另作：<span id="anchor_37">李昌禹</span>）', 1, NULL, 6),
(160, 'mission', '使命', '（UBF韩国人发音为"mee-shon"，见呼召）在UBF，一个人一生唯一的使命和来自上帝的使命是实践并发扬UBF主义。没有其他任何的呼召是有效的。UBF的使命理念不同于基督徒对使命的看法。UBF的目标是禁止人们加入教会，只加入UBF，然而，基督徒使命工作目标是介绍人们认识基督并鼓励他们寻找教会的家。因此，实际上UBF使命和基督徒使命是矛盾的。', 1, NULL, 6),
(161, 'mission journey', '使命旅程', '（另作：UBF旅行）', 1, NULL, 6),
(162, 'mother', '母亲', '（见祷告之母，<span id="anchor_198">院长妈妈Sara Barry</span>）UBF使用马可福音3章35节作为圣经基础，当他尊重“属灵的家庭”时，就轻视了自己实际的家庭。这样，某人的女牧者（如果牧者是女性）或某人的牧者的妻子就变成了他属灵的母亲。', 1, NULL, 6),
(163, 'Mother Barry', 'Barry妈妈', '（见<span id="anchor_204">Sara Barry</span>）', 1, NULL, 6),
(164, 'mother of prayer', NULL, '祷告之母', 1, NULL, 6),
(165, 'new year key verse', '新年关键性经文', '（另作：新年的特殊经文）在一年开始的时候选择一段<span id="anchor_222">特殊的经文</span>来表述“属灵的”一年将要做什么。', 1, NULL, 6),
(166, 'new year key verse testimony', '新年关键经文见证', '（另作：新年特殊经文演说）每一个UBF成员在一年开始的时候发表的<span id="anchor_223">演说</span>。这个演说中，UBF成员要回顾前一年，介绍他/她的新年<span id="anchor_222">特殊经文</span>，和一一陈述五个“祷告主题”，“悔改主题”和“感恩主题”。<span id="anchor_183">祷告的主题</span>之一必须是UBF成员希望下一年教导的新加入者数字的数量目标。注意，选择一个低的数字作为目标大部分会招来责备。', 1, NULL, 6),
(167, 'North American', '北美人', '土生土长的美国白人', 1, NULL, 6),
(168, 'Obey ', '顺从/服从', NULL, 1, NULL, 6),
(169, 'offering', '奉献', '（见<span id="anchor_200">例行奉献</span>，<span id="anchor_12">额外奉献</span>）金钱在UBF中起重要的作用。成员中谁没有奉献足够的钱就可能会被公开地或私下地谴责是“不知感恩的”。注意，UBF的大部分奉献都不是匿名的。他们奉献的钱放在封面上写有奉献者姓名的信封里。有时候，人们也会把他/她的“祷告主题”列在信封上。', 1, NULL, 6),
(170, 'offering prayer', '奉献祷告', NULL, 1, NULL, 6),
(171, 'one to one Bible battle', '一对一圣经战争', NULL, 1, NULL, 6),
(172, 'one to one Bible study', '一对一圣经学习', '（翻译：思想改良会议）', 1, NULL, 6),
(173, 'one word', '单字', NULL, 1, NULL, 6),
(174, 'other sheep', '其他羊羔', '除了白人之外的一种族的一新加入者。', 1, NULL, 6),
(175, 'own efforts', '个人的努力', NULL, 1, NULL, 6),
(176, 'own idea', '个人的想法', NULL, 1, NULL, 6),
(177, 'own plan', '个人的计划', NULL, 1, NULL, 6),
(178, 'Pastor', '牧师', '有时候给予分会执事的头衍。注意，在UBF中被称为“牧师”的，没有一个是拥有神学学位的。', 1, NULL, 6),
(179, 'PhD shepherd', 'PhD博士牧者', NULL, 1, NULL, 6),
(180, 'pioneer', '先锋', NULL, 1, NULL, 6),
(181, 'pleasure-seeking', '玩乐', NULL, 1, NULL, 6),
(182, 'prayer', '祷告', '（UBF韩国人有时候发音为"player"。）这里应该注意，UBF成员们大部分问题成对或以小组形式在一起祷告，这样的声音大。祷告总是按照一个通式。公式的一部分是“感恩主题”，例如，可能会对“基督死在十字架上”或者“耶稣呼召我成为上帝的仆人”而表示感谢。公式的另一部分是对上课时学到的进行回顾。一些祷告会包括详细的“悔改主题”，UBF成员在这里表达改变信仰、态度或行动的愿望。最后，但可能不是最重要的，是一般的“祷告主题”，这些经常被列举以致都能背诵，总是包括数字。每个UBF祷告都会心下面的话作为结束：“我奉耶稣的名祷告，阿们。”', 1, NULL, 6),
(183, 'prayer topic', '祷告主题', '（翻译：UBF目标）', 1, NULL, 6),
(184, 'pre.', NULL, '（主持的缩写）', 1, NULL, 6),
(185, 'pres', NULL, '（主持的缩写）', 1, NULL, 6),
(186, 'presider', '主席', NULL, 1, NULL, 6),
(187, 'problem', '问题', NULL, 1, NULL, 6),
(188, 'raise up', '举起', NULL, 1, NULL, 6),
(189, 'rebellious', '背叛的', '（UBF韩国人发音为"ree-bell-yurs"）', 1, NULL, 6),
(190, 'rebuke ', '指责', NULL, 1, NULL, 6),
(191, 'recruit', '招募', '（UBF术语钓鱼）', 1, NULL, 6),
(192, 'recruiting', '招募', '（UBF称为 钓鱼事工的 术语）', 1, NULL, 6),
(193, 'Reform UBF', '改良UBF', NULL, 1, NULL, 6),
(194, 'registration battle', '登记斗争', NULL, 1, NULL, 6),
(195, 'relativism ', '相对论', NULL, 1, NULL, 6),
(196, 'repent ', '悔改', NULL, 1, NULL, 6),
(197, 'representative prayer', '典型的祷告', NULL, 1, NULL, 6),
(198, 'Reverend Mother Sarah Barry', 'Sarah Barry牧师妈妈', '（另作<span id="anchor_204">Sarah Barry</span>）', 1, NULL, 6),
(199, 'R-Group', '改良组', '（见改良UBF）', 1, NULL, 6),
(200, 'Routine Offering', '例行奉献', '（UBF称为世界使命奉献的术语）所有<span id="anchor_234">深受教义熏陶</span>的UBF成员都期望将他们收入的10%作为例行的奉献。在UBF的许多分会里，墙上有一张图表显示所有十一奉献者的名单。在十一奉献之外的额外奉献被称为“感恩奉献”，这外我已经对<span id="anchor_12">额外奉献</span>进行简单的翻译了。', 1, NULL, 6),
(201, 'RUBF', 'RUBF', '（见改良UBF）', 1, NULL, 6),
(202, 'sacrifice ', '祭物', NULL, 1, NULL, 6),
(203, 'salvation ', '拯救', NULL, 1, NULL, 6),
(204, 'Sara Barry', 'Sarah Barry', '（UBF称为Sarah Barry牧师妈妈的术语）最初来韩国的长老会的传教士，60年代初期<span id="anchor_37">李昌禹</span>影响下与他共同创立了UBF。她的大部分生活是作为“温柔一面”的李昌禹。然而，她总是为李昌禹的暴力行为进行辩护。李昌禹死后，在她退休之前的一些年里担任了UBF领袖并支持 John Jun。一个通过阅读她每年的“<a href="http://web.archive.org/web/20071028070758/http://www.ubf-net.de/ubf/barry/index.en.htm">使命报告</a>”可以深入了解她的人。', 1, NULL, 6),
(205, 'Sarah of Faith', 'Sarah的信心', '（见<span id="anchor_8">亚伯拉罕的信心</span>）给予成为UBF分会中深受教义熏陶的第一个土生土长的女性美国白人成员的荣誉头衍。', 1, NULL, 6),
(206, 'SBC', 'SBC', '（<span id="anchor_235">夏季圣经大会</span>的首字母缩写）', 1, NULL, 6),
(207, 'Second Generation Missionary', '第二代传教士', '（<span id="anchor_113">UBF韩国人</span>的孩子）', 1, NULL, 6),
(208, 'selfishness', '自私自利', '（UBF韩国人发音为"selfish-niece"）', 1, NULL, 6),
(209, 'self-supporting', '自养', 'UBF的大部分领袖都是自养的。也就是说他们不在UBF的工资单上，他们有正常的全职工作。', 1, NULL, 6),
(210, 'servant of God', '上帝的仆人', NULL, 1, NULL, 6),
(211, 'Sh.', 'Sh.', '（牧者的缩写，UBF韩国人发音为"sheh-" 或 "shep"，就像"Sheh-Frank" 或 "Shep-John"中的发音）', 1, NULL, 6),
(212, 'sheep', '羊羔', '（另作：<span id="anchor_69">新加入者</span>，UBF韩国人经常发音为"ship"）', 1, NULL, 6),
(213, 'Shepherd', '牧者', '（UBF韩国人发音为"shep-uh-duh"。）一个<span id="anchor_234">深入教义熏陶</span>的UBF成员。通常，一个UBF成员一旦他/她开始参加招募和教导新成员就会被称为“牧者”。', 1, NULL, 6),
(214, 'Shepherdess', '女牧者', '（UBF韩国人发音为"shep-deece"）女性牧者。', 1, NULL, 6),
(215, 'Shp.', 'Shp.', '（牧者的缩写）', 1, NULL, 6),
(216, 'Shps.', 'Shps.', '（女牧者的缩写）', 1, NULL, 6),
(217, 'sin', '罪', '（UBF韩国人发音为"seen"。也见<span id="anchor_73">魔鬼</span>，<span id="anchor_84">邪恶</span>）', 1, NULL, 6),
(218, 'sing', '歌唱', NULL, 1, NULL, 6),
(219, 'singspiration ', '领诗', NULL, 1, NULL, 6),
(220, 'sister', '姊妹', '女性<span id="anchor_69">新成员</span>。', 1, NULL, 6),
(221, 'sogam', '所感', '（另作：<span id="anchor_223">演说</span>，来自韩语的意思“出自内心”）', 1, NULL, 6),
(222, 'special verse', '特殊经文', '（UBF关键经文的术语，也见<span id="anchor_142">生活关键性经文</span>，<span id="anchor_165">新年关键性经文</span>）一段特殊的经文是圣经中一段经文被赋予特殊的意义。在UBF每个<span id="anchor_152">报告</span>或<span id="anchor_223">演说</span>均有特殊的经文。这个经文是UBF想要强调并加入其自己特殊意义的。', 1, NULL, 6),
(223, 'speech', '演说', '（UBF见证，生活见证，sogam的术语）<a href="http://web.archive.org/web/20071102041357/http://www.ubfsurvivor.info/lt.html">在此</a>可以读到典型的UBF见证。', 1, NULL, 6),
(224, 'speech training', '演说训练', '（UBF见证训练的术语）', 1, NULL, 6),
(225, 'spirit', '心灵', '（用心灵）', 1, NULL, 6),
(226, 'spiritual ', '属灵的', NULL, 1, NULL, 6),
(227, 'spiritual condition', '属灵环境', NULL, 1, NULL, 6),
(228, 'spiritual heritage', '属灵遗产', '（UBF韩国人发音为"herit age" 或 "her-ta-gee"）', 1, NULL, 6),
(229, 'spiritual order', '属灵位分', NULL, 1, NULL, 6),
(230, 'staff meeting ', '员工会议', NULL, 1, NULL, 6),
(231, 'struggle', '挣扎', NULL, 1, NULL, 6),
(232, 'study [the] Bible', '学习圣经', '参加UBF思想改良。许多本来说英语的人在使用这个短语时会省掉定冠词，以便更像他们的韩国模范。', 1, NULL, 6),
(233, 'submit', '服从', '这在UBF是个很重要的词，因为UBF领导希望<span id="anchor_229">属灵位分</span>比他们低的人服从他们的权力。', 1, NULL, 6),
(234, 'sufficiently indoctrinated', '深受教义熏陶的', '（UBF重生的术语，见<span id="anchor_150">独自遇见耶稣</span>，<span id="anchor_11">接纳耶稣入心</span>，<span id="anchor_213">牧者</span>）已经加入并实践主要的<a href="http://web.archive.org/web/20080101164843/http://www.ubfsurvivor.info/ubfism.html">UBF主义</a>概念，最重要的是要把所有属灵和属世的事全部告诉他的UBF老师。', 1, NULL, 6),
(235, 'Summer Bible Conference', '夏季圣经大会', '（另作：<span id="anchor_110">夏季UBF大会</span>）', 1, NULL, 6),
(236, 'Sunday Christian', '主日基督徒', NULL, 1, NULL, 6),
(237, 'Sunday meeting', '主日聚会', '（UBF主日崇拜的术语）<a href="http://web.archive.org/web/20070704052345/http://www.ubfsurvivor.info/swso.html">这里</a>可以见到典型的崇拜程序的轮廓。', 1, NULL, 6),
(238, 'Sunday report', '主日报告', '<span id="anchor_29">分会</span>活动的周报告，由分会的<span id="anchor_78">执事</span>撰写并于每周日递交给总部。主日报告与<span id="anchor_55">小组报告</span>相似，但仅在分会范围内。报告包括参加人数和<span id="anchor_112">目标</span>，包括新加入者的人事信息和他们的<span id="anchor_187">问题</span>。', 1, NULL, 6),
(239, 'Sunday Worship Service', '主日崇拜', '（另作：<span id="anchor_237">主日聚会</span>）', 1, NULL, 6);

-- --------------------------------------------------------

--
-- 表的结构 `jm_glossary_convention`
--
-- 创建时间: 2013 年 02 月 08 日 04:14
-- 最后更新: 2013 年 02 月 08 日 04:14
--

CREATE TABLE IF NOT EXISTS `jm_glossary_convention` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `convention` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `convention_translated` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `jm_glossary_convention`
--

INSERT INTO `jm_glossary_convention` (`id`, `convention`, `convention_translated`) VALUES
(1, 'Samuel Lee', '撒母耳·李'),
(2, 'Apostolos Campus Ministry', '使徒校园传教会'),
(3, 'fellowship', '团契'),
(4, 'coworker', '同工'),
(5, 'hymn ', '赞美诗'),
(6, 'ministry ', '事工'),
(7, 'mission', '使命/传教/布道'),
(8, 'vision', '异像');

-- --------------------------------------------------------

--
-- 表的结构 `jm_posts`
--
-- 创建时间: 2013 年 02 月 08 日 04:14
-- 最后更新: 2013 年 02 月 08 日 04:14
--

CREATE TABLE IF NOT EXISTS `jm_posts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `post_type_id` int(10) DEFAULT NULL,
  `post_cult_id` int(10) DEFAULT NULL,
  `post_uploader_id` int(10) DEFAULT NULL,
  `post_translator_id` int(10) DEFAULT NULL,
  `post_content_origin` text COLLATE utf8_unicode_ci,
  `post_content_translated` text COLLATE utf8_unicode_ci,
  `post_publish_datetime` datetime DEFAULT NULL,
  `post_title_origin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_title_translated` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_modified_datetime` datetime DEFAULT NULL,
  `post_guid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_count` int(10) DEFAULT NULL,
  `post_origin_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_reviewer_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `jm_posts`
--

INSERT INTO `jm_posts` (`id`, `post_type_id`, `post_cult_id`, `post_uploader_id`, `post_translator_id`, `post_content_origin`, `post_content_translated`, `post_publish_datetime`, `post_title_origin`, `post_title_translated`, `post_status`, `comment_status`, `post_modified_datetime`, `post_guid`, `comment_count`, `post_origin_url`, `post_reviewer_id`) VALUES
(1, 1, 1, 1, 1, 'Open Letter by Ki-Chul O. as of June 29th, 2002\r\n(A serious allegation against the former UBF leader Samuel Lee, was his ordering some women missionaries to abort their children. This sounds unbelievable, but one should consider that the Korean cultural background and the UBF environment of spiritual abuse produce a perfect breeding ground for such malpractices. Samuel Lee constantly interfered in the private decisions of families, beginning with the choice of the marriage partner, and often deciding when a couple was allowed to have children, how many children they should have, and what their children’s names would be. If one partner in a marriage became critical of UBF or Samuel Lee, he would order divorces and re-marriages. To Samuel Lee and like-minded UBF leaders, if the responsibility to raise a child would interfere in a UBF family’s “mission,” it is then only a small step to order that child to be aborted. Add to that the fact that in South Korea abortions are widely tolerated and carried out secretly to “keep face.” Approximately two million children are aborted in South Korea every year (according to the DSW newsletter 6/2000), which is even more than are aborted in the United States. Christian ethics seem to be almost non-existent in UBF, since "the end (world mission) justifies the means" is the ruling motto. If there is any ethics in UBF, then it is closer to Confucianism than Christianity. Recently, a long-standing member of a Korean UBF chapter left UBF after learning that his chapter director’s wife had misused her authority to coerce his wife into having two abortions without his knowledge. After he had left the ministry because of this, he was also slandered by his former chapter leader in front of the assembly, as is the custom in UBF. Here is the translation of his open letter which was posted on the Internet on June 29th, 2002.)\r\n\r\nThis posting is addressed to S. Daniel Lee from the Nam-San UBF center [in Seoul, Korea].\r\n\r\nDear S. Daniel Lee and S. Mi-So Lee!\r\n\r\nI am S. Ki-Chul O. I can attest with a good conscience to the fact that I served God wholeheartedly as a lay shepherd for the last 19 years, sacrificing all my material and my time. The reason why I left the Nam-San UBF center was because of my disappointment over you.\r\n\r\nIn the last Sunday message on John 8, titled “And the Truth Will Set You Free”, you wrote the following about me: “And the others cannot remain in the word of Jesus because they are rooted in worldly desire. One lay shepherd [in UBF messages they like to give such seemingly anonymous examples, although, of course, everybody knows and should know who is meant, in this case Ki-Chul O.] followed Jesus for 18 years and left Jesus last week. It is not important how long you follow Jesus but where you are rooted and where you are standing. Sooner or later you have to leave Jesus if you want to keep your desire and ambition for glory no matter how long you had already followed Jesus.” Now I ask you the following questions:\r\n\r\n1. Does my leaving the ministry mean that I have left Jesus? Does the UBF center stand for Jesus? It is a fact that I am following Jesus whether I am attending the Nan-Sam center or not. I will continue to believe in Jesus. I have never heard of such a distorted theology in which a ministry is equated with Jesus. Please give me a good theological reason why you think that somebody has left Jesus if he leaves the ministry.\r\n\r\n2. You say in your message that I have not remained in the word of Jesus because I was strongly rooted in addiction to glory and worldly blessing. How could I then have remained 19 years in UBF which requires more offerings and faithfulness than other ministries?\r\n\r\nWe had to move into a rented apartment so that the UBF center building could be financed. [Translator’s comment: Most Koreans live in an owner-occupied apartment or rented apartment for a one-time deposit which corresponds to two thirds of the selling price. This deposit is used as a retirement fund since there is not any proper pension system in Korea. Only the poor live in bad rented apartments where you have to pay monthly rent. Ki-Chul O. had to move into such a rented apartment to raise the deposit money for the center building.] As a result my wife got an allergic nasal cavity inflammation, and my children had to constantly go to the doctor because they often became ill because our apartment was very cold. I gladly bore these disadvantages which arose because I worked more eagerly for the center than for my job. We sacrificed more than 1.6 Million Won [about $1300] per month up to the year 2000 for the world mission. My salary amounted to about 3.5 Million Won [$2900], and last year we actually could not give more than 1.3 Million Won [$1100] per month even if we wanted to. So how can you condemn us as people who are rooted in worldly desire when we have sacrificed so much? I was set up as a fellowship leader and important tasks were entrusted to us. Was this not a sign that you had appreciated our dedication? Who could actually dare to exalt himself in our ministry against your will?\r\n\r\nWe once purchased a small office. [Translator’s comment: It was a tiny room in a so called “Officetel”, which Koreans like to purchase as a financial investment.] However, my wife had such a guilty conscience after doing this that she told shepherdess Mi-So [the wife of Daniel Lee] about it, and she [Mi-So Lee] told her to sell the office immediately. I knew nothing about this for a long time. I ask you, what kind of ministry teaches something like that, that the woman shall listen to the wife of the leader more than to her own husband? Why is an elderly man with 2 children not allowed to buy a house or save a little money? How could you accuse such a person of worldly desires? [Translator’s comment: Purchasing a house is almost the only possibility of having savings for retirement in Korea.] Why then do you have a car and a house of your own? [Translator’s comment: Though he is a vice-manager of a well-known worldwide American insurance company, Ki-Chul O. does not own a car like Daniel Lee.]\r\n\r\nIn your opinion, all shepherds, except the leaders, have to sacrifice their whole life to the ministry. It is time that UBF members deal with the bringing up of children, problems of housing and provisions for old age. How do you want to solve these problems? [Translator’s comment: Meanwhile, many older UBF coworkers are confronted with such problems after they had never thought about themselves in their younger years as UBF taught them. Now the leaders, who always brushed practical life problems aside, refuse to take responsibility for this and to help in solving these problems.] Make a clear statement about how you want to bear the responsibility for the coworkers! I fear, however, that you will merely say that Jesus will surely bless them.\r\n\r\nYou have been appointed as shepherds for the sheep. What is a shepherd? Is he not a guardian of the sheep? Is it not his task to wipe away their tears and ease their pains? However, have you not made use of their deep confessions of sin coming from their hearts, only to rebuke and condemn them? Is it the task of a shepherd to slander his sheep in front of uninformed coworkers after they have left him? Is it not the task of a sincere shepherd to think first about the pain of the deserted sheep, bearing their pain and repenting first?\r\n\r\n...\r\n\r\nNot even worldly people would slander somebody that way, who had worked together with them for 19 years.\r\n\r\n...\r\n\r\nI believe that Jesus is the Lord over this ministry. Please explain to me whether it is biblical that you make the people treat your words like the words of Jesus and, therefore, accept your directions as divine? You have the absolute authority and require the absolute obedience!\r\n\r\nI know that you [being the chapter director] manage the offering money, and it is at your disposal. Is it not biblical that others care for the administration of the money?\r\n\r\nWhy do the coworkers have to obey the leaders absolutely when all are sinners in front of God? You are not God!\r\n\r\nThe most important task of a leader is proclaiming the word. Why do you interfere in private family matters? Why do you teach the women that they shall be more obedient to you than to their husbands so that marital problems constantly arise, caused by your teaching? Is this biblical?\r\n\r\nYour most excellent wife gave my wife the direction [a “direction” or “orientation” is the same as an absolute command in UBF] to abort our third child since it was an obstacle for the evangelization ministry because she is already more than 37 years old. In this way, she had our children aborted twice. I was so shocked when I learned about that. My wife had concealed that from me [the fact of the abortions due to the direction given by the wife of the leader] and confessed it recently in front of me after she had so painfully kept this to herself for 4-5 years. I want you to make a clear and public statement, whether this action [ordering abortions] is criminal or biblical.\r\n\r\nWe have left the church after ministering for 19 years because the atmosphere was poisoned with authority and legalism and, therefore, was suffocating. But we have not left Jesus at all. By no means! Rather, we pray for wisdom to serve the evangelization ministry in the best way. We still pray for the coworkers and Bible students in the Nam-San center. Acts 5:29 says: “Peter and the other apostles replied: ‘We must obey God rather than men!’” You cannot obey someone blindly instead of God. It is wrong and distorted if the leader blames a coworker for not having understood or having forgotten the grace of God, because the coworker does not obey him. I believe that we should obey only God who alone is worthy of our adoration and our praise.\r\n\r\n6/29/2002\r\nShepherd Ki-Chul O.', 'Ki-Chul O.的公开信，自2002年6月29日起\r\n\r\n（一篇关于前UBF领袖Samuel Lee命令一些女传教士堕胎事件的措辞严肃的反对申诉。虽然这听上去难以置信，但你应该考虑一下韩国的文化背景和UBF属灵虐待的环境，正是培育如此完美的不正当行为的繁殖的温床。Samuel Lee会经常性地干涉家庭的私人决定，从起初婚姻对象的选择，到决定一对夫妇什么时候才允许生孩子，他们应该生多少个孩子，以及他们的孩子的姓名该叫什么。要是一个婚姻伴侣对UBF或Samuel Lee提出批评，他就会命令他们离婚和重婚。对于Samuel Lee以及有着类似心理的UBF领袖们来说，如果抚养一个孩子的责任会干涉到一个UBF家庭的“使命”，那么很快他们就会命令把孩子堕掉。另外值得一提的是这样一个事实，在韩国，堕胎得到广泛的宽容，并秘密地开展，以便“保住面子。”韩国大约每年有两百万的孩子被流产（根据2000年6月DSW新闻报纸的报道），甚至比美国的数量还要多。在UBF，基督徒的伦理观看上去几乎荡然无存，因为“结果（世界的使命）证明手段的合法”[1]是训规。如果说UBF也有伦理的话，那么相比基督教伦理，它更接近于儒家伦理。最近，一位在韩国UBF中心呆过很长时间的成员，在了解到他所在中心负责人的妻子滥用她的权威，强迫他的妻子在他不知情的情况下两次进行堕胎后，离开了UBF。他因这件事的缘故离开UBF以后，就像UBF一贯会做的那样，他还遭到了他的前中心领导人在会众面前的毁谤。以下是他的公开信的译文，原文在2002年6月29日张贴于互联网上。）\r\n\r\n邮寄地址是Nam-San UBF中心（位于韩国首尔）的S. Daniel Lee。\r\n\r\n亲爱的S. Daniel Lee和S. Mi-So Lee！\r\n\r\n我是S. Ki-Chul O。我可以用无亏的良心宣誓我全心全意地作为一名平信徒牧者在过去19年里面侍奉了上帝，牺牲了我所有的物质和时间。我之所以离开Nam-San UBF中心是因为我对你们的失望。\r\n\r\n在上一次于6月8日举行的，题为“真理必使人得自由”的主日布道里，你们写了有关我的话，说道：“其他的人不能待在耶稣的话语里面，因为他们扎根在了世界的欲望当中。一位平信徒牧者（在UBF的布道里面，他们会这么做，好像是给出表面上的匿名例子，但是，当然，每个人都知道并应该知道所指的是谁，此处指的就是Ki-Chul O.）跟随了耶稣18年，然后在上个礼拜离开了耶稣。所以，你跟随耶稣多久时间并不重要，重要的是你扎根在什么地方，你站在什么地方。如果你们想要保留你们的欲望，得到荣誉，满足抱负，无论你们已经跟从耶稣多久，你们也一定早晚会离开耶稣的。”现在，让我问问你们以下几个问题：\r\n\r\n1. 我离开这个教会是否就意味着我已经离开了耶稣？UBF中心是否代表了耶稣？事实上，无论我参加Nan-Sam中心，还是没有参加，我都一直在跟从耶稣。我还是会继续相信耶稣。我还从来没有听说过这样歪曲的神学，声称教会就等同于耶稣。请给我一个好的神学理由来，为什么你们认为某个人如果离开了这个教会，他就是离开了耶稣。\r\n\r\n2. 你们在布道里说，我因为强烈扎根在沉溺于得到荣誉和世界的祝福上面，因为不能留在耶稣的话语里。既然如此，那么我是如何能够在UBF这个要求比其他教会更多的奉献和忠诚的教会当中，侍奉了19年时间的呢？\r\n\r\n为了让UBF中心的大楼得以维持下去，我们不得不搬进一间出租公寓住。（大多数韩国人住在房主自有的公寓或出租公寓里，为了得到相应房屋售价2/3的一次性定金。因为韩国没有任何适当的养老金制度，所以这笔定金就被作为退休金使用。只有穷人才会住在糟糕的出租公寓里面，在那里，你不得不支付每月的租金。Ki-Chul O.为了增加中心大楼的定金，不得不搬去住在这样一间出租公寓内。）结果，我的妻子得了过敏性鼻炎，我的孩子不得不经常性地去医院就诊，这是因为我们的公寓非常寒冷，所以他们才一直得病。我高兴地忍受着这些不断增加的不利条件，因为我为中心工作比为我自己的工作更加热切。直到2000年世界宣教使命会召开以前，我们每月牺牲超过1.6百万韩圆（大约1300美元）。我的薪水大约是3.5百万韩圆（2900美元），去年我们实际上无法给出超过1.3百万韩圆（1100美元）每月，即使我们想要给。我们牺牲了那么多，你们怎么可以判处我们是扎根在世界的欲望当中的人呢？我被按立为团契的领导人，重要的任务也委托给了我们。这难道不是你们欣赏我们的牺牲的记号吗？事实上，我们教会里有谁胆敢抬高自己，反对你的意志呢？\r\n\r\n我们曾购买过一间小办公室。（那是一间极小的所谓“办公住宿综合楼”的房间，韩国人喜欢把它作为财政投资来购买。）然而，我的妻子在购买以后感到良心亏欠，她告诉了女牧羊人Mi-So（Daniel Lee的妻子）这件事，她（Mi-So Lee）叫她立即卖掉这间办公室。很长时间我都不知道这件事。我问你，有哪种教会会教导女人应该听从领袖的妻子，多于听从她自己的丈夫这样的事？为什么你们不允许一位年长的、有着两个孩子的男人买一座房子，或是积蓄一些钱？你们怎么能指控这样的人为怀有对世界的欲望？（在韩国，购买一座房子几乎是拥有退休积蓄的唯一可能。）与此同时，你们自己却为何拥有一辆车和一座房子呢？（尽管Ki-Chul O.是一家世界知名的美国保险公司的副经理，他仍不像Daniel Lee那样拥有一辆车。）\r\n\r\n在你们看来，所有的牧者，除了领导人之外，都必须牺牲他们的整个生命，献给这个教会。UBF的成员是时候处理孩子的抚养、家庭房屋和老人的赡养问题了。你们想要怎样解决这些问题呢？（与此同时，许多年老的UBF同工在他们年纪还轻的时候，正如UBF教导他们的，从未为自己考虑过，现在他们着面临这样的问题。但现在，这些总是把实际问题轻描淡写、置于一边的领袖们，却拒绝为此承担起责任，帮助解决这些问题。）做一个清晰的陈述，说你们打算怎样经得起这些同工们的责任！可是，我唯恐的是，你们仅仅会说耶稣一定会祝福他们这类的话。\r\n\r\n你们被任命为羊群的牧者。什么是牧者？难道他不是看守羊羔的人？难道扫除他们的眼泪、减轻他们的痛苦不是他的任务？然而，难道你们不是利用他们内心深处对罪的坦白，却仅仅用于责备他们、评判他们么？当羊羔离开后，却在不知情的同工面前中伤他，这是不是一个牧者的任务呢？难道一个真诚的牧者的任务不是去首先思考这背弃的羊羔里面的痛苦、忍受他们的痛苦，并首先自己进行忏悔吗？\r\n\r\n…\r\n\r\n属世的人况且都不那样子毁谤别人，而这人却是已经和他们一起工作了19年之久的同工。\r\n\r\n…\r\n\r\n我坚信耶稣是这个教会的主。请解释给我听，你们让人们像对待耶稣的话语那样对待你们的话语，并且如此说来，把你们的指示作为教义来接受，是否符合圣经？你们拥有绝对的权威，要求绝对的顺从！\r\n\r\n我知道你们（中心负责人）掌管着奉献款，它们在你们的支配底下。那么，其他人关心这笔钱的管理情况是否就不合圣经？\r\n\r\n既然所有人在神面前都是罪人，那为什么同工不得不绝对顺从领导人？你们不是神！\r\n\r\n领导人最重要的任务是宣布神的话语。你们为什么干涉家庭的私事？你们为什么教导妇女，说他们应该对你们比对他们的丈夫更加顺从，从而使得因你们的教导的缘故，婚姻问题经常浮现？这符合圣经吗？\r\n\r\n你们当中最出色的妻子给我的妻子作出指示（在UBF，一个“指示”或“方向”，和绝对的命令具有同样的意思），要她流产掉我们的第三个孩子，因为她已经超过37岁了，孩子成了传教事工的障碍。利用这种方法，她两次将我的孩子流产掉。我了解到这事以后相当震惊。我的妻子对我隐瞒了这事（流产归因于领袖的妻子给出的指示），在痛苦地保守了这个秘密4-5年后，最近她终于在我面前坦白了此事。我要你们做出一个清晰和公开的声明，这项行动（命令堕胎）是犯罪行径还是符合圣经。\r\n\r\n我们在侍奉了19年后离开了这个教会，因为这里的环境败坏于权威和律法主义，并且，由此带来的令人窒息的氛围。但是，我们一点儿也没有离开耶稣。决不！相反，我们祷告祈求更多的智慧用最好的方式来传福音。我们仍为了Nam-San中心的同工们和圣经学生们祷告。使徒行传5：29说：“彼得和其他的使徒回应道：‘我们必须顺从神，而不是人！’”你们不能盲目地顺从某个人，替代了顺从神。如果领导人因为一个同工不顺从他，而责备他没有理解或是忘记了神的恩典，那种教导是错误和歪曲的。我坚信我们应该顺从的只有神，只有他值得我们的崇拜和赞美。\r\n\r\n6/29/2002\r\nKi-Chul O.牧者\r\n\r\n译注：\r\n[1]意思就是只要结果合法，手段合不合法无所谓', '2012-04-15 11:22:33', 'Ki-Chul O. (former Seoul UBF)', 'Ki-Chul O.（前首尔UBF）', 'public', 'allow', '2012-04-12 11:22:33', 'http://www.g.cn', 0, 'http://exubf.blogspot.com/2007/04/ki-chul-o-former-seoul-ubf.html', 1),
(2, 1, NULL, 1, 1, '(Anton S. was a member of UBF Chicago from 1996 to 1999. His testimony was published in the year 2000 on the RSQUBF web site.)\r\n\r\n“Jesus said to them, ‘The kings of the Gentiles lord it over them; and those who exercise authority over them call themselves Benefactors. But you are not to be like that. Instead, the greatest among you should be like the youngest, and the one who rules like the one who serves.’” (Luke 22:25-26)\r\n\r\nI first started attending the [Chicago] University Bible Fellowship at their annual Christmas Worship Service in 1996. Up until that point I had spent the last four months studying the Bible with a missionary from Korea, who was employed by the church as a full time Bible teacher to college students. I was 18, a freshman, and had a genuine interest in learning the teachings of this Jesus I had heard so much about.\r\n\r\nYou could say that I wasn''t raised in a very Christian household. Although I was read the Bible stories while I was young, and had been to church a handful of times in my life, I was basically an agnostic – I believed there was a god but had no clue who he was. Because of my background I had little or no idea what the typical healthy Christian church was supposed to look like. At first the UBF seemed like a great place to be at – I loved my weekly Bible study time with my teacher, everyone there was very happy to see me and seemed genuinely joyful, and the people there seemed really dedicated to living a genuine Christian life. But after some time I would find out that these attributes were only surface deep, and that there were many underlying problems in this church, especially with the leadership.\r\n\r\nThe UBF system can basically be described as a discipleship ministry, which means that each new student is taught the Bible with the hopes that soon they will commit their lives to God and become a disciple of Jesus. This UBF system is also referred to as Shepherding, which means that each new student is a “sheep” and their Bible teacher is their Shepherd. I would soon find out that under this system every student would eventually find his or her shepherd involved with every aspect of their life, in somewhat dictatorial relationships.\r\n\r\nWhy I Left UBF\r\n\r\nIn total I spent three years as a member of the UBF church, during the last two I was heavily involved with church activities. I started out slowly but by the time I left UBF I was really involved – leading group Bible studies weekly with our college group, delivering key messages at the small conferences held each year, and singing in a Gospel quintet each Sunday during the Worship Service among other things. But as I got more and more involved with the church I started to find out about so many unspoken rules, secrets of the leadership, and unethical behavior behind the scenes. I began learning about the different kinds of “training” which were given to members of the church, which often times seemed harsh and excessive, and I began to see how these people seemed to be more interested in political power and looking good, rather than really caring about living a life which resembled Jesus’.\r\n\r\nBy the summer of 1999 I was really praying about leaving this church when I came across information which would be crucial in my final decision of departure. I came across the information presented in books such as “The Subtle Power of Spiritual Abuse,” and “Churches that Abuse” which were revelatory to me at the time. I began to see that my church was throwing up some very obvious red flags when compared to other churches which are defined as aberrant or abusive. I began to see that the leadership there was in fact abusive, and that so many students who became involved with UBF were leaving hurt and abused by their shepherds. I wouldn’t go as far as to say that UBF is a cult, but it definitely falls under the categories of abusive and aberrant in nature.\r\n\r\nI would like to briefly go over the eight signs of aberrant churches that I found, and how each of these is acted out in UBF. Not all aberrant churches will display all of these signs but if a church displays several of them it should be enough to cause some alarm.\r\n\r\nDefinition: Aberration – Fringe doctrine, or a group of persons holding doctrine that is not necessarily separate from the orthodox Church. This is often an anti-conformist group, sometimes led by a charismatic leader. Often has as its main principle some aspect of orthodox faith that is being neglected. In other words it is a Bible believing church which is basically orthodox in doctrine but which acts out of the norm. It’s not a question of what they believe, but more so how they choose to act it out.\r\n\r\nThe Signs\r\n\r\n1. Power Posturing:\r\n\r\nThis means that the leadership spends much of its time focusing on and reminding the congregates of their own authority. Because their spiritual authority is not real or genuine, it has to be postured and backed up by threats.\r\n\r\nThe UBF connection:\r\n\r\nAt the heart of the UBF system is its founder and current leader Dr. Samuel Lee, who has strict control over his Korean Missionaries, and has no higher authority or council to check his power. Any time his power is questioned, he reacts immediately and harshly, firing missionaries immediately when they disobey him and using other fear tactics such as nailing the missionaries doors shut while they are out of there homes etc. Although these actions are not known to the young students they send a powerful unwritten message to the missionaries in the church – obey or suffer the consequences.\r\n\r\n2. Performance Preoccupation:\r\n\r\nThis means that in an abusive system the leadership will be preoccupied with the performance of their members: worthiness = performance.\r\n\r\nThe UBF connection:\r\n\r\nFrom the beginning students who become involved with UBF are strongly encouraged to participate in almost every activity of the church. This is often accomplished by making the students feel ashamed for not giving their all, asking questions like “You want to be like Jesus don’t you, don’t you want to obey his word?” The end result of this system is that students are not helped in the real problems of their lives but forced to blindly participate and produce numbers for the church.\r\n\r\n3. Traumatic Departure:\r\n\r\nLeaving an aberrational Christian group is always a painful process. While healthy churches will choose to bless the person who wishes to move to a new congregation, the aberrant church must curse the one who leaves.\r\n\r\nThe UBF connection:\r\n\r\nOne of the most disturbing aspects of UBF, is the consistent threats its leader Samuel Lee levels against those who leave the church. Many times during the Sunday sermon, stories were told of people who left UBF and soon after found themselves victims of car accidents, cancer, retarded babies etc. While Lee never outright said, “If you leave this will happen to you.” The unspoken message was nevertheless loud and clear. “If you leave this church you will be leaving God’s will for you, and bad things will soon happen.”\r\n\r\n4. Separation/Isolation of the Membership\r\n\r\nOften times an aberrant church will encourage and pressure their members to separate from their family, friends etc.\r\n\r\nThe UBF connection:\r\n\r\nThrough the "shepherding" system students are often counseled to totally separate from non-church relationships. Many times foreign students are encouraged to cut off relationships with their parents. Also students are often encouraged to move out of their parents homes and live together in apartments with other members. Any involvement with other churches is severely looked down on with questions like "Don''t you think it is God''s will for you to take root in this church so that you can grow as a disciple of Jesus" The end result is that students soon find themselves with in the church’s subculture and have no real friends outside the membership.\r\n\r\n5. Us versus Them\r\n\r\nMany times aberrant church groups have a strong distaste for outside Christian groups. This is usually backed up by a sense of spiritual elitism because the other churches are not really fulfilling God’s commands as the aberrant group sees them.\r\n\r\nThe UBF connection:\r\n\r\nUBF is not involved with any other church outside of itself. As I said before, membership participation with other churches is strongly discouraged. Often times other churches are seen as persecuting UBF, fostering the us vs. them mentality. Other churches are seen as being lukewarm, weak and lazy. The end result is a feeling that other Christians probably are not saved, and the unwritten message is that salvation is not assured outside of UBF.\r\n\r\n6. Uniformity of Lifestyle\r\n\r\nMany times aberrant churches have strict codes of conduct and uniformity, whether spoken or unspoken. This includes dress, language, beliefs and living conditions.\r\n\r\nThe UBF connection:\r\n\r\nThis uniformity of lifestyle can plainly be seen in the UBF staff and church members. It is interesting to see that the most dedicated members take on all of the mannerisms of Samuel Lee, in dress, speech and beliefs. When one student was asked, “If you are American, why do you speak broken Korean English like Samuel Lee?” His reply was “I don’t want to be Korean, but we should imitate and learn from the servant of God!” This may sound silly, but it shows an underlying trend of thought conformity. The main problem here is that the goal of any Christian is to become Christ-like, whereas UBF seeks its members to become disciples in the image of the leadership.\r\n\r\n7. Pipeline to God\r\n\r\nAnother attribute of the excessive control of the leadership is the direct pipeline to God mentality. This means that the leadership/leader is the one who knows what God’s will for the congregation is, and to question this is to question God himself.\r\n\r\nThe UBF connection:\r\n\r\nAs I mentioned before the power of UBF’s leader Samuel Lee is unchecked and total. I found it especially disturbing that Samuel Lee would make some of the most intimate decisions in a person’s life from where to work or go to school, to how many babies a family should have. I found it strange when Lee would make a decision for someone such as where to live and soon enough you would hear them say “Well it was God’s will for me to move.” The end result of this system is that members eventually abdicate all of their decision making powers to the church and have a tough time adjusting to life when they leave. Another problem for Christians is that the Holy Spirit takes a back seat at UBF; instead of people having and intimate relationship with God, they rely totally on the leadership – which makes for a form of spiritual idolatry.\r\n\r\n8. Shame Based Relationships\r\n\r\nMany of these churches thrive on using shame and fear as means to keep their members with the program. Public shaming and praising of members can be used to manipulate their emotions, and send messages to other members about which behaviors are acceptable.\r\n\r\nThe UBF connection:\r\n\r\nMany students find that as long as they keep doing what the leadership says they will continue to win praises, but when a member does not obey they frequently find themselves being shamed in one way or another. These shame based relationships produce an environment of fear and manipulation which should not be found in any church or family. The end result is that members tend to find themselves serving a god which can only value them when they are acting “perfectly.”\r\n\r\n\r\nAfter realizing that UBF shared many of these signs I had to make an ethical as well as spiritual decision. “Should I stay where I am so involved and have so many commitments despite the fact that I can see that there is so much that is so wrong?” In the end I prayed and found that I needed to move to a healthy environment, because I knew the truth and was ethically obligated not to associate myself with this church any longer.', '（Anton S.于1996-1999年间为芝加哥UBF的成员。他的见证于2000年发表在RSQUBF网站上。）\r\n\r\n“耶稣说，外邦人有君王为主治理他们。那掌权管他们的称为恩主。但你们不可这样。你们里头为大的，倒要像年幼的。为首领的，倒要像服事人的。”（路22：25-26）\r\n\r\n我首次参加大学生研经宣教会（芝加哥）是在1996年他们举办的年度圣诞礼拜上。在那之前，我跟从一位韩国传教士学习了4个月的圣经，他被这个教会雇佣为全职的大学生传教士。我是18岁的新生，对这位久仰大名的耶稣的教训有着浓厚的兴趣。\r\n\r\n我不是在一个基督化的家庭里长大的孩子。尽管我小时候读过圣经故事，去过很多次教堂，但基本上仍是一位不可知论者——我相信有一位神，但不知道他究竟是谁。正因为有这样的背景，所以我对健康的基督教会应当是个什么样子只有一点点认识，或许甚至完全没有。起先UBF看上去是一个很棒的地方——我喜欢和我的老师进行每周的圣经学习，每个人看到我都很高兴，而且他们看上去是真正地快乐，那里的人们看上去真是在专心过一个纯粹的基督徒生活。但是过一段时间后，我便发现这些仅仅是表面上的现象，这个教会存在许多根本上的问题，尤其是在领袖人物的身上。\r\n\r\nUBF的体系基本上可以被描述为一个门徒造就事工，即每个新入教者在被教导圣经时，都被寄望于他们不久就能够把生命委身给上帝，成为耶稣的一位门徒。这个UBF体系还可以被称作为牧羊模式，即每个新的学生都是一名“羊羔”，而他们的圣经老师便是他们的牧羊人。我不久便发现在这种系统下，每个学生最终都会发现，他或她的牧羊人会干涉他们生活中的每个方面，有那么点独裁的关系。\r\n\r\n我为何脱离UBF\r\n\r\n我作为UBF的成员共在教会里待了3年时间，在最近过去的2年里，我参与到教会的各项活动中。我虽然开始慢慢地脱离，但是在我离开的那段时候，我已经深涉其中——在大学里每周组织小组圣经学习，在每年举行的小规模会议里传递重要讯息，在每周的主日礼拜上唱福音五重奏等诸多事情。但是当我越来越多地涉及进教会里的事务时，我开始看到很多的里面的潜规则、领袖的秘密和幕后的不道德行径。我开始了解到教会会给成员进行不同类型的“训练”，这些训练通常是既严厉又过度的，我还开始看到这些人是如何变得看上去对政治权利和衣着打扮更加感兴趣，而不是真正关心过一种像耶稣一样的生活。\r\n\r\n1999年夏季我诚恳地为脱离这间教会祷告，当时我了解到了导致我最终决定脱离的关键信息。我了解到的信息被刊登在诸如“The Subtle Power of Spiritual Abuse”（暂译《属灵操控的微妙力量》）和”Churches that Abuse”（暂译《操控性教会》或《滥权教会》）的书中，这些书给了我很大的启示。我开始看到，我的教会和其他被定义为异常或滥权的教会相比较起来有着明显的红旗。（译注：“Churches that Abuse” 一书的作者在书中给出了多项“红旗”用以帮助识别操控性教会的特征）我开始认识到，实际上那里的领袖是滥用权利的，还有如此多经历过UBF的学生都受到了来自他们牧养者的伤害和操控。我还不能说UBF是一个异端，但是它明显在性质上属于滥权和异常的教会。\r\n\r\n我想要简要地说一下我所发现的异常教会的8项标志性特征，以及其中每一项是如何在UBF里被实践的。并非所有的异常教会都会显示出所有的这些迹象，但是如果有一个教会显示出了其中的几条特征，便足以引起警惕。\r\n\r\n定义：异常——教义上边缘化，或者一个组织持有一套并非必要的违背正统教会的教理。通常来说，这会是一个不从国教的组织，有时候是由一位富有魅力的领袖所领导的。它经常认为正统教会信仰的一些方面被忽视了，并将之视为主要原则。换句话说，虽然它是一个坚信圣经的教会，在教义上基本算正统，但在运作上却不符合常规。问题不在于他们相信的是什么，而更多地在于他们如何选择把他们所相信的实践出来。\r\n\r\n标志特征：\r\n\r\n1.故弄权势\r\n这个意思是领导人花很多时间集中于和提醒人们集中他们自己的权威。因为他们的属灵权威是不真实或不正确的，所以必须用威胁手段故作姿态，以保持住自己的权威。\r\n\r\nUBF的做法：\r\nUBF系统的心脏是它的成立者和现任领袖Dr. Samuel Lee，他严格地控制着韩国传教士，没有更高一级的权威或理事会可以检查他的权威。一旦他的权力遭到质疑，他就会立刻做出严厉的回应，若有传教士不顺从他，就会立即被解雇。他还利用其他威胁的技巧，比如在传教士离家外出时，钉住其家门等等。年轻的学生对这些行为虽是毫不知情的，但他们会在教会内部灌输一种有力的潜在信息——要么服从，要么遭受随之带来的后果。\r\n\r\n2.关注成员的表现\r\n指在操控性体系里面，领导者会对他们成员的表现进行关注：价值=关注。（译注：即表现越好对教会就越有价值，自然也就越会受到关注）\r\n\r\nUBF的做法：\r\n刚刚参加UBF没多久的学生会被强烈鼓励参加教会的几乎每项活动。他们通常是利用学生的内疚感达成这一目的的，学生会觉得自己没有给教会东西，深感亏欠。他们会问你诸如这样的问题，“你不是想要像耶稣一样吗，那他的话你为什么不顺从呢？”这个系统的结果就是，学生们并没有解决自己生活中遇到的真正问题，却被迫、盲目地参加了教会的活动，为教会扩充了更多的人数。\r\n\r\n3.痛苦的离会过程\r\n脱离一间异常的基督教教会通常是一个痛苦的过程。健康的教会会选择祝福一位想要搬去一间新的教会的人，而异常教会却肯定会咒诅那些离开的人。\r\n\r\nUBF的做法：\r\nUBF最令人不安的方面之一是，领导人Samuel Lee对离开教会的人进行一贯地威胁。在很多次主日讲道中，他们会讲关于离开UBF的人离开不久便遭遇车祸、患了癌症、孩子发育迟缓等等不幸的故事。但是Lee从不会露骨地讲“如果你们离开的话这些事会发生在你们身上。”然而，背后所要传达的信息却是响亮和清晰的，即“如果你们离开这教会的话你就会离开神在你身上的旨意，接着坏事不久就会在你身上发生。”\r\n\r\n4.成员之间的分开/隔离\r\n一个异常教会经常会鼓励和对成员施压，让他们和家庭、朋友等分开。\r\n\r\nUBF的做法：\r\n通过这个“牧羊”系统，学生经常被劝告要完全隔开教会以外的人际关系。外国学生很多次都被鼓励要切断他们和父母之间的关系。学生们还被经常地鼓励搬出他们父母的房子，和成员们一起住在公寓里面。任何同其他教会的联系都会遭到严厉的鄙视，他们会问“难道你不认为是上帝的旨意让你在这个教会里扎根，从而使你得以成长为一名耶稣的门徒吗？”最终的结果是，学生们不久后就发现，他们除了拥有这个教会的亚文化圈里的成员间的关系之外，便再没有真正的朋友了。\r\n\r\n5.我们 vs 他们\r\n异常教会很多都对外面的基督徒社团感到厌恶。这通常可被解释为一种属灵的精英主义姿态，因为在这些异常教会看来，其他教会是没有真正实践神的旨意的教会。\r\n\r\nUBF的做法：\r\nUBF和它以外的任何教会都没有往来。正如我之前所说，他们强烈不鼓励成员参加其他教会。其他教会经常被看作是在迫害UBF，这促进了“我们”跟“他们” 之间的对立观念。其他的教会被视作不温不热、虚弱和懒惰的。最终的结果是，有一种其他基督徒很可能都没有得救的感觉，潜在的讯息就是，救恩在UBF以外是没法保证的。\r\n\r\n6.整齐划一的生活方式\r\n异常教会很多都有严格的行为和统一的守则，无论是明明有的教导还是潜在的规则。这包括了着装、语言、信条和生活条件。\r\n\r\nUBF的做法：\r\n这种整齐划一的生活方式显然可以在UBF的工作人员和教会成员当中看到。当你看到最最委身的成员们把Samuel Lee的习惯全部学为己用，甚至包括衣着、演讲风格和信仰时，你会发现这真是件好笑的事。当一个学生被问道，“既然你是美国人，为什么要像Samuel Lee那样讲蹩脚的韩式英语呢？”他的回复是这样的，“我不想成为韩国人，但我们应该学习和效法神的仆人！”这也许听起来很愚蠢，但这显示了一种基本的想法统一的趋势。在这里，主要的问题在于每位基督徒的目标应是成为基督的样子，而UBF却要求其成员按着其领袖的形象来当门徒。\r\n\r\n7.通向神的管道\r\n另一个领导者过度控制的属性是在心理上成为通向神的直接管道。这个意思是领袖/领导者是明白神向着会众的旨意的人，若对此产生质疑，就是质疑神本身。\r\n\r\nUBF的做法：\r\n正如我之前所说，UBF的领袖Samuel Lee掌握着全部权力，且没有被核查。我发现尤其令人不安的是Samuel Lee会为一个人的多数私事做出决定，从他该去哪里上班工作，到一个家庭应该生多少个孩子。Lee会替某人作出决定，比如他该住在哪里。对此我觉得很奇怪。过不了多久你会听见他们说“噢，是神的旨意让我搬去住的。”这个系统的最终结果是，成员们放弃了在教会里做出任何决定的权利，因此，一旦他们脱离，便需要一段艰难的时间来调整生活模式。这些基督徒的另一个问题是，圣灵在UBF里面仅仅担当次要的工作；他们完全依赖于领袖而不是自己拥有和加深和神的关系——这产生了一个属灵偶像的形式。\r\n\r\n8.基于羞愧情感的关系\r\n很多此类教会致力于使用内疚感和恐惧感的手段来维系他们的成员。公开性的羞辱和赞扬可被用来操控他们的情绪，并向其他成员传递潜在的讯息，即哪种行为才是可以接受的。\r\n\r\nUBF的做法：\r\n许多学生发现，只要他们做领导人要求的事，他们就会持续地受到表扬，但是当一个成员不顺从的话，他们会发现自己持续地被某种或其他方式羞辱了。这些基于羞愧感的关系制造了一个恐惧和操控的环境，这种环境是不应该在任何教会或家庭里存在的。最终结果是，成员往往发现他们在侍奉一个只有当他们表现“完美”时才对他们予以肯定的上帝。\r\n\r\n在意识到UBF有着那么多的标志特征后我不得不作出道德上和属灵上的决定。“我是否应该留在这个我已经如此深涉其中，而且投入过那么多东西的地方，但与此同时，却不顾我所能见到的，这个教会里存在的如此多如此错误的东西的事实？”最终，我祷告后发现我需要搬去一个健康的环境里面，因为我知道了真相，而且从道德上讲，我也有再也不和这个教会发生关系的义务。', '2012-04-15 11:22:33', 'Anton S. (former Chicago UBF)', 'Anton S. 的见证', 'public', 'allow', '2012-04-12 11:22:33', 'http://www.baidu.com', 0, 'http://exubf.blogspot.com/2007/04/anton-s.html', 1);

-- --------------------------------------------------------

--
-- 表的结构 `jm_posts_annotation`
--
-- 创建时间: 2013 年 02 月 08 日 04:14
-- 最后更新: 2013 年 02 月 08 日 04:14
--

CREATE TABLE IF NOT EXISTS `jm_posts_annotation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(20) DEFAULT NULL,
  `annotation_phrase` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `annotation_explanation` text COLLATE utf8_unicode_ci,
  `annotation_author_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `jm_posts_type`
--
-- 创建时间: 2013 年 02 月 08 日 04:14
-- 最后更新: 2013 年 02 月 08 日 04:14
--

CREATE TABLE IF NOT EXISTS `jm_posts_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `post_type_name` varbinary(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `jm_posts_type`
--

INSERT INTO `jm_posts_type` (`id`, `post_type_name`) VALUES
(1, 'news'),
(2, 'testimony'),
(3, 'announcement');

-- --------------------------------------------------------

--
-- 表的结构 `jm_sessions`
--
-- 创建时间: 2013 年 02 月 08 日 04:14
-- 最后更新: 2013 年 02 月 08 日 04:14
--

CREATE TABLE IF NOT EXISTS `jm_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_last_access` int(10) unsigned DEFAULT NULL,
  `session_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `jm_sessions`
--

INSERT INTO `jm_sessions` (`session_id`, `session_last_access`, `session_data`) VALUES
('grtfbp09np4mkktvbphr5et8q4', 1335252600, 'sess_last_access|i:1335252600;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53";sess_last_regenerated|i:1335252581;'),
('qn7tqm3irju3od0v0bst7k9er5', 1335261161, 'sess_last_access|i:1335261161;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1335261153;'),
('ep33nb0abe667269m55ihr3jg6', 1335172798, 'sess_last_access|i:1335172798;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1335172723;'),
('d5ei12qogfvsi1ehkuh69jbgh3', 1335148489, 'sess_last_access|i:1335148489;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53";sess_last_regenerated|i:1335148462;'),
('f6244tuongnbqmrmemaercm973', 1335021471, 'sess_last_access|i:1335021471;sess_ip_address|s:14:"114.83.163.192";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:13.0) Gecko/201204";sess_last_regenerated|i:1335021471;'),
('kje0ovsdqlh9vp854p1jc3elc1', 1334992198, 'sess_last_access|i:1334992198;sess_ip_address|s:14:"114.83.163.192";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.19 (K";sess_last_regenerated|i:1334992197;'),
('9bo8cn8uh02m598g0ete6lk402', 1334738311, 'sess_last_access|i:1334738311;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53";sess_last_regenerated|i:1334738139;'),
('srf3cfi3ujn84b13cr16u37o51', 1334736846, 'sess_last_access|i:1334736846;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53";sess_last_regenerated|i:1334736846;'),
('9esvtbo7evn2daqolk314u0vv2', 1335344288, 'sess_last_access|i:1335344288;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1335344288;'),
('9oc42h03n7gko6d6dov26a8vj3', 1335345774, 'sess_last_access|i:1335345774;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1335345774;'),
('ttbs11fr173i9mpp03d5s3e2k6', 1335419090, 'sess_last_access|i:1335419090;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1335419090;'),
('eh4af22gtkdpg8mu9u6r8iebg0', 1335422312, 'sess_last_access|i:1335422312;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:10.0) Gecko";sess_last_regenerated|i:1335422312;'),
('tqar9oeq2p2nmhfefpf9p4tp96', 1335433937, 'sess_last_access|i:1335433937;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:10.0.2) Gec";sess_last_regenerated|i:1335433937;'),
('98r1mpsp2etcmop1bvt3gsce93', 1335423315, 'sess_last_access|i:1335423315;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1335423071;'),
('3hq1tblmsjfulpv6hopdj9h8n6', 1335423650, 'sess_last_access|i:1335423650;sess_ip_address|s:14:"173.208.58.138";sess_useragent|s:49:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.7";sess_last_regenerated|i:1335423650;'),
('u4t426bi6ces2bggdda49c9o34', 1335432814, 'sess_last_access|i:1335432814;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Opera/9.80 (Windows NT 6.1; WOW64; U; zh-cn) Prest";sess_last_regenerated|i:1335432814;'),
('25qv2q16f4ffbi97retmo2k740', 1335432839, 'sess_last_access|i:1335432839;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1335432839;'),
('gsd20n6hr5bi7e4dcsf12jalc3', 1335446946, 'sess_last_access|i:1335446946;sess_ip_address|s:13:"58.37.229.191";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.19 (K";sess_last_regenerated|i:1335446946;'),
('ftm25a8170iebocjfffiqrtpd5', 1335514281, 'sess_last_access|i:1335514281;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1335514163;'),
('76m0dhp2idcrtogk1poffrpfu3', 1335605356, 'sess_last_access|i:1335605356;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1335605356;'),
('q7k8hi7l4ma70lpg8r59mn2qh5', 1335607060, 'sess_last_access|i:1335607060;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1335607060;'),
('n3dccbmbtg34u120oslpc6j2i4', 1335684977, 'sess_last_access|i:1335684977;sess_ip_address|s:13:"114.83.167.92";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.19 (K";sess_last_regenerated|i:1335684977;'),
('6oskfhdvop57d2p1vtmirj8lf3', 1335689471, 'sess_last_access|i:1335689471;sess_ip_address|s:13:"114.83.167.92";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.19 (K";sess_last_regenerated|i:1335689471;'),
('p27hu1l20o8535i97tjbcj2t83', 1335690013, 'sess_last_access|i:1335690013;sess_ip_address|s:13:"114.83.167.92";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:9.0.1) Gecko/20100";sess_last_regenerated|i:1335690013;'),
('jdvec41sjkt7c8pulomk2qf6h1', 1335699936, 'sess_last_access|i:1335699936;sess_ip_address|s:13:"114.83.167.92";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:9.0.1) Gecko/20100";sess_last_regenerated|i:1335699936;'),
('ovlu6amvp5o9pg2np2ap8go6j7', 1335773640, 'sess_last_access|i:1335773640;sess_ip_address|s:14:"114.83.163.223";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.19 (K";sess_last_regenerated|i:1335773640;'),
('ntdqovvv63h4uhkloht5o1b0n0', 1336024264, 'sess_last_access|i:1336024264;sess_ip_address|s:10:"74.82.1.19";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1336023994;'),
('50jgj0klrjua5hb3gr1rcq2862', 1336037043, 'sess_last_access|i:1336037043;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1336037043;'),
('hs6n2ph5nd2003j0j2kn75gik0', 1336038688, 'sess_last_access|i:1336038688;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1336038635;'),
('n67upas7p4jqd8j4kphjqhnga3', 1336038369, 'sess_last_access|i:1336038369;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1336038364;'),
('6t0gvteesinoiqmpglqfaaoti0', 1336039227, 'sess_last_access|i:1336039227;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1336039220;'),
('i49ehaa3seqqdo3s226tq23hv6', 1336117202, 'sess_last_access|i:1336117202;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1336117202;'),
('c1figgu9pdi2vesdl6ul6iqmi4', 1336099800, 'sess_last_access|i:1336099800;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1336099800;'),
('qv4e02j0q4t9l6i3j7mtn6cql5', 1336122490, 'sess_last_access|i:1336122490;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1336122490;'),
('b8sfla8s772ipfqr8ugjceose7', 1336124314, 'sess_last_access|i:1336124314;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1336124314;'),
('6ul48um6agq54chgbovuqvg6k4', 1336224266, 'sess_last_access|i:1336224266;sess_ip_address|s:12:"61.172.76.70";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:9.0.1) Gecko/20100";sess_last_regenerated|i:1336224223;'),
('c4h07ln40tqn1t939pmssd0m81', 1336272505, 'sess_last_access|i:1336272505;sess_ip_address|s:13:"61.172.79.103";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:9.0.1) Gecko/20100";sess_last_regenerated|i:1336272288;'),
('nma018hl7qfe0obnqcvobfh1j3', 1336380570, 'sess_last_access|i:1336380570;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1336380570;'),
('3415aquj5lakplp7ft6ot48lo1', 1336379954, 'sess_last_access|i:1336379954;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1336379954;'),
('ja0n38nrtl9odc8dt71fnuvo42', 1336470476, 'sess_last_access|i:1336470476;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1336470476;'),
('kvvjar8l2ocf5hmj719p6mq4n6', 1336470479, 'sess_last_access|i:1336470479;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1336470479;'),
('pi71klbmio7gpkhvfvtn4pt6g0', 1336465160, 'sess_last_access|i:1336465160;sess_ip_address|s:13:"121.34.103.62";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1336465160;'),
('7ldbqd4jbd37vcat60fqcsop21', 1336462715, 'sess_last_access|i:1336462715;sess_ip_address|s:14:"183.62.115.199";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)";sess_last_regenerated|i:1336462715;'),
('2c3ma3d04il6f1nst45q8i0uj0', 1336465148, 'sess_last_access|i:1336465148;sess_ip_address|s:13:"121.34.103.62";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1336465148;'),
('o61tjuacgrco4kahsuu5vl9k80', 1336463316, 'sess_last_access|i:1336463316;sess_ip_address|s:14:"180.153.206.34";sess_useragent|s:11:"Mozilla/4.0";sess_last_regenerated|i:1336463316;'),
('lgb0rdem7cjprd386vovfs57g1', 1336467457, 'sess_last_access|i:1336467457;sess_ip_address|s:12:"128.30.52.70";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336467457;'),
('gsn6ttmu8mk6plioq3m7p96eq6', 1336467494, 'sess_last_access|i:1336467494;sess_ip_address|s:12:"128.30.52.73";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336467494;'),
('lt5h07nehapigggrjtrktnk102', 1336469929, 'sess_last_access|i:1336469929;sess_ip_address|s:12:"128.30.52.73";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336469929;'),
('9ae5f8uve15374254tf8mnhgu5', 1336470001, 'sess_last_access|i:1336470001;sess_ip_address|s:12:"128.30.52.70";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336470001;'),
('22coa53paj7g0kqb15oaut4ad3', 1336470124, 'sess_last_access|i:1336470124;sess_ip_address|s:12:"128.30.52.73";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336470124;'),
('hmhjaump85tekjirvqmsharv90', 1336470178, 'sess_last_access|i:1336470178;sess_ip_address|s:12:"128.30.52.73";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336470178;'),
('4t7f5mppgqfnbf9hmqcbkggdt1', 1336470258, 'sess_last_access|i:1336470258;sess_ip_address|s:12:"128.30.52.73";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336470258;'),
('16sr528rr4soifjevc3cm9rks1', 1336470364, 'sess_last_access|i:1336470364;sess_ip_address|s:12:"128.30.52.73";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336470364;'),
('k0oc6taoieaqho3f2qh3a4qos7', 1336557019, 'sess_last_access|i:1336557019;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1336557019;'),
('6rvar791pg2slo9jvvfruevf27', 1336531325, 'sess_last_access|i:1336531325;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53";sess_last_regenerated|i:1336531325;'),
('v7irc4108pidekdunls1lmciv3', 1336531397, 'sess_last_access|i:1336531397;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1336531386;'),
('7b8vka3f8al0dkng9eo4pcvap7', 1336532537, 'sess_last_access|i:1336532537;sess_ip_address|s:12:"128.30.52.71";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336532537;'),
('3b86v3qf1ajgabn4cr19jat034', 1336534687, 'sess_last_access|i:1336534687;sess_ip_address|s:12:"128.30.52.73";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336534687;'),
('03c8hikkl9nteni3o26rnpghs3', 1336534761, 'sess_last_access|i:1336534761;sess_ip_address|s:12:"128.30.52.71";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336534761;'),
('vuj0qb0vavu30m5h804h9874m4', 1336534821, 'sess_last_access|i:1336534821;sess_ip_address|s:12:"128.30.52.71";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336534821;'),
('2gfc4aq7mbfd7vifonb18bh267', 1336535029, 'sess_last_access|i:1336535029;sess_ip_address|s:12:"128.30.52.73";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336535029;'),
('gl8i3g5p0ar2483t3cis4b5732', 1336549340, 'sess_last_access|i:1336549340;sess_ip_address|s:12:"128.30.52.70";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336549340;'),
('e0anequtaprum557m8bosb6eo0', 1336643888, 'sess_last_access|i:1336643888;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1336643887;'),
('5fb6q284i6qt6g1bufqpiss892', 1336643083, 'sess_last_access|i:1336643083;sess_ip_address|s:12:"128.30.52.65";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336643083;'),
('kbpakj1opevi5v35mk2r39cvh6', 1336728963, 'sess_last_access|i:1336728963;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1336728919;'),
('q9nv38qjkvp7iqste3a6uj9sk5', 1336700759, 'sess_last_access|i:1336700759;sess_ip_address|s:12:"128.30.52.70";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336700759;'),
('4cjrfpi54vdkacov9men4aloq2', 1336706926, 'sess_last_access|i:1336706926;sess_ip_address|s:12:"128.30.52.65";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336706926;'),
('a8vmf04d7mkq61jloqogj3r7c6', 1336706932, 'sess_last_access|i:1336706932;sess_ip_address|s:12:"128.30.52.71";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336706932;'),
('66egvg05gruu1198g3tsi86uo1', 1336706933, 'sess_last_access|i:1336706933;sess_ip_address|s:12:"128.30.52.95";sess_useragent|s:42:"Jigsaw/2.2.5 W3C_CSS_Validator_JFouffa/2.0";sess_last_regenerated|i:1336706933;'),
('et88krb94aidfg8h7134elhrk3', 1336706934, 'sess_last_access|i:1336706934;sess_ip_address|s:12:"128.30.52.95";sess_useragent|s:42:"Jigsaw/2.2.5 W3C_CSS_Validator_JFouffa/2.0";sess_last_regenerated|i:1336706934;'),
('2bgapvprai09svpn7d6cvful00', 1336706935, 'sess_last_access|i:1336706935;sess_ip_address|s:12:"128.30.52.73";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336706935;'),
('da2rg8k6dfklllubtgn2bm5to4', 1336717724, 'sess_last_access|i:1336717724;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1336717724;'),
('dotlqev2j7llm3olktgmkhjjm4', 1336717852, 'sess_last_access|i:1336717852;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1336717852;'),
('9qa78442e283s3nmmb678pfqv1', 1336719108, 'sess_last_access|i:1336719108;sess_ip_address|s:12:"128.30.52.73";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1336719108;'),
('6nhkr5c5ukh80gml83kmvjsqk3', 1337076123, 'sess_last_access|i:1337076123;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1337076098;'),
('bv51cgq2bvnvuqdqainoctehv5', 1338196148, 'sess_last_access|i:1338196148;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1338196148;'),
('iiepfq3hmecqpvevhbor8pmb33', 1338284859, 'sess_last_access|i:1338284859;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1338284846;'),
('smb2l25c10k2q9o173n4s1ck40', 1338260353, 'sess_last_access|i:1338260353;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1338260353;'),
('af7d9nk2cphh48em7mvp7aanj0', 1338371242, 'sess_last_access|i:1338371242;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1338371221;'),
('oa787js4d5p1oq0q3ofem3vjc2', 1338396480, 'sess_last_access|i:1338396480;sess_ip_address|s:14:"180.155.55.101";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1338396439;'),
('3k95g06eeh8476lell5ahvkg80', 1338432139, 'sess_last_access|i:1338432139;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1338432139;'),
('b7se08f5bc88uvjkd265iaglc0', 1338515065, 'sess_last_access|i:1338515065;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1338515065;'),
('hui0vu3rrm1kb1sersj2f7lf16', 1338559165, 'sess_last_access|i:1338559165;sess_ip_address|s:13:"61.172.77.111";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1338559165;'),
('a9n8rqqgr1td4p29foseg4i394', 1338644688, 'sess_last_access|i:1338644688;sess_ip_address|s:13:"114.83.166.36";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1338644669;'),
('q0tt4pe6blkiftsvs9qbdvlk75', 1338698389, 'sess_last_access|i:1338698389;sess_ip_address|s:13:"114.83.221.46";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1338698389;'),
('dfhhqc4jnts7bj12pocn94f0t5', 1338745593, 'sess_last_access|i:1338745593;sess_ip_address|s:12:"58.37.10.147";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1338745593;'),
('mpb3ip0uabo52m6b6egk56oh45', 1338745717, 'sess_last_access|i:1338745717;sess_ip_address|s:12:"58.37.10.147";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1338745717;'),
('3ode0e3ut7el988m8h23qqsls1', 1338792246, 'sess_last_access|i:1338792246;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1338792246;'),
('1i8dlhljgq1rd0vfmvrc2bpbu2', 1338817423, 'sess_last_access|i:1338817423;sess_ip_address|s:12:"58.37.10.147";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1338817423;'),
('8h5htavghm34cpilmu4sugdp67', 1338814630, 'sess_last_access|i:1338814630;sess_ip_address|s:14:"110.75.162.238";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;";sess_last_regenerated|i:1338814630;'),
('85tkc1uo7q860k5ch1994mfhj0', 1338815080, 'sess_last_access|i:1338815080;sess_ip_address|s:14:"174.36.165.243";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1338815080;'),
('s2bjn4fg5uh85qo0t2ck0jh3d6', 1338815436, 'sess_last_access|i:1338815436;sess_ip_address|s:14:"110.75.167.221";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1;";sess_last_regenerated|i:1338815436;'),
('m78hc6ch9d1ss1gvf57t44sd67', 1338825425, 'sess_last_access|i:1338825425;sess_ip_address|s:12:"58.37.10.147";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1338825425;'),
('3111klhbv1q3pb7eoq0saqtuo6', 1338858569, 'sess_last_access|i:1338858568;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1338858568;'),
('mk2gsjoko0ajpspm6clhi7cn94', 1338901490, 'sess_last_access|i:1338901490;sess_ip_address|s:12:"58.37.10.147";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1338901490;'),
('vna8t826g14isdg4om5t6bqfc7', 1338911121, 'sess_last_access|i:1338911121;sess_ip_address|s:12:"58.37.10.147";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1338911121;'),
('mrtn66ob2bdkojkn6vhcfqmbq5', 1338954992, 'sess_last_access|i:1338954992;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1338954992;'),
('q18jkchp41grfodddqtssk59p7', 1338971401, 'sess_last_access|i:1338971401;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko";sess_last_regenerated|i:1338971401;'),
('as9tsekrg6555a89bf47ufgns4', 1339080388, 'sess_last_access|i:1339080388;sess_ip_address|s:11:"58.37.11.93";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1339080388;'),
('9uumfnjl9k28jg84f47lrvj7a3', 1339168193, 'sess_last_access|i:1339168193;sess_ip_address|s:13:"114.83.171.86";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1339168067;'),
('evm5un9oai9k415hvs0sghdvv5', 1339166040, 'sess_last_access|i:1339166040;sess_ip_address|s:13:"114.83.171.86";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1339166027;'),
('ca72q6d4tjag42phaf3i7276r4', 1339166624, 'sess_last_access|i:1339166624;sess_ip_address|s:12:"128.30.52.73";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1339166624;'),
('1qb8dmfndj78f3rsqpchlre8o1', 1339167869, 'sess_last_access|i:1339167869;sess_ip_address|s:12:"128.30.52.70";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1339167869;'),
('1d8nkjbdj54hg4tvqqvk432g96', 1339167879, 'sess_last_access|i:1339167879;sess_ip_address|s:12:"128.30.52.71";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1339167879;'),
('n58fcutpoauu3pfejnbof9lco0', 1339250972, 'sess_last_access|i:1339250972;sess_ip_address|s:14:"114.83.166.200";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1339250685;'),
('u9r1khpm4cvr1jneccc4mvlk36', 1339248050, 'sess_last_access|i:1339248050;sess_ip_address|s:14:"114.83.166.200";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1339248050;'),
('am82k2o07paaurbjil4t9sg984', 1339291665, 'sess_last_access|i:1339291665;sess_ip_address|s:14:"220.181.141.69";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)";sess_last_regenerated|i:1339291665;'),
('3scm510dg2819kbk2ot5ls4j17', 1339346336, 'sess_last_access|i:1339346336;sess_ip_address|s:11:"58.37.11.93";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1339346336;'),
('oiuc11c401ae6qh63j6q53ija6', 1339383537, 'sess_last_access|i:1339383537;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1339383537;'),
('94cdibshoflt9d46ctkcaomla0', 1339383991, 'sess_last_access|i:1339383991;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1;";sess_last_regenerated|i:1339383859;'),
('t21u17klbccjol7fpe4147jfo4', 1339383613, 'sess_last_access|i:1339383613;sess_ip_address|s:14:"180.153.206.27";sess_useragent|s:11:"Mozilla/4.0";sess_last_regenerated|i:1339383613;'),
('1ul5e5034ju5viopu0u87q1ml2', 1339383635, 'sess_last_access|i:1339383635;sess_ip_address|s:13:"113.97.93.159";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1339383635;'),
('os8ugrdlojcae84d6m7ih1bsb0', 1339383639, 'sess_last_access|i:1339383639;sess_ip_address|s:13:"113.97.93.159";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1339383639;'),
('0dlis73ei8rult8ahp1gthiu01', 1339383678, 'sess_last_access|i:1339383678;sess_ip_address|s:13:"101.226.52.80";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)";sess_last_regenerated|i:1339383678;'),
('2ecrur7m0umakijp02jci3ag17', 1339383684, 'sess_last_access|i:1339383684;sess_ip_address|s:13:"113.97.93.159";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1339383684;'),
('sspskiub9s37v01s3asjomiop6', 1339383873, 'sess_last_access|i:1339383873;sess_ip_address|s:13:"113.97.93.159";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1339383873;'),
('engo1najvi7buiuolq4aamteu1', 1339424911, 'sess_last_access|i:1339424911;sess_ip_address|s:11:"58.37.11.93";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1339424911;'),
('0ritr6o8negjm5kus6j25vlb54', 1339495310, 'sess_last_access|i:1339495310;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1339495184;'),
('gr0i70skjcq3i882atkmv7fk13', 1339477177, 'sess_last_access|i:1339477177;sess_ip_address|s:15:"180.153.201.215";sess_useragent|s:11:"Mozilla/4.0";sess_last_regenerated|i:1339477177;'),
('ipc3593knaqpicgf0c214sciu1', 1339477218, 'sess_last_access|i:1339477218;sess_ip_address|s:12:"114.237.7.20";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1339477218;'),
('kejsu469iqh42l09lq8nu0m8d7', 1339477503, 'sess_last_access|i:1339477503;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1339477493;'),
('t8q53lthgerslie273lkra7hf7', 1339491480, 'sess_last_access|i:1339491480;sess_ip_address|s:14:"222.187.199.56";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1339491480;'),
('cqadklb89a0dr903kp2vkj1i05', 1339493585, 'sess_last_access|i:1339493585;sess_ip_address|s:11:"94.6.26.183";sess_useragent|s:50:"Mozilla/5.0 (Linux; U; Android 4.0.3; zh-cn; Sensa";sess_last_regenerated|i:1339493585;'),
('u0supscghfl3ae2aq020smm5b2', 1339515228, 'sess_last_access|i:1339515228;sess_ip_address|s:11:"58.37.11.93";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1339515228;'),
('t9v11o8ju45psf41te2jq2gq51', 1339581393, 'sess_last_access|i:1339581393;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1339581386;'),
('l2f6uriggfq9sb05mus93qaf45', 1339579708, 'sess_last_access|i:1339579708;sess_ip_address|s:12:"65.49.68.158";sess_useragent|s:50:"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;";sess_last_regenerated|i:1339579708;'),
('l1ivvgnfarkcpdcvv7hgl2kgj0', 1339594302, 'sess_last_access|i:1339594302;sess_ip_address|s:14:"180.155.55.180";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1339594302;'),
('l7000cteqcsq5t7lbr5e2jjq84', 1339657625, 'sess_last_access|i:1339657625;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1339657625;'),
('bdodu8fpb92vq2utb81t2enp76', 1339680542, 'sess_last_access|i:1339680542;sess_ip_address|s:14:"180.155.55.180";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1339680542;'),
('fc30s1mmq5nqjfc0apfnn7oju6', 1339754254, 'sess_last_access|i:1339754254;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1339754250;'),
('o0eifb5mj73rb2pe11jbvvgl51', 1339745746, 'sess_last_access|i:1339745746;sess_ip_address|s:15:"180.127.212.156";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1339745746;'),
('46jm8o1p4up87e7jsivhq3d2l6', 1339925897, 'sess_last_access|i:1339925897;sess_ip_address|s:14:"114.237.56.194";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1339925897;'),
('19lkpb32h5ialkonucek05o2g0', 1340006815, 'sess_last_access|i:1340006815;sess_ip_address|s:15:"180.127.209.225";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1340006815;'),
('l1qa8ouk4d4ab1g0360hgtbns2', 1340017785, 'sess_last_access|i:1340017785;sess_ip_address|s:14:"220.181.141.69";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)";sess_last_regenerated|i:1340017785;'),
('rpckuvt3jj5o97b41ckgqtppr2', 1340041891, 'sess_last_access|i:1340041890;sess_ip_address|s:14:"220.181.141.69";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)";sess_last_regenerated|i:1340041890;'),
('53k5gf93hqvj2vc3s7v0nm39s5', 1340170664, 'sess_last_access|i:1340170663;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1340170663;'),
('2oltclfigba4oi27pif09ted41', 1340210201, 'sess_last_access|i:1340210201;sess_ip_address|s:11:"58.37.10.22";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340210201;'),
('1ilfll4n3r0i2qpm9te1i3la86', 1340271285, 'sess_last_access|i:1340271284;sess_ip_address|s:11:"58.37.10.22";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340271016;'),
('rn25qc5avk76jrm4b16qhjhaf5', 1340249451, 'sess_last_access|i:1340249450;sess_ip_address|s:14:"101.226.65.111";sess_useragent|s:11:"Mozilla/4.0";sess_last_regenerated|i:1340249450;'),
('f1vggrl9tp89qitbfk1epmupl1', 1340249490, 'sess_last_access|i:1340249490;sess_ip_address|s:13:"121.23.161.88";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1340249490;'),
('tbiie6g27fti0t316bcsjl5mu5', 1340249522, 'sess_last_access|i:1340249521;sess_ip_address|s:13:"113.142.24.91";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)";sess_last_regenerated|i:1340249521;'),
('aq0bf0ochst882q3p8h62vrn30', 1340254945, 'sess_last_access|i:1340254945;sess_ip_address|s:14:"114.237.55.149";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1340254945;'),
('bufpg0gr1ssbrbhb5aolctoq73', 1340299999, 'sess_last_access|i:1340299999;sess_ip_address|s:14:"98.195.149.109";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1;";sess_last_regenerated|i:1340299999;'),
('kv60ajjicbp2ei114viqicj6r4', 1340356279, 'sess_last_access|i:1340356279;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340356221;'),
('time10e8h82rtkk6b202vd50h1', 1340346969, 'sess_last_access|i:1340346969;sess_ip_address|s:13:"114.237.53.14";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1340346969;'),
('a1n2l6pqen71gr81ftba6lu207', 1340370414, 'sess_last_access|i:1340370414;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340370414;'),
('grgvqpqeblfimvp58ldd2brgn2', 1340370439, 'sess_last_access|i:1340370439;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340370439;'),
('g622fnrq6paen49f40slaa0e62', 1340373545, 'sess_last_access|i:1340373545;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340373533;'),
('477tnmtuugcovmoa4fbi3tsu53', 1340464248, 'sess_last_access|i:1340464247;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340464195;'),
('url8qnlku72e92c5jtl80vhn65', 1340519359, 'sess_last_access|i:1340519359;sess_ip_address|s:13:"114.83.221.46";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340519331;'),
('ee585kvdshvfndbh7kgb34fhb1', 1340544478, 'sess_last_access|i:1340544478;sess_ip_address|s:14:"180.155.54.108";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340544478;test|s:10:"test_value";'),
('4u8i1de1rt4efm29erf1asb3s3', 1340550295, 'sess_last_access|i:1340550292;sess_ip_address|s:14:"180.155.54.108";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340550292;test|s:10:"test_value";'),
('11crdkskg220ck4tahf71hvug0', 1340610582, 'sess_last_access|i:1340610582;sess_ip_address|s:14:"114.237.19.254";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1340610582;'),
('aj0gbaifkgohtql940h7p1ukg2', 1340618244, 'sess_last_access|i:1340618244;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1340618244;'),
('j4ccqth0nl5m3debso4o85k0i2', 1340614567, 'sess_last_access|i:1340614566;sess_ip_address|s:14:"101.226.33.221";sess_useragent|s:11:"Mozilla/4.0";sess_last_regenerated|i:1340614566;'),
('orh6tg25m15cam19rmh8mfgpa5', 1340614579, 'sess_last_access|i:1340614579;sess_ip_address|s:14:"121.23.161.182";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1340614579;'),
('mghbc5306r3t8esnbm9okten31', 1340614621, 'sess_last_access|i:1340614621;sess_ip_address|s:12:"113.142.9.34";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)";sess_last_regenerated|i:1340614621;'),
('8c5fjut9itgrase78iut876jc2', 1340623636, 'sess_last_access|i:1340623636;sess_ip_address|s:13:"58.37.227.205";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340623636;'),
('g4gsrcr29le2qpacnaqpu90b93', 1340624825, 'sess_last_access|i:1340624825;sess_ip_address|s:12:"49.88.65.196";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1340624825;'),
('8ahp0vs25qeuuq62dtupcfgq01', 1340719088, 'sess_last_access|i:1340719087;sess_ip_address|s:13:"58.37.227.205";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340718821;test|s:10:"test_value";'),
('jmqeb0gjsejmfp00gdfoknctf4', 1340784597, 'sess_last_access|i:1340784596;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1340784596;'),
('2bggr467qj9fce4jr8fufj6ka6', 1340790237, 'sess_last_access|i:1340790237;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53";sess_last_regenerated|i:1340790088;'),
('6ber5befqj82b6iq1doinuaun6', 1340803871, 'sess_last_access|i:1340803871;sess_ip_address|s:13:"58.37.227.205";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340803871;'),
('2q8napsh8g6ak1j8d0flk62gj7', 1340853092, 'sess_last_access|i:1340853091;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53";sess_last_regenerated|i:1340853091;'),
('84bsipm5h6a2elm5slotor0801', 1340853103, 'sess_last_access|i:1340853103;sess_ip_address|s:13:"112.65.193.13";sess_useragent|s:11:"Mozilla/4.0";sess_last_regenerated|i:1340853103;'),
('cdrd8atei87s13fl5m3appkon1', 1340853105, 'sess_last_access|i:1340853104;sess_ip_address|s:13:"222.73.75.245";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; MSIE 8.0; Windo";sess_last_regenerated|i:1340853104;'),
('uuntc89a4ur6d101do8df2epe6', 1340853161, 'sess_last_access|i:1340853161;sess_ip_address|s:14:"112.95.240.189";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)";sess_last_regenerated|i:1340853161;'),
('l71nqe1juklndrpd2j3lnt5o66', 1340853186, 'sess_last_access|i:1340853186;sess_ip_address|s:14:"119.250.90.150";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1340853186;'),
('6p82usprf4a9e3h2m03av8d6u3', 1340936751, 'sess_last_access|i:1340936751;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1340936751;'),
('qv6b2s4hpiav94l3blk0j7ico1', 1340985648, 'sess_last_access|i:1340985646;sess_ip_address|s:12:"58.34.106.99";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1340985646;'),
('cv2iasvt6m1oef2rqjcrp2nvb3', 1341021417, 'sess_last_access|i:1341021417;sess_ip_address|s:14:"114.237.28.201";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1341021417;'),
('kag14kg3j69bnkqfe91c8am0v5', 1341071220, 'sess_last_access|i:1341071219;sess_ip_address|s:12:"58.34.106.99";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1341071219;'),
('sqcbn67su7rp9vcnj21bqncgl7', 1341114562, 'sess_last_access|i:1341114562;sess_ip_address|s:15:"180.127.215.130";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1341114562;'),
('80rg33j4asj3feusskqs0ovdo7', 1341155141, 'sess_last_access|i:1341155139;sess_ip_address|s:12:"58.34.106.99";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1341155139;'),
('okc2il6p50t6sjm1uj2kkir233', 1341218859, 'sess_last_access|i:1341218857;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1341218782;'),
('u3oecbl9r7peg5li6f8mgb7135', 1341259929, 'sess_last_access|i:1341259928;sess_ip_address|s:12:"58.34.106.99";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1341259912;'),
('9q9q3jous1dcmu2adaj3kltch0', 1341290778, 'sess_last_access|i:1341290777;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1341290777;'),
('8ij04cbprpjr9bgq2npojf4c53', 1341299191, 'sess_last_access|i:1341299190;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1341299190;'),
('q5fu3d3jndn97uojq6dlqtb8i4', 1341309295, 'sess_last_access|i:1341309294;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1341309294;'),
('sc66lq753nth66rpl6g0k5tur6', 1341323710, 'sess_last_access|i:1341323710;sess_ip_address|s:11:"114.237.7.5";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1341323710;'),
('n79dru2fm76c4imn0jree3ltr1', 1341327666, 'sess_last_access|i:1341327666;sess_ip_address|s:12:"58.34.106.99";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1341327666;'),
('enrti0j8mp5k166n6k0ucoko22', 1341418076, 'sess_last_access|i:1341418075;sess_ip_address|s:12:"58.34.111.79";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1341418024;'),
('1ce6ao5gsmoja7q9iqnp5rq1c0', 1341419206, 'sess_last_access|i:1341419205;sess_ip_address|s:12:"58.34.111.79";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1341419205;'),
('2o42l2i277d9f0kk72sk9gias3', 1341419531, 'sess_last_access|i:1341419529;sess_ip_address|s:14:"220.181.141.69";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)";sess_last_regenerated|i:1341419529;'),
('n5cq3g1efr9urvediq0jgubia0', 1341480881, 'sess_last_access|i:1341480880;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1341480880;'),
('sjaikpp5qg857io51l65tprlr5', 1341489453, 'sess_last_access|i:1341489453;sess_ip_address|s:12:"58.34.111.79";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1341489453;'),
('saf6cavqo33aal6gk789t5pjf5', 1341497585, 'sess_last_access|i:1341497584;sess_ip_address|s:12:"58.34.111.79";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1341497584;'),
('608vu11gu5ve5s76e3hvokkai7', 1341558310, 'sess_last_access|i:1341558309;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1341558309;'),
('8lqsfib9g1e595i202se7nrti0', 1341568295, 'sess_last_access|i:1341568295;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1341568295;'),
('clfb74c4v2jj0ltd4jguii4335', 1341568379, 'sess_last_access|i:1341568378;sess_ip_address|s:15:"180.153.160.199";sess_useragent|s:11:"Mozilla/4.0";sess_last_regenerated|i:1341568378;'),
('0l11l6aagq83rdsithvivj2mg3', 1341568389, 'sess_last_access|i:1341568388;sess_ip_address|s:14:"114.237.22.201";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1341568388;'),
('uupdft9dkt7tr5h8utj5f99ei5', 1341568424, 'sess_last_access|i:1341568423;sess_ip_address|s:13:"58.251.58.191";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)";sess_last_regenerated|i:1341568423;'),
('oepp2f529d9rp97ltjbruss3a1', 1341574767, 'sess_last_access|i:1341574766;sess_ip_address|s:14:"220.181.141.69";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)";sess_last_regenerated|i:1341574766;'),
('71s0s5fkgepbb8m21rrdug5l76', 1341640495, 'sess_last_access|i:1341640495;sess_ip_address|s:11:"65.49.2.182";sess_useragent|s:50:"Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv";sess_last_regenerated|i:1341640495;'),
('36h0povt9fj8a8q8oodbhfta06', 1341640668, 'sess_last_access|i:1341640668;sess_ip_address|s:11:"65.49.2.182";sess_useragent|s:50:"Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv";sess_last_regenerated|i:1341640574;'),
('g6p89o6phs4j6d4e3ifkg27am0', 1341647501, 'sess_last_access|i:1341647501;sess_ip_address|s:11:"65.49.2.182";sess_useragent|s:50:"Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv";sess_last_regenerated|i:1341647501;'),
('2inf5ocvifuc4mns8s74lb55l2', 1341658730, 'sess_last_access|i:1341658730;sess_ip_address|s:12:"65.49.68.164";sess_useragent|s:50:"Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv";sess_last_regenerated|i:1341658730;'),
('5rjbp3l3jfovufi3gca7e3hor1', 1341667611, 'sess_last_access|i:1341667610;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:50:"Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv";sess_last_regenerated|i:1341667610;'),
('3h7godfg3056fiu2s0f9ma7se2', 1341747515, 'sess_last_access|i:1341747514;sess_ip_address|s:13:"58.34.106.172";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1341747514;'),
('2fvab2hctj4p2a3vt1hmj0tgp4', 1341818611, 'sess_last_access|i:1341818611;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1341818611;'),
('nir3fpc5erhfkuqh7mqgaiq7k6', 1341840763, 'sess_last_access|i:1341840761;sess_ip_address|s:12:"61.173.71.26";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1341840761;'),
('jkajr8p1nmub824tfhr582oml1', 1341834531, 'sess_last_access|i:1341834531;sess_ip_address|s:12:"128.30.52.65";sess_useragent|s:17:"W3C_Validator/1.3";sess_last_regenerated|i:1341834531;'),
('fpk4gr0gcd7fvunt9lqk038ra5', 1341913964, 'sess_last_access|i:1341913963;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1341913963;'),
('vb7sg5dmeps2djgccumvmue583', 1341930419, 'sess_last_access|i:1341930401;sess_ip_address|s:12:"61.173.71.26";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1341930147;'),
('lpkq5hrkf5ae9jaocm9kica2g2', 1341970536, 'sess_last_access|i:1341970532;sess_ip_address|s:12:"61.173.71.26";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1341970430;'),
('34bm1amblfghdlbcjrlbk16e56', 1341970623, 'sess_last_access|i:1341970623;sess_ip_address|s:12:"65.49.68.191";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1341970623;'),
('bkbpdi9k51k5r19376q9o4po82', 1341994315, 'sess_last_access|i:1341994314;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1341994314;'),
('g3u93mt47gh164ran1h7o04kq0', 1341980382, 'sess_last_access|i:1341980380;sess_ip_address|s:14:"220.181.141.69";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)";sess_last_regenerated|i:1341980380;'),
('3frhb5jbfhq74hurnah866l9s2', 1342023381, 'sess_last_access|i:1342023380;sess_ip_address|s:12:"61.173.70.58";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1342023380;'),
('jam87kpejvfb20dggvic2m0a42', 1342057000, 'sess_last_access|i:1342057000;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1342057000;'),
('movfd3rgicgmguuvmv82jnga10', 1342058435, 'sess_last_access|i:1342058434;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1342058434;'),
('so4nkrnobqac1cor5f5necp4a0', 1342087214, 'sess_last_access|i:1342087213;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1342087213;'),
('3qh2g3ibnmk2v2acmb3ep6f193', 1342101574, 'sess_last_access|i:1342101572;sess_ip_address|s:12:"61.173.70.58";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1342101572;test|s:10:"test_value";'),
('hueitbf19r0phifpod4fcf6qb4', 1342144189, 'sess_last_access|i:1342144188;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1342144188;'),
('3a4vq18sg032g1ccegq3eu27c0', 1342189727, 'sess_last_access|i:1342189725;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1342189725;'),
('iq5nobvqrt7dsoqbmu5s9s4nf6', 1342255393, 'sess_last_access|i:1342255392;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1342255392;'),
('5s84a2jrdu5kjj4rvh3u789f20', 1342255436, 'sess_last_access|i:1342255436;sess_ip_address|s:12:"65.49.68.188";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1342255436;'),
('234rt8gmdf8dl89k75kj3epf55', 1342518440, 'sess_last_access|i:1342518439;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1342518343;'),
('gi48l1q4iuur31lgphq8b4n0u3', 1342585598, 'sess_last_access|i:1342585597;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko";sess_last_regenerated|i:1342585597;'),
('i359sg3f90stlu5btac6ak6cb2', 1342625922, 'sess_last_access|i:1342625921;sess_ip_address|s:13:"61.173.69.144";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1342625921;'),
('frudinb2g8ul265rffiir92rn1', 1342688103, 'sess_last_access|i:1342688102;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1342687907;'),
('9d3n03a8c10oc77uu6l5kvuq21', 1342716393, 'sess_last_access|i:1342716393;sess_ip_address|s:13:"61.173.69.144";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1342716393;'),
('4u2lppl1dnk1eaf5d9gcta2ab4', 1342794222, 'sess_last_access|i:1342794162;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:50:"Mozilla/5.0 (iPad; CPU OS 5_1_1 like Mac OS X) App";sess_last_regenerated|i:1342794162;'),
('3i9qsl9s3rl7qud6dre7e1s8e4', 1342715727, 'sess_last_access|i:1342715723;sess_ip_address|s:13:"61.173.69.144";sess_useragent|s:50:"Mozilla/5.0 (iPad; CPU OS 5_1_1 like Mac OS X) App";sess_last_regenerated|i:1342715665;'),
('hq4pl417e55hfat5jjqol9aa80', 1342773685, 'sess_last_access|i:1342773684;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1342773497;'),
('nesnou3rork4jo2tkl5em18dn2', 1342795300, 'sess_last_access|i:1342795297;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:49:"Mozilla/5.0 (iPad; U; CPU OS 5_1_1 like Mac OS X;";sess_last_regenerated|i:1342795297;'),
('6ss8iuteaeahnr290epva2rme5', 1342855639, 'sess_last_access|i:1342855639;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1342855639;'),
('6firdt2nle4d7df68mst1rr365', 1342937874, 'sess_last_access|i:1342937874;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:49:"Mozilla/5.0 (iPad; U; CPU OS 5_1_1 like Mac OS X;";sess_last_regenerated|i:1342937874;'),
('458687s2vcujdq6v5unnae2un2', 1342937946, 'sess_last_access|i:1342937945;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:49:"Mozilla/5.0 (iPad; U; CPU OS 5_1_1 like Mac OS X;";sess_last_regenerated|i:1342937945;'),
('fvueu67td128t932dca13hvl22', 1342954036, 'sess_last_access|i:1342954035;sess_ip_address|s:14:"114.237.44.155";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1;";sess_last_regenerated|i:1342954035;');
INSERT INTO `jm_sessions` (`session_id`, `session_last_access`, `session_data`) VALUES
('rqf2he66d339ma9kfh0rtif0c5', 1342954293, 'sess_last_access|i:1342954290;sess_ip_address|s:14:"220.181.141.69";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)";sess_last_regenerated|i:1342954290;'),
('93tmka7nf2ami7l9claq6sqak3', 1342965921, 'sess_last_access|i:1342965920;sess_ip_address|s:13:"61.173.69.144";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1342965920;'),
('3q3h81q6k95g6dmn56u9ch6r74', 1343226016, 'sess_last_access|i:1343226016;sess_ip_address|s:12:"61.173.71.44";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1343226016;'),
('585vr0gds5rea8hr7k49gh0n13', 1343264462, 'sess_last_access|i:1343264461;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1343264461;'),
('ke57o2l1oicpmeuu0alh1unq51', 1343453235, 'sess_last_access|i:1343453234;sess_ip_address|s:12:"58.40.61.217";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1343453234;'),
('161tkdohhl0asijjqkpcpdtbe6', 1343574467, 'sess_last_access|i:1343574465;sess_ip_address|s:12:"61.173.70.34";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1343574360;'),
('h6a3sln80n7buu00fjh0lcstb6', 1343805266, 'sess_last_access|i:1343805265;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1343805265;'),
('mrhst0d9oq0vct3imdtcj73d32', 1343897901, 'sess_last_access|i:1343897900;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1343897900;'),
('aoa0oiqssk3vf2prc8drfse9b6', 1344086121, 'sess_last_access|i:1344086120;sess_ip_address|s:14:"114.83.221.224";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1344086120;'),
('8o16m5cjlan7bbku6ua6jkb7f7', 1343965658, 'sess_last_access|i:1343965657;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1343965657;'),
('0k6rh50c7o9vuo7u3r2d16r6f0', 1344069325, 'sess_last_access|i:1344069325;sess_ip_address|s:14:"114.83.221.224";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1344069325;'),
('bmgol54h7h7leis5ndlm2ho8c3', 1345814224, 'sess_last_access|i:1345814223;sess_ip_address|s:14:"114.83.221.224";sess_useragent|s:50:"Mozilla/5.0 (iPad; CPU OS 5_1_1 like Mac OS X; zh-";sess_last_regenerated|i:1345814223;'),
('7oj9g6gugd7tu9idtc6pibgr87', 1344241238, 'sess_last_access|i:1344241237;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1344241145;'),
('an213crjpde2hgc1ekug2k56e2', 1344420928, 'sess_last_access|i:1344420927;sess_ip_address|s:13:"61.173.67.156";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1344420876;'),
('q73uvgc0hgf139meik4rhgr886', 1344844082, 'sess_last_access|i:1344844082;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1344844082;'),
('qm2dk5pnuf57ragg5c4h936o14', 1344923944, 'sess_last_access|i:1344923943;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1344923858;'),
('6tuk3309p09st71te3b1260hu7', 1345040270, 'sess_last_access|i:1345040269;sess_ip_address|s:11:"58.37.8.180";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1345040269;'),
('85kfpmec4ropdhet2e25vmr6r0', 1345366100, 'sess_last_access|i:1345366100;sess_ip_address|s:12:"58.34.104.49";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1345366100;'),
('h6kjgplirmt83lnbkkf8ndjbn2', 1345383434, 'sess_last_access|i:1345383433;sess_ip_address|s:12:"58.34.104.49";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1345383433;'),
('ocrq8srjrvtebgtjhkep2dt2c1', 1345642807, 'sess_last_access|i:1345642807;sess_ip_address|s:13:"58.34.110.148";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1345642807;'),
('mqko861majbfch82kgpjs8fco0', 1345707856, 'sess_last_access|i:1345707855;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1345707855;'),
('guufcn87c4p75e3kshp6b9rcc5', 1345718764, 'sess_last_access|i:1345718764;sess_ip_address|s:13:"58.34.110.148";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/201001";sess_last_regenerated|i:1345718764;'),
('54ie1jo6daj56afjjc2mr57600', 1347629009, 'sess_last_access|i:1347629008;sess_ip_address|s:13:"114.83.212.31";sess_useragent|s:50:"Mozilla/5.0 (iPad; CPU OS 5_1_1 like Mac OS X; zh-";sess_last_regenerated|i:1347629008;'),
('ns6t77u8erp4oun11giocs2ie5', 1346040717, 'sess_last_access|i:1346040717;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1346040645;'),
('3fmvdh5nre3rdrvljqnpd3doc1', 1346040708, 'sess_last_access|i:1346040707;sess_ip_address|s:13:"113.142.24.94";sess_useragent|s:50:"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)";sess_last_regenerated|i:1346040707;'),
('80tj64e413ud9r6ehja7qf63g4', 1346040737, 'sess_last_access|i:1346040736;sess_ip_address|s:14:"180.112.29.223";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:14.0) Gecko/201001";sess_last_regenerated|i:1346040736;'),
('2t2iavim3nj07q86hru68qkqn2', 1346042462, 'sess_last_access|i:1346042461;sess_ip_address|s:14:"101.226.33.228";sess_useragent|s:11:"Mozilla/4.0";sess_last_regenerated|i:1346042461;'),
('9u68i6tince3g3uv7pp1e9vs83', 1346042467, 'sess_last_access|i:1346042466;sess_ip_address|s:14:"101.226.33.228";sess_useragent|s:11:"Mozilla/4.0";sess_last_regenerated|i:1346042466;'),
('g775fuf0jei4urolov7a2k29g0', 1346069750, 'sess_last_access|i:1346069750;sess_ip_address|s:13:"61.173.64.168";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:14.0) Gecko/201001";sess_last_regenerated|i:1346069750;'),
('i8asl410tor7no3p5b5ohhreb6', 1346121988, 'sess_last_access|i:1346121988;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko";sess_last_regenerated|i:1346121988;'),
('nqvjgl1s5siq7ndevnkm37g892', 1346159750, 'sess_last_access|i:1346159749;sess_ip_address|s:13:"61.173.64.168";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:14.0) Gecko/201001";sess_last_regenerated|i:1346159749;'),
('0cccedppffhoqp8urd02kh3jq1', 1346249015, 'sess_last_access|i:1346249015;sess_ip_address|s:13:"61.173.64.168";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:14.0) Gecko/201001";sess_last_regenerated|i:1346249015;'),
('3nqsv4bdbm1e79jlorm5u6pup0', 1346334372, 'sess_last_access|i:1346334372;sess_ip_address|s:11:"58.37.10.22";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:14.0) Gecko/201001";sess_last_regenerated|i:1346334372;'),
('kunhqiadiqafokh1toqlt9ma95', 1346576983, 'sess_last_access|i:1346576982;sess_ip_address|s:13:"58.34.109.151";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:14.0) Gecko/201001";sess_last_regenerated|i:1346576982;'),
('10apsduovrb19ehoutvpogkb57', 1346747319, 'sess_last_access|i:1346747319;sess_ip_address|s:12:"58.37.10.224";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:14.0) Gecko/201001";sess_last_regenerated|i:1346747275;'),
('m75kqhkj6odt6mp44odoctc1j4', 1347454322, 'sess_last_access|i:1347454311;sess_ip_address|s:12:"58.37.10.224";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:15.0) Gecko/201001";sess_last_regenerated|i:1347454311;'),
('vqam0ec6chdqsjabeajrn7vib0', 1347598994, 'sess_last_access|i:1347598994;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:15.0) Gecko";sess_last_regenerated|i:1347598964;'),
('h7le9jvmdvtkd5mhj53rc87ak5', 1347795439, 'sess_last_access|i:1347795439;sess_ip_address|s:13:"61.173.67.119";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:15.0) Gecko/201001";sess_last_regenerated|i:1347795439;'),
('o1eqdic7nkrgpdh0ej0il3dbk7', 1347874716, 'sess_last_access|i:1347874716;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:15.0) Gecko";sess_last_regenerated|i:1347874716;'),
('318iga1ehlnpqf6b319fjn7u45', 1348066329, 'sess_last_access|i:1348066328;sess_ip_address|s:12:"61.173.64.68";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:15.0) Gecko/201001";sess_last_regenerated|i:1348066328;'),
('f3c90556ccpupr6h9feon523r3', 1347971279, 'sess_last_access|i:1347971279;sess_ip_address|s:12:"67.205.54.97";sess_useragent|s:17:"Python-urllib/2.5";sess_last_regenerated|i:1347971279;'),
('ro7ddte5i72l4odrsn8gtfh263', 1348122419, 'sess_last_access|i:1348122419;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:15.0) Gecko";sess_last_regenerated|i:1348122419;'),
('pre3pc5454bcsiq209a9mgndi0', 1348577983, 'sess_last_access|i:1348577983;sess_ip_address|s:13:"180.155.59.45";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:15.0) Gecko/201001";sess_last_regenerated|i:1348577983;'),
('1rti3hk36h5i2tdv5fedenl5n2', 1351175108, 'sess_last_access|i:1351175106;sess_ip_address|s:13:"61.173.64.222";sess_useragent|s:50:"Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X; zh-cn";sess_last_regenerated|i:1351175106;'),
('ip8v31qcqn05q0jcque4er7ru7', 1349275857, 'sess_last_access|i:1349275856;sess_ip_address|s:14:"114.83.212.124";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:15.0) Gecko/201001";sess_last_regenerated|i:1349275856;'),
('7vukth5bcnn76sh9939vnk7ol4', 1349313988, 'sess_last_access|i:1349313988;sess_ip_address|s:14:"114.83.212.124";sess_useragent|s:50:"Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) Apple";sess_last_regenerated|i:1349313988;'),
('d2pdt0fre8boiucn2e5hg8uk44', 1349445794, 'sess_last_access|i:1349445793;sess_ip_address|s:14:"114.83.212.124";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 5.1; rv:15.0) Gecko/201001";sess_last_regenerated|i:1349445793;'),
('tsn7pmb2jpjj0rm8tpp9gvvn55', 1351498087, 'sess_last_access|i:1351498086;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko";sess_last_regenerated|i:1351498086;'),
('t4nqua20l20bue5n8bcb7ueln3', 1352970435, 'sess_last_access|i:1352970434;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko";sess_last_regenerated|i:1352970434;'),
('usj1d4ek66fkmbb818cqsihg82', 1353474849, 'sess_last_access|i:1353474849;sess_ip_address|s:14:"116.247.85.130";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko";sess_last_regenerated|i:1353474849;'),
('jcj41oil41ifhq80572pgp3t90', 1360296970, 'sess_last_access|i:1360296970;sess_ip_address|s:7:"0.0.0.0";sess_useragent|s:50:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:18.0) Gecko";sess_last_regenerated|i:1360296940;');

-- --------------------------------------------------------

--
-- 表的结构 `jm_users`
--
-- 创建时间: 2013 年 02 月 08 日 04:14
-- 最后更新: 2013 年 02 月 08 日 04:14
--

CREATE TABLE IF NOT EXISTS `jm_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_displayname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_registered_datetime` datetime DEFAULT NULL,
  `user_role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_memo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `jm_users`
--

INSERT INTO `jm_users` (`id`, `user_displayname`, `user_email`, `user_password`, `user_registered_datetime`, `user_role`, `user_memo`) VALUES
(1, 'admin', '306761352@qq.com', '00fbd6d3e86be9c1f3cd8e7f2db17505', '2012-04-25 11:22:33', 'admin', '管理员'),
(2, 'phoenix', 'gopher.huang@gmail.com', '00fbd6d3e86be9c1f3cd8e7f2db17505', '2012-04-15 11:22:33', 'volunteer', NULL),
(3, 'phx', 'davidian.index@gmail.com', '00fbd6d3e86be9c1f3cd8e7f2db17505', '2012-04-15 11:22:33', 'volunteer', NULL),
(4, 'Jerry', 'wsc89227@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-06 11:22:33', 'volunteer', NULL),
(5, 'Evan', 'dmmyai@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-06 11:22:33', 'volunteer', NULL),
(6, 'Carolyn', '346537853@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-06 11:22:33', 'volunteer', '恩曲不休'),
(7, '贝帝', '251353776@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '2012-06-06 11:22:33', 'volunteer', 'chaotianjiao5588@163.com,Megan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
