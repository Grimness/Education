<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>积分规则</title>
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
			<td>1、注册即送积分</td>
		</tr>
		<tr>
			<td>2、完善/更新个人资料，奖励积分</td>
		</tr>
		<tr>
			<td>3、签到积分</td>
		</tr>
		<tr>
			<td>4、邀请好友，奖励积分</td>
		</tr>
		<tr>
			<td>5、分享朋友圈，奖励积分</td>
		</tr>
		<tr>
			<td>6、家长作业检查，点击“正确”“错误”“收藏”，奖励积分</td>
		</tr>
		<tr>
			<td>7、提交作业，奖励积分</td>
		</tr>
		<tr>
			<td>8、作业满分，奖励积分</td>
		</tr>
		<tr>
			<td>9、资源上传，奖励积分</td>
		</tr>
		<tr>
			<td>10、留言和反馈，奖励积分</td>
		</tr>
	</table>
</body>
</html>	