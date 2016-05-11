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
    
    <title>浏览试题内容</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
</style>
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
	<th>课时描述</th>
	<!-- <th>大标题</th>
	<th>小标题</th>
	 <th>小小标题</th>
	<th>小小小标题</th>
	-->
	<th>题目</th>
	<!--<th>答案</th>
	<th>点拨</th>
	<th>家长辅导提示</th>
	<th>标签</th>
	<th>巩固练习</th>
	<th>巩固练习答案</th>-->
	
</tr>

<tr >
<td>${ex.FHourDesc}</td>
<!--<td>${ex.FTitle1}</td>
<td>${ex.FTitle2}</td>
 
<td>${ex.FTitle3}</td>
<td>${ex.FTitle4}</td>
 -->
<td><div>
<c:if test="${not empty ex.FAudioFileName}"><audio controls="controls">
  <source src="<%=basePath%>upload/${ex.FAudioFileName}"  />
</audio></c:if><br/>
${ex.FTitle1}<br/>${ex.FTitle2}${ex.FFileName}

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
      <div class="tabCon" style="width:100%;background:#ffffff;text-align:center;"> 
      	<!--<c:if test="${not empty ex.FGGTitle1}">【巩固练习标题1】<br/>${ex.FGGTitle1}<br/></c:if>-->
      	<c:if test="${not empty ex.FGGFileName}">【巩固练习】<br/>${ex.FGGTitle1}<br/>${ex.FGGFileName}<br/></c:if>
      	<c:if test="${not empty ex.FAnsGGName}">【巩固练习答案】 ${ex.FAnsGGName}<br/></c:if>
      	<c:if test="${not empty ex.FPointersFileName1}">【巩固练习点拨】 ${ex.FPointersFileName1}<br/></c:if>
      	<c:if test="${not empty ex.FTipsFileName1}">【巩固练习家长辅导提示】 ${ex.FTipsFileName1}<br/></c:if>
      	<!--<c:if test="${not empty ex.FGGFileName2}">【巩固练习2】<br/>${ex.FGGTitle2}<br/>${ex.FGGFileName2}<br/></c:if>
      	<c:if test="${not empty ex.FAnsGGName2}">【巩固练习2答案】 ${ex.FAnsGGName2}<br/></c:if>
      	<c:if test="${not empty ex.FPointersFileName2}">【巩固练习2点拨】 ${ex.FPointersFileName2}<br/></c:if>
      	<c:if test="${not empty ex.FTipsFileName2}">【巩固练习2家长辅导提示】 ${ex.FTipsFileName2}<br/></c:if>
      	<c:if test="${not empty ex.FGGFileName3}">【巩固练习3】<br/>${ex.FGGTitle3}<br/>${ex.FGGFileName3}<br/></c:if>
      	<c:if test="${not empty ex.FAnsGGName3}">【巩固练习3答案】 ${ex.FAnsGGName3}<br/></c:if>
      	<c:if test="${not empty ex.FPointersFileName3}">【巩固练习3点拨】 ${ex.FPointersFileName3}<br/></c:if>
      	<c:if test="${not empty ex.FTipsFileName3}">【巩固练习3家长辅导提示】 ${ex.FTipsFileName3}<br/></c:if>
      	<c:if test="${not empty ex.FGGFileName4}">【巩固练习4】<br/>${ex.FGGTitle4}<br/>${ex.FGGFileName4}<br/></c:if>
      	<c:if test="${not empty ex.FAnsGGName4}">【巩固练习4答案】 ${ex.FAnsGGName4}<br/></c:if>
      	<c:if test="${not empty ex.FPointersFileName4}">【巩固练习4点拨】 ${ex.FPointersFileName4}<br/></c:if>
      	<c:if test="${not empty ex.FTipsFileName4}">【巩固练习4家长辅导提示】 ${ex.FTipsFileName4}<br/></c:if>-->
      	</div>
      	<c:if test="${not empty ex.FYYtlqs}">
      	<div class="tabCon" style="width:100%;background:#ffffff;text-align:center;">
      		<c:if test="${not empty ex.FYYAudioFileName}"><audio controls="controls">
  			<source src="<%=basePath%>upload/${ex.FYYAudioFileName}"  />
			</audio></c:if><br/>
      		${ex.FYYLabel}<br/>
      		${ex.FYYtlqs}<br/>【答案】${ex.FYYtlan}<br/>【听力材料】${ex.FYYmaterial}</div>
      	</c:if>
    </div>
</td>
<!--<td>${ex.FAnsFileName}</td>
<td>${ex.FPointersFileName}</td>
<td>${ex.FTipsFileName}</td>
<td>${ex.FLabel}</td>
<td>${ex.FGGFileName}</td>
<td>${ex.FAnsGGName}</td>-->

</tr>

</table>
  </body>
</html>
