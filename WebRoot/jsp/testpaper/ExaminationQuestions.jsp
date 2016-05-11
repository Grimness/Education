<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
  	<table border="1" style="width:100%;border-collapse:collapse;">
  		<tr style="background:#CCCCCC;height:40px;">
  			<td>题号</td>
  			<td>试题</td>
  			<td></td>
  		</tr>
  		<%int i=1; %>
  		 <c:forEach items="${getex}" var="getex">
  		<tr style="height:50px;">
  			<td >${getex.fnumber}</td>
  			<td style="width:80%">${getex.FTitle1}</td>
  			<td>
  				<div>
  				<!-- 
  					<div style="float:right;"><input style="height:28px;" type="button" value="↓"></div>
  					<div style="float:right;margin:0 1%;"><input style="height:28px;" type="button" value="↑"></div>
  					 -->
  					<div style="float:right;margin:0 1%;"><input style="height:28px;" type="button" value="移除" onclick="javascript:window.location.href='testpaper_delete.do?fid=${getex.fid}&exfid=${getex.exfid}&FExamID=${getex.FExamID}'"></div>
  				</div>
  			</td>
  		</tr>
  		<%i++; %>
  		</c:forEach>
  	</table>
  </body>
</html>
