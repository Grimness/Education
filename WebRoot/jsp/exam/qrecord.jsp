<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>查询扫描记录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/timeline.css">
</head>
<body>
<script type="text/javascript">
function sRecordDetail(id){
	
	window.location.href="<%=basePath%>exam/toqrcode.do?qrcode="+id;
}
</script>
	<table border="0" style="width:100%;border-collapse:collapse;">
	
		<tr>
			<td colspan="2">
				<div class="content">
	<c:forEach var="date" items="${dates}">
	<article>
	<h3 >
		<c:forEach var="map" items="${scanRecord}">
		<c:if test="${map.key==date}">
		<span style="color:#CCCCCC;">${date}</span>
		<c:forEach var="sRecord" begin="0" end="0" items="${map.value}">
		${sRecord.fweek}
		</c:forEach>
		</c:if>
		</c:forEach>
		</h3>
			<c:forEach var="map" items="${scanRecord}">
			<c:if test="${map.key==date}">
			<c:forEach var="sRecord" varStatus="status" items="${map.value}">
		<section>
			<span class="point-time point-yellow"></span>
			<time datetime="2013-03">
				<span>${sRecord.ftime}</span>
			</time>
			<aside>
				<p class="things" style="font-size: medium;"  onclick="sRecordDetail('${sRecord.fname}');">${sRecord.ftitle}</p>
			</aside>
		</section>
		</c:forEach>
		</c:if>
		</c:forEach>
	</article>
	</c:forEach>
	
</div>
			</td>
		</tr>
	</table>
	
</body>
</html>
