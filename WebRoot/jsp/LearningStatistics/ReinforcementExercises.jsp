<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>强化练习</title>
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
		<tr style="background:#CCCCCC;">
			<td>当前练习：生词  多音字组词     共 <font style="color:blue;">2</font>道题</td>
		</tr>
		<tr>
			<td>图片</td>
		</tr>
		<tr>
			<td>
				<div>
					<div style="float:left;padding-left:1%;"><input style="color:blue;background:#FFFFFF;" type="button" value="答案"></div>
					<div style="float:left;padding-left:2%;"><input style="color:blue;background:#FFFFFF;" type="button" value="点拨"></div>
				</div>
			</td>
		</tr>
		<tr style="background:#EDEDED;height:50px;">
			<td>w(ﾟДﾟ)w</td>
		</tr>
		<tr>
			<td><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
		</tr>
		<tr>
			<td>图片</td>
		</tr>
		<tr>
			<td>
				<div>
					<div style="float:left;padding-left:1%;"><input style="color:blue;background:#FFFFFF;" type="button" value="答案"></div>
					<div style="float:left;padding-left:2%;"><input style="color:blue;background:#FFFFFF;" type="button" value="点拨"></div>
				</div>
			</td>
		</tr>
		<tr style="background:#EDEDED;height:50px;">
			<td>w(ﾟДﾟ)w</td>
		</tr>
		<tr>
			<td><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
		</tr>
	</table>
</body>
</html>