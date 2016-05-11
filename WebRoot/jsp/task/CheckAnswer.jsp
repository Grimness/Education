<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>查看答案</title>
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
	td{
	padding-top:3%;
	}
	</style>
</head>
<body>
	<table border="0" style="width:100%;border-collapse:collapse;">
		<tr>
			<td colspan="2">给加点的字选择正确的读音，画“√”。</td>
		</tr>
		<tr>
			<td style="text-align:center;">吹拂(fó　fú)</td>
			<td style="text-align:center;">赞歌(zhàn　zàn)</td>
		</tr>
		<tr>
			<td colspan="2"><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
		</tr>
		<tr>
			<td colspan="2" style="color:#4876FF;">【答案】</td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" style="border:0;" value="saasfdsaf"></td>
		</tr>
		<tr>
			<td colspan="2" style="color:#4876FF;">【解析】</td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" style="border:0;" value="四的发生的发生发生法萨芬"></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;">图片</td>
		</tr>
	</table>
</body>
</html>
