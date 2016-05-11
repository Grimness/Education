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
<title>填写档案</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
</head>
<body style="background:#E5E5E5;">
	<script type="text/javascript">
		var FPhone = localStorage.getItem("FPhone");
		function save(){
		saveForm.action = "<%=basePath%>ERecordSave.do?FPhone="+FPhone;
			$("#saveForm").submit();
		}
	</script>
	<table border="0" style="width:100%;border-collapse:collapse;">
		
		<tr>
			<td rowspan="2"  style="width: 130px;height: 50px;"><img style="width: 100px;height: 50px;" src="<%=basePath%>upload/${student.fimgpath}"></td>
			<td colspan="2" style="width: 10px">${student.fname}</td>
			<td>
			<c:if test="${student.fsex==1}">男</c:if>
  			<c:if test="${student.fsex==0}">女</c:if>
  			</td>
		</tr>
		<tr>
			<td colspan="4">${student.fgradename}${student.fclassname}</td>
		</tr>
		<form method="post" id="saveForm" >
		<tr>
			<td colspan="4" style="padding-left:2%;" >科目：<c:if test="${subject=='YW'}">语文</c:if>
  				<c:if test="${subject=='SX'}">数学</c:if>
  				<c:if test="${subject=='YY'}">英语</c:if>
  				<input name="FSubjectID"  type="hidden" value="${subject}">
  				<input name="FStudentID"  type="hidden" value="${student.fid}">
  				</td>
		</tr>
	
		<tr>
			<td colspan="4" style="padding-left:2%;">期中成绩：<input pattern="[0-9][0-9]\.[0-9]" title="请填写正确分数格式 如90.2" name="FScoreM" style="border:solid 1px #CCCCCC;background:#FFFFFF;" type="text" ></td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left:2%;">期末成绩：<input pattern="[0-9][0-9]\.[0-9]" title="请填写正确分数格式 如90.2" name="FScoreE" style="border:solid 1px #CCCCCC;background:#FFFFFF;" type="text" ></td>
		</tr>
		<tr>
			<td colspan="4"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		<tr>
			<td colspan="4" style="color: 	#1E90FF;">评价学生:</td>
		</tr>
		<tr>
			<td colspan="4" style="padding-left:2%;">
			<textarea name="FEvaluate"  style="width: 100%;height: 150px; font-size:large;"  autofocus="autofocus"  name="FContent"  rows="5" cols="50">
  		
  			</textarea>
			<!-- <input name="FEvaluate" style="border:solid 1px #E5E5E5;background:#E5E5E5;width:100%;height:200px;color:#CCCCCC;" type="text" value="根据该学生的成绩及表现进行评价"> -->
			</td>
		</tr>
		</form>
		<tr>
			<td colspan="4" style="text-align:center;padding-top:10%;"><input onclick="save()" style="background:#1E90FF;color:#FFFFFF;width:320px;height:40px;" type="button" value="保存"></td>
		</tr>	
	</table>
	</form>
</body>
</html>
