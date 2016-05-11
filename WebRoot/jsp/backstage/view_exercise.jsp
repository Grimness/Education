<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("UTF-8");%>  
<%response.setCharacterEncoding("UTF-8");%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>试题查看</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css"> 
	body,table{ 
	font-size:12px; 
	} 
	table{ 
	table-layout:fixed; 
	empty-cells:show; 
	border-collapse: collapse; 
	margin:0 auto; 
	} 
	td{ 
	height:30px; 
	} 
	h1,h2,h3{ 
	font-size:12px; 
	margin:0; 
	padding:0; 
	} 
	.table{ 
	border:1px solid #cad9ea; 
	color:#666; 
	} 
	.table th { 
	background-repeat:repeat-x; 
	height:30px; 
	} 
	.table td,.table th{ 
	border:1px solid #cad9ea; 
	padding:0 1em 0; 
	} 
	.table tr.alter{ 
	background-color:#EEEEE0; 
	}
	
	
	
	/*按钮*/
	.btn{display:inline-block;cursor:pointer;text-align:center; font-weight:400;white-space:nowrap;vertical-align: middle;*zoom:1;-webkit-transition:background-color .1s linear;-moz-transition:background-color .1s linear;-o-transition:background-color .1s linear;transition:background-color .1s linear;}
	a.btn:hover,a.btn:focus,a.btn:active,a.btn.active,a.btn.disabled,a.btn[disabled]{text-decoration:none}
	.btn:active,.btn.active{background-color:#ccc}
	.btn:first-child{*margin-left:0}
	.btn.active,.btn:active{-moz-box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset;-webkit-box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset; box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset;}
	 
	/*默认——灰色 通常用于取消*/
	.btn-default{background-color:#e6e6e6}
	.btn-default:hover,
	.btn-default:focus,
	.btn-default:active,
	.btn-default.active{color:#333;background-color:#c7c7c7;border-color:#c7c7c7}
	 
	/*主要——主色 通常用于确定、提交、购买、支付等*/
	.btn-primary{color:#fff;background-color:#5a98de; border-color:#5a98de}
	.btn-primary:hover,
	.btn-primary:focus,
	.btn-primary:active,
	.btn-primary.active{color:#fff;background-color:#6aa2e0;border-color:#6aa2e0}
	 
	/*次要按钮*/
	.btn-secondary{color:#fff;background-color:#3bb4f2; border-color:#3bb4f2}
	.btn-secondary:hover,
	.btn-secondary:focus,
	.btn-secondary:active,
	.btn-secondary.active{color:#fff;background-color:#0f9ae0;border-color:#0f9ae0}
	 
	/*成功*/
	.btn-success{color:#fff;background-color:#5eb95e; border-color:#5eb95e}
	.btn-success:hover,
	.btn-success:focus,
	.btn-success:active,
	.btn-success.active{color:#fff;background-color:#429842;border-color:#429842}
	 
	/*警告*/
	.btn-warning{color:#fff;background-color:#f37b1d; border-color:#f37b1d}
	.btn-warning:hover,
	.btn-warning:focus,
	.btn-warning:active,
	.btn-warning.active{color:#fff;background-color:#c85e0b;border-color:#c85e0b}
	 
	/*危险*/
	.btn-danger{color:#fff;background-color:#dd514c; border-color:#dd514c}
	.btn-danger:hover,
	.btn-danger:focus,
	.btn-danger:active,
	.btn-danger.active{color:#fff;background-color:#c62b26;border-color:#c62b26}
	 
	/*链接*/
	.btn-link{color:#0e90d2;cursor:pointer;border-color:transparent;background-color:transparent;}
	.btn-link:hover,
	.btn-link:focus,
	.btn-link:active,
	.btn-link.active{color:#095f8a;text-decoration:underline;background-color:transparent}
	 
	/*禁用状态*/
	.btn.disabled{cursor:not-allowed;background-image:none;opacity:.65;filter:alpha(opacity=65);box-shadow:none; pointer-events:none;} 
	</style> 
	<script type="text/javascript">
  function test(test){
   window.self.viewpng.location.href="${pageContext.request.contextPath }/view_png.do?fid="+test;
  }
 </script>
 
  </head>
  
  <body>
    <table width="100%" class="table" id="table1"> 
    
<tr> 
<th>序号</th> 
<th>课时描述</th> 
<th>课时</th> 
<th>课时二维码</th>
<th>大标题</th> 
<th>小标题</th> 
<th>题目</th> 
<th>答案</th> 
<th>点拨/听力材料</th> 
<th>家长辅助提示</th> 
<th>共用材料</th> 
<th>音频文件</th>
<th>文字标签</th>
<th>答案</th>
<th>微课二维码</th>    
</tr >
 <c:forEach items="${exercise}" var="ex">
<tr ondblclick="test(${ex.fid})">
<td>${ex.FTitle}</td>
<td>${ex.FHourDesc}</td>
<td><c:if test="${not empty ex.FHourPath}">${ex.FHourFileName}</c:if></td>
<td>${ex.FQRCode1}</td>
<td>${ex.FTitle1}</td>
<td>${ex.FTitle2}</td>
<td><c:if test="${not empty ex.FPath}">${ex.FFileName}</c:if></td>
<td><c:if test="${not empty ex.FAnsPath}">${ex.FAnsFileName}</c:if></td>
<td><c:if test="${not empty ex.FPointersPath}">${ex.FPointersFileName}</c:if></td>
<td><c:if test="${not empty ex.FTipsPath}">${ex.FTipsFileName}</c:if></td>
<td><c:if test="${not empty ex.FGyPath}">${ex.FGyFileName}</c:if></td>
<td></td>
<td>${ex.FLabel}</td>
<td>${ex.FAnswer}</td>
<td>${ex.FQRCode2}</td>
</tr>
</c:forEach>
</table>
<br/>
<div >
  	<iframe name="viewpng" class="viewpng"  style="width:100%;height:80%;"></iframe>
  	</div>
  </body>
</html>
