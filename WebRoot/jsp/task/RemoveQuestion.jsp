<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>错题库</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<style type="text/css">
	a:link {
text-decoration: none;
}
a:visited {
text-decoration: none;
}
a:hover {
text-decoration: none;
}
a:active {
text-decoration: none;
}
	</style>
</head>
<body style="background:#EAEAEA;">
	<table border="0" style="border-collapse:collapse;width:100%;background:#FFFFFF;">
		<tr>
			<td style="text-align:center;"><a href="#" >小孩易错题</a></td>
			<td style="text-align:center;"><a href="#" >班级易错题</a></td>
		</tr>
	</table>
	<table border="0" style="border-collapse:collapse;width:100%;margin :2% 0;background:#FFFFFF;" >
		<tr>
			<td rowspan="4" style="text-align:center;">图片</td>
		</tr>
		<tr style="height:80px;">
			<td colspan="2"></td>
		</tr>
		<tr style="height:3px;">
			<td colspan="2"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr style="height:25px;">
			<td style="padding-left:3%;color:blue;">查看答案>></td>
			<td style="padding-right:3%;text-align:right;color:blue;">喜欢&nbsp;下载</td>
		</tr>
	</table>
	<table border="0" style="border-collapse:collapse;width:100%;margin :2% 0;background:#FFFFFF;" >
	<tr>
			<td rowspan="4" style="text-align:center;">图片</td>
		</tr>
		<tr style="height:80px;">
			<td colspan="2"></td>
		</tr>
		<tr style="height:3px;">
			<td colspan="2"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr style="height:25px;">
			<td style="padding-left:3%;color:blue;">查看答案>></td>
			<td style="padding-right:3%;text-align:right;color:blue;">喜欢&nbsp;下载</td>
		</tr>
	</table>
</body>
</html>