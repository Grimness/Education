<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'comprehensiveEdit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/electDetail.css">
	

  </head>
  
  <body style="background-color: #B9B9B9;">
  <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">
  <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
  <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  	
 <script type="text/javascript">
 
 </script>
 <div class="page" >
 <div  align="left">
 	

  	<div class="studentmes"> 
 	 	<div class="dpinline">
  		<img src="<%=basePath%>images/5.png"  class="img-circle">
  		</div>
  		<div class="dpinline stumes">
  			<span>${student.fname}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  			<c:if test="${student.fsex==1}">男</c:if>
  			<c:if test="${student.fsex==0}">女</c:if>
  			</span>
  		</div>
  			<div class="stuclass"><span>${student.fgradename}</span><span>${student.fclassname}</span></div>
  	
  		
  	</div>
  		
  	<c:forEach var="eRecord" items="${ERecordDetail}">
  
  	<div class="subject" > 
  		<div ><span>科目：</span>
  			<span>
  				<c:if test="${eRecord.FSubjectID=='YW'}">语文</c:if>
  				<c:if test="${eRecord.FSubjectID=='SX'}">数学</c:if>
  				<c:if test="${eRecord.FSubjectID=='YY'}">英语</c:if>
  			</span>
  		</div>
  	</div>
  	
  	<div class="subject" > 
  		<div ><span>期中成绩：</span><span>${eRecord.FScoreM}</span></div>
  	</div>
  	<div class="subject" > 
  		<div ><span>期末成绩：</span><span>${eRecord.FScoreE}</span></div>
  	</div>
  	<img src="<%=basePath%>images/u16_line.png"  class="line">
  	
  	<div class="" > 
  		<div >
  		<div class="evaluate">评价学生：</div>
  		<div class="evaluatetext">${eRecord.FEvaluate}</div>
  		</div>
  	</div>
 	<br /><br /><br />
  	</c:forEach>
 </div>
 </div>
  </body>
</html>
