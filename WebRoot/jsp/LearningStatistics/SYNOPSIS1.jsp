<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>总览</title>
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
		text-align:center;
	}
	</style>
</head>
<body>
	<table border="0" style="width:100%;border-collapse:collapse;">
		<tr style="color:blue;background:#C4C4C4;">
			<th>知识点</th>
			<th>错误率</th>
			<th>掌握情况</th>
		</tr>
		<tr>
			<td colspan="3"><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
		</tr>
		<tr>
			<td>知识点1</td>
			<td><font style="color:red;">80%</font></td>
			<td>一般</td>
		</tr>
		<tr>
			<td colspan="3"><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
		</tr>
		<tr>
			<td>知识点2</td>
			<td><font style="color:red;">99%</font></td>
			<td>优秀</td>
		</tr>
		<tr>
			<td colspan="3"><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
		</tr>
	</table>
</body>
</html>