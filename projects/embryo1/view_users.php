<?php
$page_title = "Monster's Lab Project（Embryo Stage）";
include ('./includes/header.html');
?>

<?php
require_once ('./mysql_connect.php');

// 每页要显示多少条记录
$display = 10;

// 决定要有多少页面
if (isset($_GET['np'])) {
	$num_pages = $_GET['np'];
} else {
	$query = "SELECT COUNT(*) FROM user_reg;";
	$result = mysql_query ($query);
	$row = mysql_fetch_array ($result, MYSQL_NUM);
	$num_records = $row[0];

	// 计算要有多少页数
	if ($num_records > $display) { // 大于1页
		$num_pages = ceil ($num_records/$display);
	} else {
		$num_pages = 1;
	}
}

// 决定从数据库中的什么位置开始返回记录
if (isset($_GET['s'])) {
	$start = $_GET['s'];
} else {
	$start = 0;
}

//默认的列超链接
$link1 = "{$_SERVER['PHP_SELF']}?sort=una"; //un即username ASC
$link2 = "{$_SERVER['PHP_SELF']}?sort=nna";//nn即nickname ASC
$link3 = "{$_SERVER['PHP_SELF']}?sort=rda";//dr即registration_date ASC

//确定排序顺序
if (isset($_GET['sort'])) {

	switch ($_GET['sort']) {
		case 'una':
			$order_by = 'username ASC';
			$link1 = "{$_SERVER['PHP_SELF']}?sort=una";
			break;
		case 'und':
			$order_by = 'username DESC';
			$link1 = "{$_SERVER['PHP_SELF']}?sort=und";
			break;
		case 'nna':
			$order_by = 'nickname ASC';
			$link2 = "{$_SERVER['PHP_SELF']}?sort=nna";
			break;
		case 'nnd':
			$order_by = 'nickname DESC';
			$link2 = "{$_SERVER['PHP_SELF']}?sort=nnd";
			break;
		case 'rda':
			$order_by = 'registration_date ASC';
			$link3 = "{$_SERVER['PHP_SELF']}?sort=rda";
			break;
		case 'rdd':
			$order_by = 'registration_date DESC';
			$link3 = "{$_SERVER['PHP_SELF']}?sort=rdd";
			break;
		default:
			$order_by = 'registration_date DESC';
			break;
	}

	$sort = $_GET['sort'];

} else { // 如果没有提交排序需求，就按默认排序来显示
	$order_by = 'registration_date ASC';
	$sort = 'rdd';
}


$query = "SELECT username, nickname, email, DATE_FORMAT(registration_date, '%M %d, %Y') AS reg_date FROM user_reg ORDER BY $order_by  LIMIT $start, $display";
$result = @mysql_query ($query);
$num = mysql_num_rows($result);

if ($result){
	if ($num > 0) {
		//echo '<p>目前有<b>' . $num . '</b>个注册用户。</p>';

		echo '<table cellspacing="0">
		<tr><th><a href="' . $link1 . '">用户名</a></th>
				<th><a href="' . $link2 .'">昵称</a></th>
				<th>邮箱</th>
				<th><a href="' . $link3 .'">注册日期</a></th>
				<th>编辑</th>
				<th>删除</th>
		</tr>';

		$bg = '#eeeeee'; //初始化表格行背景色
		while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
			$bg = ($bg=='#eeeeee' ? '#ffffff' : '#eeeeee'); // 切换行背景色
			echo '<tr bgcolor="' . $bg .'">
				  <td>' . $row['username'] . '</td>
				  <td>' . $row['nickname'] . '</td>
				  <td>' . $row['email'] . '</td>
				  <td>' . $row['reg_date'] . '</td>
	  			  <td><a href="edit_user.php?username=' . $row['username'] . '">编辑</a></td>
			     <td><a href="delete_user.php?username=' . $row['username'] . '">删除</a></td></tr>';
		}

		echo '</table>';

		mysql_free_result ($result);//释放资源
	} else {
		echo '<p>目前没有注册用户！</p>';
	}
}else {
	echo '<p>查询失败</p>';
	echo '<p>错误信息：' . mysql_error() . '<br /><br />查询语句： ' . $query . '</p>';
}

mysql_close();

//如果页数>1，那么打印出页码
if ($num_pages > 1) {

	echo '<br /><p>';
	// 检测当前所在页码
	$current_page = ($start/$display) + 1;

	// 如果不在第一页，就打印“往前”链接
	if ($current_page != 1) {
		echo '<a href="view_users.php?s=' . ($start - $display) . '&np=' . $num_pages . '">往前</a> ';
	}

	// 制作所有页码
	for ($i = 1; $i <= $num_pages; $i++) {
		if ($i != $current_page) {
			echo '<a href="view_users.php?s=' . (($display * ($i - 1))) . '&np=' . $num_pages . '">' . $i . '</a> ';
		} else {
			echo $i . ' ';
		}
	}

	//如果不在最末页，就打印“往后”链接
	if ($current_page != $num_pages) {
		echo '<a href="view_users.php?s=' . ($start + $display) . '&np=' . $num_pages . '">往后</a>';
	}

	echo '</p>';
}
?>

<?php
include ('./includes/footer.html');
?>