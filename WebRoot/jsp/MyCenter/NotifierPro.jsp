<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>消息通知</title>
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
		<tr>
			<td>语文老师布置了新作业，快去看看吧！</td>
			<td rowspan="2">图片</td>
		</tr>
		<tr>
			<td>2015-10-26  12:00</td>
		</tr>
		<tr>
			<td colspan="2"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td>语文老师布置了新作业，快去看看吧！</td>
			<td rowspan="2">图片</td>
		</tr>
		<tr>
			<td>2015-10-26  12:00</td>
		</tr>
		<tr>
			<td colspan="2"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td>语文老师布置了新作业，快去看看吧！</td>
			<td rowspan="2">图片</td>
		</tr>
		<tr>
			<td>2015-10-26  12:00</td>
		</tr>
		<tr>
			<td colspan="2"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
	</table>
</body>
</html>