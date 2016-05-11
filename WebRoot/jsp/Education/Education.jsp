<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>教育咨询</title>
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
	a{
text-decoration: none; color: inherit;}
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
<body>
	<table border="0" style="width:100%;border-collapse:collapse;">
		<tr>
			<td rowspan="2"><a href="jsp/Education/EducationDetails.jsp">图片</a></td>
			<td><a href="jsp/Education/EducationDetails.jsp">福建小学界实现教育重点课题零突破</a></td>
		</tr>
		<tr>
			<td colspan="2" style="color:#C0C0C0;"><a href="jsp/Education/EducationDetails.jsp">2015-10-29</a></td>
		</tr>
		<tr>
			<td colspan="2"><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
		</tr>
		<tr>
			<td rowspan="2">图片</td>
			<td>福建小学界实现教育重点课题零突破</td>
		</tr>
		<tr>
			<td colspan="2" style="color:#C0C0C0;">2015-10-29</td>
		</tr>
		<tr>
			<td colspan="2"><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
		</tr>
	</table>
</body>
</html>