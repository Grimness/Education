<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>我要组卷</title>
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
<body style="background:#EAEAEA;">
	<table border="0" style="border-collapse:collapse;width:100%;margin :2% 0;background:#FFFFFF;" >
		<tr style="height:80px;">
			<td colspan="2"></td>
		</tr>
		<tr style="height:3px;">
			<td colspan="2"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr style="height:25px;">
			<td style="padding-left:3%;color:blue;">查看解析>></td>
			<td style="padding-right:3%;text-align:right;"><input style="color:#FFFFFF;background:#1C86EE;" type="button" value="加入试卷"></td>
		</tr>
	</table>
</body>
</html>