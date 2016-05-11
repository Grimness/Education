<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>机构详情</title>
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
			<td>
			<iframe src="jsp/Counseling/Agency Details.jsp" name="Agency Details" id="Agency Details" frameborder="0" name="AgencyDetails" style="width:100%;"></iframe>
			</td>
		</tr>
		<tr>
			<td style="text-align:center;"><a href="#" style="color:blue;">我要咨询</a></td>
		</tr>
	</table>
</body>
</html>