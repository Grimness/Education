<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>添加账号</title>
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
		<tr>
			<td>①上传头像</td>
		</tr>
		<tr>
			<td>图片</td>
		</tr>
		<tr>
			<td>②输入孩子姓名</td>
		</tr> 
		<tr>
			<td><input style="text-align:center;" type="text" value="李宝宝"></td>
		</tr>
		<tr>
			<td>③选择孩子性别</td>
		</tr>
		<tr>
			<td><input style="text-align:center;" type="text" value="男"></td>
		</tr>
		<tr>
			<td>④选择所在地区</td>
		</tr>
		<tr>
			<td><input style="text-align:center;" type="text" value="广东省&nbsp;广州市"></td>
		</tr>
		<tr>
			<td>⑤选择学校、班级</td>
		</tr>
		<tr>
			<td><input style="text-align:center;" type="text" value="东圃小学&nbsp;三年级(1)级"></td>
		</tr>
		<tr>
			<td>⑥加入班级</td>
		</tr>
		<tr>
			<td><input style="text-align:center;color:#CCCCCC;" type="text" value="请输入老师给的班级码"></td>
		</tr>
		<tr>
			<td><input style="text-align:center;background:#1E90FF;color:#FFFFFF;width:100px;" type="button" value="添加"></td>
		</tr>
	</table>	
</body>
</html>