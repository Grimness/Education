<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>兑换礼物</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<table border="0" style="width:100%;border-collapse:collapse;">
		 <tr>
			<td colspan="5">当前积分:<font style="color:#EE7600;">200</font></td>
		</tr>
		<tr style="background:#F0F0F0;">
			<td colspan="5">温馨提示:线上积分兑换礼品，需要线下领取额~</td>
		</tr>
		<tr>
			<td colspan="5"> </div>&nbsp;&nbsp;现金/折金劵</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;">图片</td>
			<td rowspan="3"><hr size=150 width="1" color="#999999"/></td>
			<td colspan="2" style="text-align:center;">图片</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;">【5元现金劵】</td>
			<td colspan="2" style="text-align:center;">【10元现金劵】</td>
		</tr>
		<tr>
			<td style="text-align:right;color:#EE7600;">100积分</td>
			<td><input style="color:blue;background:#FFFFFF;" type="button" value="兑换"></td>
			<td style="text-align:right;color:#EE7600;">500积分</td>
			<td><input style="color:blue;background:#FFFFFF;" type="button" value="兑换"></td>
		</tr>
		<tr style="background:#F0F0F0;">
			<td colspan="5">1</td>
		</tr>
		<tr>
			<td colspan="5"><div style="float:left;width:4px;height:18px; background:#1C86EE;"></div>&nbsp;&nbsp;学习文具</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;">图片</td>
			<td rowspan="3"><hr size=150 width="1" color="#999999"/></td>
			<td colspan="2" style="text-align:center;">图片</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;">圆珠笔&nbsp;&nbsp;10支</td>
			<td colspan="2" style="text-align:center;">练习册&nbsp;&nbsp;2本</td>
		</tr>
		<tr>
			<td style="text-align:right;color:#EE7600;">100积分</td>
			<td><input style="color:blue;background:#FFFFFF;" type="button" value="兑换"></td>
			<td style="text-align:right;color:#EE7600;">300积分</td>
			<td><input style="color:blue;background:#FFFFFF;" type="button" value="兑换"></td>
		</tr>
		<tr style="background:#F0F0F0;">
			<td colspan="5">1</td>
		</tr>
		<tr>
			<td colspan="5"><div style="float:left;width:4px;height:18px; background:#218868;"></div>&nbsp;&nbsp;资料包</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;">图片</td>
			<td rowspan="3"><hr size=150 width="1" color="#999999"/></td>
			<td colspan="2" style="text-align:center;">图片</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;">资料名称1</td>
			<td colspan="2" style="text-align:center;">资料名称2</td>
		</tr>
		<tr>
			<td style="text-align:right;color:#EE7600;">100积分</td>
			<td><input style="color:blue;background:#FFFFFF;" type="button" value="兑换"></td>
			<td style="text-align:right;color:#EE7600;">300积分</td>
			<td><input style="color:blue;background:#FFFFFF;" type="button" value="兑换"></td>
		</tr>
		<tr style="background:#F0F0F0;">
			<td colspan="5">1</td>
		</tr>
	</table>
</body>
</html>