<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>电子档案详情-家长</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
</head>
<body style="background:#E5E5E5;">
	<table border="0" style="width:100%;border-collapse:collapse;">
		<tr >
			<td rowspan="2" style="width: 130px;height: 50px;"><img style="width: 100px;height: 50px;"  src="<%=basePath%>upload/${student.fimgpath}"></td>
			<td colspan="2" style="width: 10px;">${student.fname}</td>
			<td >
			<c:if test="${student.fsex==1}">男</c:if>
  			<c:if test="${student.fsex==0}">女</c:if>
  			</td>
		</tr>
		<tr>
			<td colspan="4">${student.fgradename}${student.fclassname}</td>
		</tr>
		<c:forEach var="eRecord" items="${ERecordDetail}">
		<tr>
			<td colspan="4" style="padding-left:2%;">科目：
				<c:if test="${eRecord.FSubjectID=='YW'}">语文</c:if>
  				<c:if test="${eRecord.FSubjectID=='SX'}">数学</c:if>
  				<c:if test="${eRecord.FSubjectID=='YY'}">英语</c:if>
  				</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left:2%;">期中成绩：${eRecord.FScoreM}</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left:2%;">期末成绩：${eRecord.FScoreE}</td>
		</tr>
		
		<tr>
			<td colspan="4" style="color: 	#1E90FF;">评价学生</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left:2%;">${eRecord.FEvaluate}</td>
		</tr>
		<tr>
			<td colspan="4"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>
