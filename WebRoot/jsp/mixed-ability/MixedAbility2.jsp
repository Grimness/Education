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
<title>综合素质</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=0" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<link rel="stylesheet" type="text/css" href="css/timeline.css">
<script type="text/javascript">
	
	localStorage.setItem("FStudentID",${FStudentID});
	localStorage.setItem("FPhone",${FPhone});
	function editPractice(){
		window.location.href="EDIT.do";
	}		
	function practice(){
			window.location.href="<%=basePath%>MixedAbility2.do?FStudentID="+FStudentID+"&FPhone="+FPhone;
		}	
</script>
</head>
<body>
	<table border="0" style="width:100%;border-collapse:collapse;">
		<tr>
			<td style="padding-left:5%;padding-top: 1%"><span onclick="practice()" >学习成长轨迹</span></td>
			<td style="padding-left:5%;padding-top: 1%"><a href="jsp/mixed-ability/Evaluation1.jsp">综合测评</a></td>
		</tr>
		<tr>
			<td colspan="2" style="padding-top: 1%"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;padding-top: 2%">
				<select onchange="window.location=this.value;">
					<option>实践活动</option>
					<option value="<%=basePath%>ElectronicArchives2.do?FStudentID=${FStudentID}&FPhone=${FPhone}">电子档案</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="content">
	<article>
		<h3></h3>
		<section>
			<span class="point-time point-gray"></span>
			<time datetime="2013-03">
				<span></span>
				<span></span>
			</time>
			<aside>
				<p class="things" onclick="editPractice();"><img src="<%=basePath%>images/comprehensive_edit.png"></p>
				<p class="brief"><span class="text-yellow"></span></p>
			</aside>
		</section>
		<section>
			<!--  <span class="point-time point-red"></span>-->
			<time datetime="2013-03">
				<span></span>
				<span></span>
			</time>
			<aside>
				<p class="things"></p>
				<p class="brief"><span class="text-red"></span></p>
			</aside>
		</section>
	</article>
		
  		
  		<c:forEach var="date" items="${dates}">
	<article>
		<h3>
		<c:forEach var="map" items="${practices}">	
		<c:if test="${map.key==date}">
		<span style="color:#CCCCCC;">${date}</span>
		<c:forEach var="practice" begin="0" end="0" items="${map.value}">${practice.week}
		</c:forEach>
		</c:if>
  		</c:forEach>
		</h3>
		
  		<c:forEach var="map" items="${practices}">
  		<c:if test="${map.key==date}">
  		<c:forEach var="practice" varStatus="status" items="${map.value}">
		<section>
		<c:if test="${practice.ftype==1&&practice.fsex==1}"><!-- 判断头像 -->
			<span class="point-time point-blue"></span>
		</c:if>
		<c:if test="${practice.ftype==1&&practice.fsex==0}"><!-- 判断头像 -->
			<span class="point-time point-pink"></span>
		</c:if>
			<c:if test="${practice.ftype==0}"><!-- 判断头像 -->
			<span class="point-time point-purple"></span>
		</c:if>
			<time datetime="2013-03">
				<span>${practice.time}</span>
			</time>
			<aside>
				<p class="things">${practice.FContent}</p>
				<p class="brief">
				
				<c:if test="${practice.FPhoto1!=null&&practice.FPhoto1!=''}">
				<img style="width: 80px;height: 69px" src="<%=basePath%>upload/${practice.FPhoto1}">
				</c:if>
				
				<c:if test="${practice.FPhoto2!=null&&practice.FPhoto2!=''}">
				<img style="width: 80px;height: 69px" src="<%=basePath%>upload/${practice.FPhoto2}">
				</c:if>
				
				<c:if test="${practice.FPhoto3!=null&&practice.FPhoto3!=''}">
				<img style="width: 80px;height: 69px" src="<%=basePath%>upload/${practice.FPhoto3}">
				</c:if>
				
				<c:if test="${practice.FPhoto4!=null&&practice.FPhoto4!=''}">
				<img style="width: 80px;height: 69px" src="<%=basePath%>upload/${practice.FPhoto4}">
				</c:if>
				</p>
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
