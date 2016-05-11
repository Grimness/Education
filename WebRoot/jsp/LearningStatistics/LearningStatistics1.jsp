<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>学习统计</title>
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
<body style="background:#EAEAEA;">
	<table border="0" style="border-collapse:collapse;width:100%;background:#FFFFFF;">
		<tr>
			<td style="text-align:center;"><a href="#" style="color:blue;">语文</a></td>
			<td style="text-align:center;"><a href="#" >数学</a></td>
			<td style="text-align:center;"><a href="#" >英语</a></td>
		</tr>
	</table>
	<table border="0" style="border-collapse:collapse;width:100%;margin :2% 0;background:#FFFFFF;" >
		<tr style="height:25px;">
			<td colspan="2" style="padding-top:1%;">名称： 知识点描述</td>
		</tr>
		<tr style="height:3px;">
			<td colspan="2"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr style="height:80px;">
			<td style="padding-left:3%;color:blue;text-align:center;">图片</td>
			<td style="padding-right:3%;text-align:left;color:blue;">该知识点掌握不好</td>
		</tr>
		<tr style="height:30px;">
			<td colspan="2">
			<div >
				<div style="float:right;padding-right:2%;"><input style="color:#FFFFFF;background:blue;" type="button" value="强化练习" onclick="javascript:window.location.href='jsp/LearningStatistics/ReinforcementExercises.jsp'"></div>
				<div style="float:right;padding-right:2%;"><input style="color:#FFFFFF;background:red;" type="button" value="分析报告" ></div>
			</div>
			</td>
		</tr>
	</table>
	<table border="0" style="border-collapse:collapse;width:100%;margin :2% 0;background:#FFFFFF;" >
		<tr style="height:25px;">
			<td colspan="2" style="padding-top:1%;">名称： 知识点描述</td>
		</tr>
		<tr style="height:3px;">
			<td colspan="2"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr style="height:80px;">
			<td style="padding-left:3%;color:blue;text-align:center;">图片</td>
			<td style="padding-right:3%;text-align:left;color:blue;">该知识点掌握不好</td>
		</tr>
		<tr style="height:30px;">
			<td colspan="2">
			<div >
				<div style="float:right;padding-right:2%;"><input style="color:#FFFFFF;background:blue;" type="button" value="强化练习" onclick="javascript:window.location.href='jsp/LearningStatistics/ReinforcementExercises.jsp'"></div>
				<div style="float:right;padding-right:2%;"><input style="color:#FFFFFF;background:red;" type="button" value="分析报告" ></div>
			</div>
			</td>
		</tr>
	</table>
</body>
</html>