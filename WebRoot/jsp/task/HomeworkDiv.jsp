<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>作业布置</title>
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
  <script type="text/javascript">
  function a(){
  	var fphone = document.getElementById("fphone").value;
  	window.self.settingHomework.location.href = "${pageContext.request.contextPath }/SettingHomework.do?fphone="+fphone;
  }
  </script>
  <body onload="a();">
  <table style="width:100%;">
  	<tr>
  		<td><iframe name="settingHomework" id="settingHomework" frameborder="0" name="sh" style="width:100%;height:430px;"></iframe></td>
  	</tr>
  	<tr>
  		<td><hr></td>
  	</tr>
  	<tr>
  		<td style="text-align:center;">
  			<a href="<%=basePath%>AssigningHomework.do?fphone=${fphone}" >我要布置作业</a>
  		</td>
  	</tr>
  </table>
  <input type="hidden" id="fphone" value="${fphone }">
  </body>
</html>
