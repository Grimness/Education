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
    
    <title>新增单元</title>
    
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
 <script language="javascript" >
 function msg(){
 	${msg}
 }
 </script>
  </head>
  
  <body onload="msg()">
     <form id="form1" name="form1" method="post" action="add_dy_fin.do" >
<center>
单元编码：<input type="text" name="FNumber" id="FNumber">
单元名称：<input type="text" name="FName" id="FName" >






<input class="btn btn-primary radius" type="submit" value="添加"  >
 </center>




     </form>
  </body>
</html>
