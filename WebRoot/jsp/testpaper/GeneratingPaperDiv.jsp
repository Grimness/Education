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
    
    <title>组卷</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
  <table border="1" style="width:100%;border-collapse:collapse;">
  	<tr style="background:#CCCCCC;">
  		
  		<td>试卷名称</td>
  		<td>创建日期</td>
  		<td>描述</td>
  		<td>操作</td>
  	</tr>
  	<c:forEach items="${getExaminations}" var="gte">
  	<tr>
  		<td>${gte.fname}</td>
  		<td>${gte.fsettime}</td>
  		<td>${gte.FDESC}</td>
  		<td>
  		<input  id="alt" name="alt" type="button" value="修改" onclick="window.top.main.location='alter_examination.do?FExamID=${gte.FExamID}';">
  		<input  id="del" name="del" type="button" value="删除" onclick="javascript:window.location.href='list_delete_all.do?FExamID=${gte.FExamID}';">
  		</td>
  	</tr>
  	</c:forEach>
  </table>
  </body>
</html>
