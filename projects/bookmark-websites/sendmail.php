<?

require_once ('includes/email.class.php');
##########################################
$smtpserver = "mail.wanfangdata.com.cn"; //SMTP服务器
$smtpserverport =25; //SMTP服务器端口
$smtpusermail = "huangfeng@wanfangdata.com.cn"; //SMTP服务器的用户邮箱
$smtpemailto = "phoenix50000@126.com"; //发送给谁
$smtpuser = "huangfeng"; //SMTP服务器的用户帐号
$smtppass = "wfsh1013"; //SMTP服务器的用户密码
$mailsubject = "测试邮件"; //邮件主题
$mailbody = "<h1> 这是一个测试 </h1>"; //邮件内容
$mailtype = "HTML"; //邮件格式（HTML/TXT）,TXT为文本邮件
##########################################
$smtp = new smtp($smtpserver,$smtpserverport,true,$smtpuser,$smtppass);//这里面的一个true是表示使用身份验证,否则不使用身份验证.
$smtp->debug = FALSE;//是否显示发送的调试信息
$smtp->sendmail($smtpemailto, $smtpusermail, $mailsubject, $mailbody, $mailtype);

?>