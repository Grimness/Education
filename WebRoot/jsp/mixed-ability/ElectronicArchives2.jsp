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
<title>电子档案-教师</title>
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

		var FStudentID = localStorage.getItem("FStudentID");
 		var FPhone = localStorage.getItem("FPhone");
		function eRecordDetail(id){
			var ferid = id;
			window.location.href="<%=basePath%>ElectronicArchivesDetails2.do?ferid="+ferid;
		}	
		function editElect(){
			window.location.href="<%=basePath%>FileFilledBy.do?FStudentID="+FStudentID+"&FPhone="+FPhone;
		}
		function select(){
			var pathdo=$("#select").find("option:selected").val();
 			window.location.href="<%=basePath%>"+pathdo+"?FStudentID="+FStudentID+"&FPhone="+FPhone;
		}
		function practice(){
		window.location.href="<%=basePath%>MixedAbility2.do?FStudentID="+FStudentID+"&FPhone="+FPhone;
		}
	</script>
	<table border="0" style="width:100%;border-collapse:collapse;">
		<tr>
			<td style="padding-left:5%;padding-top: 1%"><span onclick="practice()" >学习成长轨迹</span></td>
			<td style="padding-left:5%;padding-top: 1%"><a href="jsp/mixed-ability/Evaluation2.jsp">综合测评</a></td>
		</tr>
		<tr>
			<td colspan="2" style="padding-top: 1%"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;padding-top: 2%">
				<select id="select" onchange="select()">
					<option value="ElectronicArchives2.do">电子档案</option>
						<option value="MixedAbility2.do">实践活动</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="padding-top: 1%"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<div class="content">
		<article>
		<h3></h3>
		<section>
			<span class="point-time point-yellow"></span>
			<time datetime="2013-03">
				<span></span>
				<span></span>
			</time>
			<aside>
				<p class="things"><img src="images/comprehensive_edit.png" onclick="editElect()"></p>
				<p class="brief"><span class="text-yellow"></span></p>
			</aside>
		</section>	
		</article>
	<c:forEach var="date" items="${Edates}">
	<article>
	<h3 >
		<c:forEach var="map" items="${ERecords}">
		<c:if test="${map.key==date}">
		<span style="color:#CCCCCC;">${date}</span>
		<c:forEach var="eRecord" begin="0" end="0" items="${map.value}">
		${eRecord.fweek}
		</c:forEach>
		</c:if>
		</c:forEach>
		</h3>
			<c:forEach var="map" items="${ERecords}">
			<c:if test="${map.key==date}">
			<c:forEach var="eRecord" varStatus="status" items="${map.value}">
		<section>
			<span class="point-time point-yellow"></span>
			<time datetime="2013-03">
				<span>${eRecord.ftime}</span>
			</time>
			<aside>
				<p class="things"  onclick="eRecordDetail(${eRecord.FERID});">${eRecord.FTitle}</p>
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
