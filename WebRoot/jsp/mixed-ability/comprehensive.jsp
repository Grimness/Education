<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'comprehensive.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
  </head>
  
  <body>
  
  <link rel="stylesheet" type="text/css" href="<%=basePath%>css/practice.css">
  <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">
  <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
  <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  	<!-- 内容版块 -->
 
  	<div class="container"  align="center" >
  		<!-- 实践活动按钮 -->
  		
  	<script type="text/javascript">
 		sessionStorage.setItem("FStudentID",${FStudentID});
  		sessionStorage.setItem("FPhone",${FPhone});
		function editPractice(){
		
		window.location.href="comprehensiveEdit.do";
		}			
		</script>
  		
  		<div style="width: 100%;margin-top: 40px;" >
  		  <li class="dropdown li"  >
  		 	<a id="dLabel" class="dropdown-toggle" data-toggle="dropdown" >
  		 	<button type="button" class="btn btn-default practicebtn ">
  		 	实践活动 <b class="caret"></b>
  		 	</button>
  		  	
  			 </a>
  			 <ul class="dropdown-menu">
              <li><a href="#">实践活动</a></li>
              <li><a href="<%=basePath%>StudentERecord.do?FStudentID=${FStudentID}&FPhone=${FPhone}">电子档案</a></li>
         	</ul>
           </li>
          
  		</div>
  		<!-- 实践活动版块 -->
  		<div class="mainPanel"  >
  		<div class="panels" >
  		<!--添加活动-->
 			<div class="editPanel" >
 				<div style="display: inline;float: left;">
  				<img src="<%=basePath%>images/u83.png" class="img-responsive" >
  				<img src="<%=basePath%>images/u21_line.png" class="img-responsive line"  >
  				</div>

 				<div  style="display: inline;float: left;margin-left: 10px">
  				<button onclick="editPractice()" type="button" class="btn btn-default editbtn" style="background-image:url('./images/comprehensive_edit.png');" ></button>
  				</div>
  				<div style="clear: both;"></div>
  			</div>
  		<!--今日活动-->

  		<div class="practicePanel" >
  			<c:forEach var="date" items="${dates}">
  			<c:forEach var="map" items="${practices}">
  			
  			<c:if test="${map.key==date}">
  				<div class="dateDiv">
  				<span>${date}</span>
  				<c:forEach var="practice" begin="0" end="0" items="${map.value}">
	  			<span> ${practice.week}</span>
	  			</c:forEach>
	  			</div>
  			</c:if>
  			</c:forEach>
  		
  			<!--今日活动 -->
  			<div style="margin-top: 20px">
  				<c:forEach var="map" items="${practices}">
  				<c:if test="${map.key==date}">
  				<!-- 活动板块 -->
  				<c:forEach var="practice" varStatus="status" items="${map.value}">
  				<div class="practicePanel">
  					<!-- 时间 -->
  					<div class="timeDiv">${practice.time}</div>
  					<div style="float: left;">
 					<div style="display: inline;float: left;">
 					<!-- 头像 -->
 					<!-- 爸-->
 					<c:if test="${practice.ftype==1&&practice.fsex==1}"><!-- 判断头像 -->
  					<img src="<%=basePath%>images/u19.png" class="img-responsive" >
  					</c:if>
  					<!-- 妈-->
 					<c:if test="${practice.ftype==1&&practice.fsex==0}">
  					<img src="<%=basePath%>images/u25.png" class="img-responsive" >
  					</c:if>
  					<!-- 老师-->
 					<c:if test="${practice.ftype==0}">
  					<img src="<%=basePath%>images/u39.png" class="img-responsive" >
  					</c:if>
  					<!-- 间隔线 -->
  					<c:if test="${status.index+1!=fn:length(map.value)}"><!-- 最后一个 -->
  					<img src="<%=basePath%>images/u21_line.png" class="img-responsive line"  >
  					</c:if>
  					
  					</div>
					
 					<div style="display: inline;float: left;margin-left: 10px;">
 					<!-- 内容 -->
  					<div style="font-size: medium;" align="left">${practice.FContent}</div>
  					
  					<!-- 图片 -->
  					<c:if test="${practice.FPhoto1!=null&&practice.FPhoto1!=''}">
  						<img style="width: 80px;height: 69px" src="<%=basePath%>upload/${practice.FPhoto1}"   class="img-responsive practiceImg" align="left">
  					</c:if>
  					<c:if test="${practice.FPhoto2!=null&&practice.FPhoto2!=''}">
  						<img style="width: 80px;height: 69px" src="<%=basePath%>upload/${practice.FPhoto2}"   class="img-responsive practiceImg" align="left">
  					</c:if>
  					<c:if test="${practice.FPhoto3!=null&&practice.FPhoto4!=''}">
  						<img style="width: 80px;height: 69px" src="<%=basePath%>upload/${practice.FPhoto3}"   class="img-responsive practiceImg" align="left">
  					</c:if>
  					<c:if test="${practice.FPhoto4!=null&&practice.FPhoto4!=''}">
  						<img style="width: 80px;height: 69px" src="<%=basePath%>upload/${practice.FPhoto4}"   class="img-responsive practiceImg" align="left">
  					</c:if>
  					</div>
  					</div>
  					<div style="clear: both;"></div>
				</div>
				</c:forEach><!-- 一次活动 -->
				</c:if>
				</c:forEach><!-- 一天活动 -->
  				<div style="clear: both;"></div>
  			</div>
  				</c:forEach><!-- 全部活动 -->
  		</div>
  	</div>
  </div>
  </div>
	 	
  </body>
</html>
