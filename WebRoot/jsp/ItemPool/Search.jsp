<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>搜索</title>
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
		input{
			background:#FFFFFF;
			color:#4D4D4D;
		}
	</style>
</head>
<body>
	<table border="0" style="width:100%;border-collapse:collapse;">
		<tr style="background:#1E90FF;">
			<td colspan="3" style="text-align:center;padding-top:2%;padding-bottom:2%;"><input style="text-align:center;" type="text" value="关键词"></td>
		</tr>
		<tr>
			<td colspan="3" style="padding-top:2%;;">知识点搜索</td>
		</tr>
		<tr>
			<td style="text-align:center;">
				<input type="button" value="角的量度">
			</td>
			<td style="text-align:center;">
				<input type="button" value="条形统计图">
			</td>
			<td style="text-align:center;">
				<input type="button" value="多音字">
			</td>
		</tr>
		<tr>
			<td style="text-align:center;">
				<input type="button" value="角的量度">
			</td>
			<td style="text-align:center;">
				<input type="button" value="条形统计图">
			</td>
			<td style="text-align:center;">
				<input type="button" value="多音字">
			</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:right;color:#87CEFA;">换一批</td>
		</tr>
		<tr>
			<td colspan="3"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td colspan="3" style="padding-top:2%;;">历史搜索</td>
		</tr>
		<tr>
			<td colspan="3">大数的认识</td>
		</tr>
		<tr>
			<td colspan="3"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td colspan="3">大数的认识</td>
		</tr>
		<tr>
			<td colspan="3"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td colspan="3" style="text-align:center;color:#87CEFA;">清除记录</td>
		</tr>
	</table>
</body>
</html>
