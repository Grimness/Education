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
  <center>
  <h1>${testname}</h1>
  </center>
  	<table style="width:100%;">
  	<c:forEach items="${gettx}" var="t">
  		<tr>
  		<td colspan=2><h2>${t.fname}</h2></td>	
  		</tr>
  		<c:forEach items="${viewtestpaper}" var="vt">
  		<c:if test="${vt.exfid==t.exfid}">
  		<tr>
  		<td style="text-align:left; vertical-align:top" >${vt.fnumber}</td>
  		<td>${vt.FFileName}</td>	
  		</tr>
  		</c:if>
  		</c:forEach>
  		</c:forEach>
  	</table>
  	<div style="width:100%;">
  		<div style="float:left;padding-left:30%;padding-top:3%;margin:0 5%;"><input style="width:100px;height:28px;" type="button" value="打印"></div>
  		<div style="float:left;padding-top:3%;"><input style="width:100px;height:28px;" type="button" value="返回" onclick="javascript:history.back(-1);"></div>
  	</div>
  </body>
</html>
