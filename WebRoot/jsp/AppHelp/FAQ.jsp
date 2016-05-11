<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <base href="<%=basePath%>">
    <title>常见问题</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />	<style type="text/css">
	*{padding:0;margin:0;}
	#wrap{width:100%;height:100%;margin:0px auto;border:0px solid #ccc;
	table-layout:fixed; 
	empty-cells:show; 
	border-collapse: collapse;}
	#wrap tr#head{height:35px;text-align:center;background-color:#6495ED;color:#FFFFFF}
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
	<table id="wrap">
		<tr id="head">
			<td><a href="">返回</a></td>
			<th>常见问题</th>
			<td></td>
		</tr>
	</table>
</body>
</html>