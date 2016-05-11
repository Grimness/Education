<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>资源包</title>
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
			<th colspan="4" style="text-align:left;"><div style="float:left;width:4px;height:18px; background:#7EC0EE;"></div>&nbsp;&nbsp;语文</th>
		</tr>
		<tr>
			<td><a href="jsp/ResourceBundle/resource.jsp">图片</a></td>
			<td><a href="jsp/ResourceBundle/resource.jsp">图片</a></td>
			<td><a href="jsp/ResourceBundle/resource.jsp">图片</a></td>
			<td><a href="jsp/ResourceBundle/resource.jsp">图片</a></td>
		</tr>
		<tr>
			<td><a href="jsp/ResourceBundle/resource.jsp">小学词语</a></td>
			<td><a href="jsp/ResourceBundle/resource.jsp">小学阅读</a></td>
			<td><a href="jsp/ResourceBundle/resource.jsp">小学国学</a></td>
			<td><a href="jsp/ResourceBundle/resource.jsp">语文百科</a></td>
		</tr>
		<tr>
			<th colspan="4" style="text-align:left;"><div style="float:left;width:4px;height:18px; background:#EEEE00;"></div>&nbsp;&nbsp;数学</th>
		</tr>
		<tr>
			<td>图片</td>
			<td>图片</td>
			<td>图片</td>
			<td>图片</td>
		</tr>
		<tr>
			<td>数学知识</td>
			<td>数学应用</td>
			<td>数学技巧</td>
			<td>数学趣味</td>
		</tr>
		<tr>
			<td>图片</td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>数学百科</td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<th colspan="4" style="text-align:left;"><div style="float:left;width:4px;height:18px; background:#EE7AE9;"></div>&nbsp;&nbsp;英语</th>
		</tr>
		<tr>
			<td>图片</td>
			<td>图片</td>
			<td>图片</td>
			<td>图片</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
</body>
</html>