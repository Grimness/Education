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
    
    <title>试题查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		
	<script src="js/jquery.lightbox-0.5.js"></script> 
	<link rel="stylesheet" href="css/jquery.lightbox-0.5.css" media="screen">
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script> 
<style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color:#ECECEC;
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}


table.gtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 0px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gtable th {
	border-width: 0px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color:#ECECEC;
}
table.gtable td {
	border-width: 0px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>

	<script type="text/javascript">
  function test(test){
   window.location.href="${pageContext.request.contextPath }/alter_exercise.do?fid="+test;
  }
  

 </script>
 <script type="text/javascript">

    jQuery.Huitab =function(tabBar,tabCon,class_name,tabEvent,i){
    var $tab_menu=$(tabBar);
      // 初始化操作
      $tab_menu.removeClass(class_name);
      $(tabBar).eq(i).addClass(class_name);
      $(tabCon).hide();
      $(tabCon).eq(i).show();
      $tab_menu.bind(tabEvent,function(){
      $tab_menu.removeClass(class_name);
          $(this).addClass(class_name);
          var index=$tab_menu.index(this);
           $(tabCon).slideToggle();
          $(tabCon).hide();
          $(tabCon).eq(index).show();
      });
    }
    $(function(){
$.Huitab("#tab_demo .tabBar span","#tab_demo .tabCon","current","click","0");
});
</script>
  </head>
  
  <body>
 
   <table class="gridtable" width="100%">
<tr>
	<th>序号</th>
	<th>课时描述</th>
	
	<th >题目 
	
	<img height="100px" width="100px" src="<%=basePath%>kscode/${qrcode}.png"></th>
	
	<c:if test="${subject.fsubjectid=='SX'}" ><th></th></c:if>
</tr>
<c:forEach items="${exercise}" var="ex">
<tr ondblclick="test(${ex.fid})">
<td>${ex.FTitle}</td>
<td><img height="20px" width="20px" src="<%=basePath%>images/del.png" style="cursor:pointer;" onclick="javascript:window.location.href='del_exercise.do?fid=${ex.fid}&fsubjectid=${ex.fsubjectid }&fversionid=${ex.fversionid }&fclassid=${ex.fclassid }&FVolume=${ex.FVolume }&funit=${ex.funit }&FHourID=${ex.FHourID }'">
${ex.FHourDesc}</td>

<td ><div>
<c:if test="${not empty ex.FAudioFileName}"><audio controls="controls">
  <source src="<%=basePath%>upload/${ex.FAudioFileName}"  />
</audio></c:if><br/>
${ex.FTitle1}
<table class="gtable"  >
<tr>
<td style="text-align:left; vertical-align:top">${ex.FTitle2}</td>
<td>${ex.FFileName}</td>
</tr>
</table>
</div>
<div id="tab_demo" class="HuiTab">
      <div class="tabBar cl">
      <span style="display:none;"></span>
      <span style="width:50" ><img src="<%=basePath%>jsp/exam/images/da-nsl.png" width="50px" height="25px"  onmouseover="this.src='<%=basePath%>jsp/exam/images/da-sel.png'" onmouseout="this.src='<%=basePath%>jsp/exam/images/da-nsl.png'">
      </span>
      <span style="width:43" ><img src="<%=basePath%>jsp/exam/images/db-nsl.png" width="50px" height="25px" onmouseover="this.src='<%=basePath%>jsp/exam/images/db-sel.png'" onmouseout="this.src='<%=basePath%>jsp/exam/images/db-nsl.png'"></span>
      <span style="width:99" ><img src="<%=basePath%>jsp/exam/images/ts-nsl.png" width="101" height="25" onmouseover="this.src='<%=basePath%>jsp/exam/images/ts-sel.png'" onmouseout="this.src='<%=basePath%>jsp/exam/images/ts-nsl.png'"></span>
      <span><img src="<%=basePath%>jsp/exam/images/gg-nsl.png" width="69" height="25" onmouseover="this.src='<%=basePath%>jsp/exam/images/gg-sel.png'" onmouseout="this.src='<%=basePath%>jsp/exam/images/gg-nsl.png'"></span>
      <c:if test="${not empty ex.FYYtlqs}"><span><img src="<%=basePath%>jsp/exam/images/tl-nsl.png" width="69" height="25" onmouseover="this.src='<%=basePath%>jsp/exam/images/tl-sel.png'" onmouseout="this.src='<%=basePath%>jsp/exam/images/tl-nsl.png'"></span></c:if>
      </div>
    <div class="tabCon" style="display:none;"></div>
      <div class="tabCon" style="width:100%;background:#ffffff;text-align:center;">${ex.FAnsFileName}</div>
      <div class="tabCon" style="width:100%;background:#ffffff;text-align:center;">${ex.FPointersFileName}</div>
      <div class="tabCon" style="width:100%;background:#ffffff;text-align:center;">${ex.FTipsFileName}</div>
      <div class="tabCon" style="width:100%;background:#ffffff;text-align:left;"> 
      	
      	<c:if test="${not empty ex.FGGFileName}">【巩固练习】<br/>${ex.FGGTitle1}<br/>${ex.FGGFileName}<br/></c:if>
      	<c:if test="${not empty ex.FAnsGGName}">【巩固练习答案】 ${ex.FAnsGGName}<br/></c:if>
      	<c:if test="${not empty ex.FPointersFileName1}">【巩固练习点拨】 ${ex.FPointersFileName1}<br/></c:if>
      	<c:if test="${not empty ex.FTipsFileName1}">【巩固练习家长辅导提示】 ${ex.FTipsFileName1}<br/></c:if>
      	
      	</div>
      	<c:if test="${not empty ex.FYYtlqs}">
      	<div class="tabCon" style="width:100%;background:#ffffff;text-align:left;">
      		<c:if test="${not empty ex.FYYAudioFileName}"><audio controls="controls">
  			<source src="upload/${ex.FYYAudioFileName}"  />
			</audio></c:if><br/>
      		${ex.FYYLabel}<br/>
      		${ex.FYYtlqs}<br/>【答案】${ex.FYYtlan}<br/>【听力材料】${ex.FYYmaterial}</div>
      	</c:if>
    </div>
</td>

<c:if test="${subject.fsubjectid=='SX'}" ><td><input type="button" value="添加微课码" onclick="window.open('addFWKQRCode.do?fid=${ex.fid}','blank_','scrollbars=yes,resizable=yes,width=750,height=450')"></td></c:if>
</tr>
</c:forEach>
</table>
  </body>
</html>
