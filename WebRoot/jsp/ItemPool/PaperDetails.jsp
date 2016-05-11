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
			<td colspan="3" style="text-align:center;">接收试卷名称</td>
		</tr>
		<tr>
			<td style="">班级：<input style="border-style:none" type="text" value="_______" ></td>
			<td style="">姓名：<input style="border-style:none" type="text" value="_______" ></td>
			<td style="">学号：<input style="border-style:none" type="text" value="_______" ></td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:center;">题目图片</td>
		</tr>
		<tr>
			<td colspan="3">
				<div>
					<div style="float:right;padding-right:2%;"><input style="color:#D3D3D3;background:#FFFFFF;" type="button" value="删除"></div>
					<div style="float:right;padding-right:2%;"><input style="color:#D3D3D3;background:#FFFFFF;" type="button" value="下移"></div>
					<div style="float:right;padding-right:2%;"><input style="color:#D3D3D3;background:#FFFFFF;" type="button" value="上移"></div>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="3"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:center;">题目图片</td>
		</tr>
		<tr>
			<td colspan="3">
				<div>
					<div style="float:right;padding-right:2%;"><input style="color:#D3D3D3;background:#FFFFFF;" type="button" value="删除"></div>
					<div style="float:right;padding-right:2%;"><input style="color:#D3D3D3;background:#FFFFFF;" type="button" value="下移"></div>
					<div style="float:right;padding-right:2%;"><input style="color:#D3D3D3;background:#FFFFFF;" type="button" value="上移"></div>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="3"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
	</table>
</body>
</html>