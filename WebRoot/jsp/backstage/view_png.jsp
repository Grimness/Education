<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>图片浏览</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  试卷浏览:<br/>

 <!--  
  <div>
  <c:if test="${not empty view.FHourPath}">
  <img  src="<%=basePath%>${view.FHourPath}${view.FHourFileName}" />
  </c:if>
   </div>
   -->
   
  	 <div>
  	<c:if test="${not empty view.FGyPath}"> 
  	 <img  src="<%=basePath%>${view.FGyPath}${view.FGyFileName}" />
  	 </c:if>
   </div>
   
   <div >
   	${view.FTitle1}
   </div>
   
   <div>
   
   <c:if test="${not empty view.FPath}">
   <br/>
   ${view.FTitle2}<br/><img  src="<%=basePath%>${view.FPath}${view.FFileName}" />
	</c:if>
   </div>
   
  
   <div>
   <c:if test="${not empty view.FAnsPath}">
   <br/>
    【答案】<br/>
    <img  src="<%=basePath%>${view.FAnsPath}${view.FAnsFileName}" />
	</c:if>
   </div>
   
   <div>
   <c:if test="${not empty view.FPointersPath}">
   <br/>
   <img  src="<%=basePath%>${view.FPointersPath}${view.FPointersFileName}" />
  	</c:if>
   </div>
   
    <div>
    
    <c:if test="${not empty view.FTipsPath}">
    	<br/>
    	【家长辅导提示】
    <img  src="<%=basePath%>${view.FTipsPath}${view.FTipsFileName}" />"
  	</c:if>
   </div>
  </body>
</html>
