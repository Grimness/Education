<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>详情</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
</head>
<body>
	<table border="0" style="width:100%;border-collapse:collapse;">
		<tr style="background:#F0F0F0;">
			<td>导读：<br/><font style="padding-left:5%;">这编文章</font></td>
		</tr>
		<tr>
			<td><font style="color:blue;">1.表示“看”的字词：</font>（单音字词）瞥</td>
		</tr>
		<tr>
			<td><font style="padding-left:5%;">(双音字词)注视</font></td>
		</tr>
		<tr>
			<td><font style="color:blue;">2.表示“说”的字词：</font>（单音字词）讲</td>
		</tr>
		<tr>
			<td><font style="padding-left:5%;">(双音字词)讨论</font></td>
		</tr>
	</table>
</body>
</html>