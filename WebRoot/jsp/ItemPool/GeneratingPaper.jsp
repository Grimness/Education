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
<body>
	<table border="0" style="width:100%;border-collapse:collapse;">
		<tr>
			<td style="text-align:center;background:#BCD2EE;"><a href="#">语文/全部版本/一年级 上</a></td>
		</tr>
		<tr>
			<td>
			<iframe src="jsp/ItemPool/GeneratingPaperDiv.jsp" name="GeneratingPaper" id="GeneratingPaper" frameborder="0" name="GeneratingPaper" style="width:100%;"></iframe>
			</td>
		</tr>
		<tr>
			<td style="text-align:center;"><a href="#" style="color:blue;">我要咨询</a></td>
		</tr>
	</table>
</body>
</html>