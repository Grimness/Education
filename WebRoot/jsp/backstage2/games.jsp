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
    
    <title>小游戏题库导入</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript">
  function view(){
  	var fversionid = document.getElementById("fversionid").value;
  	var fclassid = document.getElementById("fclassid").value;
  	var FVolume = document.getElementById("FVolume").value;
  	var funit = document.getElementById("funit").value;

  	window.self.maintable.location.href = "games_look.do?fversionid="+fversionid+"&fclassid="+fclassid+"&FVolume="+FVolume+"&funit="+funit;
  }
  </script>
  <body>
  <form name="games"  method="post" action="add_games.do" id="games" target="maintable" >
  <div style="border: 1px solid #D1D1D1;">
   <div style="background-color: #ECECEC;border: 1px solid #D1D1D1;width:100% " > 
  	小游戏题库管理 
  </div>
  <div style="border: 1px solid #D1D1D1;">
  &nbsp;版本：
  <select id="fversionid" name="fversionid">
 	<option value ="RJ">人教版</option>
  <option value="KX">开心版</option>
</select>
&nbsp;
年级：
  <select id="fclassid" name="fclassid">

  <option value="3">三年级</option>
  <option value="4">四年级</option>
  <option value="5">五年级</option>
  <option value="6">六年级</option>
</select>
&nbsp;
上下册：
  <select id="FVolume" name="FVolume">
  <option value ="1">上册</option>
  <option value ="2">下册</option>
  <!-- <option value="0">不分册</option> -->
</select>
&nbsp;
单元：<select id="funit" name="funit">
 <c:forEach items="${dy}" var="dy">
  <option value ="${dy.FNumber}">${dy.FName}</option>
 
  </c:forEach>
</select>
<%-- 课时：<select id="FHourID" name="FHourID">
	 <c:forEach items="${ks}" var="ks">
  <option value ="${ks.FNumber}">${ks.FName}</option>
 
  </c:forEach>
</select> --%>

<input type="button" value="查看/修改题目" onclick="view();">
<input type="submit" value="增加题目" >
  </div>
  <input type="text" name="fsubjectid" id="fsubjectid" value="YY" style="display:none">
  <div >
  	<iframe name="maintable" class="maintable"  style="width:100%;height:80%;"></iframe>
  	</div>
     </div> 
    </form>
  </body>
</html>
