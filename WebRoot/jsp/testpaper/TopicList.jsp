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
  			<td >题型</td>
  			<td width="25%">操作</td>
  		</tr>
  		 <c:forEach items="${gettx}" var="t">
  		<tr style="height:50px;" >
  			<td onclick="window.parent.Q.location='Question.do?exfid=${t.exfid}&FExamID=${t.FExamID }';">${t.fname}</td>
  			<td width="30%">
  			<input type="button" value="添加试题" onclick="javascript:window.open('add_ex.do?exfid=${t.exfid}&FExamID=${t.FExamID }')">
  			<input type="button" value="删除" onclick="javascript:window.location.href='tx_delete.do?exfid=${t.exfid}&FExamID=${t.FExamID }'">
  			</td>
  		</tr>
  		</c:forEach>
  	</table>
  </body>
</html>
