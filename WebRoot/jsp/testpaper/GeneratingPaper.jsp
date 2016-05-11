<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
  <script type="text/javascript">
  	
  </script>
  <body>
  	<table border="1" style="width:100%;border-collapse:collapse;">
  		<tr style="background:#CCCCCC;height:30px;">
  			<td>试卷列表</td>
  		</tr>
  		<tr>
  			<td>
  				<div>
  					<div style="float:left;margin:0 3%;">试卷名称：<input style="width:250px;" type="text" id="t" name="t" ></div>
  					<div style="float:left;"><input id="check" name="check" type="button" value="查找"></div>
  				</div>
  				</br>
  				<div>
  					<div style="float:right;margin:0 1%;"><input style="width:80px;height:28px;" id="Release" name="Release" type="button" value="发布"></div>
  					<!--  <div style="float:right;margin:0 1%;"><input style="width:80px;height:28px;" id="delete" name="delete" type="button" value="删除"></div>
  					<div style="float:right;margin:0 1%;"><input style="width:80px;height:28px;" id="Modify" name="Modify" type="button" value="修改"></div>
  					-->
  					<div style="float:right;margin:0 1%;"><input style="width:80px;height:28px;" id="add" name="add" type="button" value="新增" onclick="javascript:window.location.href='testpaper_main.do';"></div>
  				</div>
  			</td>
  		</tr>
  		<tr>
  			<td><iframe src="view_examination.do" name="GPD" id="GPD" frameborder="0" name="GP" style="width:100%;height:300px;"></iframe></td>
  		</tr>
  	</table>
  </body>
</html>
