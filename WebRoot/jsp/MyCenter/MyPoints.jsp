<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>我的积分</title>
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
			<th style="color:#EE7600;"><font style="font-size:40px;">200</font>积分</th>
			<th></th>
			<td style="color:#EE7600;text-align:right;"><a href="jsp/MyCenter/CashGift.jsp">去兑换礼品>></a></td>
		</tr>
		<tr style="background:#D1D1D1;">
			<td>行为</td>
			<td>积分变换</td>
			<td>时间</td>
		</tr>
		<tr>
			<td>分享题目</td>
			<td style="color:#EE7600;">+10</td>
			<td>2015/08/01 11:00</td>
		</tr>
		<tr>
			<td colspan="3"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td>分享题目</td>
			<td style="color:#EE7600;">+10</td>
			<td>2015/10/01 11:00</td>
		</tr>
		<tr>
			<td colspan="3"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td>邀请好友</td>
			<td style="color:#EE7600;">+10</td>
			<td>2015/10/01 11:00</td>
		</tr>
		<tr>
			<td colspan="3"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td>兑换礼品</td>
			<td style="color:#EE7600;">-10</td>
			<td>2015/10/01 11:00</td>
		</tr>
	</table>
</body>
</html>