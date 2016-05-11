<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>试题浏览</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">

<!--	
<style>
table tr td{ border-bottom: #FF0000 solid 1px; }

</style>
-->
  </head>
  
  <body>
  <table cellspacing="0" style="border:dashed 1px" >
  <tr>
   <td colspan=2>${ex.FTitle1}</td>
   </tr>
   <tr>
   <td width=15%>${ex.FTitle2}</td><td width=70%>${ex.FFileName}</td>
   </tr>
   <c:if test="${not empty ex.FLabel}">
	<tr>
	<td width=15%>【标签】</td><td width=70%>${ex.FLabel}</td>
	</tr>
	</c:if>
	<tr>
	<td width=15%>【答案】</td><td width=70%>${ex.FAnsFileName}</td>
	</tr>
	<c:if test="${not empty ex.FPointersFileName}">
	<tr>
	<td width=15%>【点拨】</td><td width=70%>${ex.FPointersFileName}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FTipsFileName}">
	<tr>
	<td width=15%>【家长辅助提示】</td><td width=70%>${ex.FTipsFileName}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FGGTitle1}">
	<tr>
	<td width=15%></td><td width=70%>${ex.FGGTitle1}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FGGFileName}">
	<tr>
	<td width=15%>【巩固练习1】</td><td width=70%>${ex.FGGFileName}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FLabel1}">
	<tr>
	<td width=15%>【巩固练习1标签】</td><td width=70%>${ex.FLabel1}</td>
	</tr>
	</c:if>
	 <c:if test="${not empty ex.FAnsGGName}"><tr>
	<td width=15%>【巩固练习答案1】</td><td width=70%>${ex.FAnsGGName}</td>
	</tr>
	</c:if>
	 <c:if test="${not empty ex.FPointersFileName1}"><tr>
	<td width=15%>【巩固练习1点拨】</td><td width=70%>${ex.FPointersFileName1}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FTipsFileName1}"><tr>
	<td width=15%>【巩固练习1家长辅导提示】</td><td width=70%>${ex.FTipsFileName1}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FGGTitle2}">
	<tr>
	<td width=15%></td><td width=70%>${ex.FGGTitle2}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FGGFileName2}">
	<tr>
	<td width=15%>【巩固练习2】</td><td width=70%>${ex.FGGFileName2}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FLabel2}">
	<tr>
	<td width=15%>【巩固练习2标签】</td><td width=70%>${ex.FLabel2}</td>
	</tr>
	</c:if>
	 <c:if test="${not empty ex.FAnsGGName2}"><tr>
	<td width=15%>【巩固练习答案2】</td><td width=70%>${ex.FAnsGGName2}</td>
	</tr>
	</c:if>
	 <c:if test="${not empty ex.FPointersFileName2}"><tr>
	<td width=15%>【巩固练习2点拨】</td><td width=70%>${ex.FPointersFileName2}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FTipsFileName2}"><tr>
	<td width=15%>【巩固练习2家长辅导提示】</td><td width=70%>${ex.FTipsFileName2}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FGGTitle3}">
	<tr>
	<td width=15%></td><td width=70%>${ex.FGGTitle3}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FGGFileName3}">
	<tr>
	<td width=15%>【巩固练习3】</td><td width=70%>${ex.FGGFileName3}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FLabel3}">
	<tr>
	<td width=15%>【巩固练习3标签】</td><td width=70%>${ex.FLabel3}</td>
	</tr>
	</c:if>
	 <c:if test="${not empty ex.FAnsGGName3}"><tr>
	<td width=15%>【巩固练习答案3】</td><td width=70%>${ex.FAnsGGName3}</td>
	</tr>
	</c:if>
	 <c:if test="${not empty ex.FPointersFileName3}"><tr>
	<td width=15%>【巩固练习3点拨】</td><td width=70%>${ex.FPointersFileName3}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FTipsFileName3}"><tr>
	<td width=15%>【巩固练习3家长辅导提示】</td><td width=70%>${ex.FTipsFileName3}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FGGTitle4}">
	<tr>
	<td width=15%></td><td width=70%>${ex.FGGTitle4}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FGGFileName4}">
	<tr>
	<td width=15%>【巩固练习4】</td><td width=70%>${ex.FGGFileName4}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FLabel4}">
	<tr>
	<td width=15%>【巩固练习4标签】</td><td width=70%>${ex.FLabel4}</td>
	</tr>
	</c:if>
	 <c:if test="${not empty ex.FAnsGGName4}"><tr>
	<td width=15%>【巩固练习答案4】</td><td width=70%>${ex.FAnsGGName4}</td>
	</tr>
	</c:if>
	 <c:if test="${not empty ex.FPointersFileName4}"><tr>
	<td width=15%>【巩固练习4点拨】</td><td width=70%>${ex.FPointersFileName4}</td>
	</tr>
	</c:if>
	<c:if test="${not empty ex.FTipsFileName4}"><tr>
	<td width=15%>【巩固练习4家长辅导提示】</td><td width=70%>${ex.FTipsFileName4}</td>
	</tr>
	</c:if>
	</table>
  </body>
</html>
