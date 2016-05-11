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
    
    <title>小游戏题目添加</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="themes/default/default.css" />
	<link rel="stylesheet" href="plugins/code/prettify.css" />
	<script charset="utf-8" src="js/kindeditor-all.js"></script>
	<script charset="utf-8" src="lang/zh_CN.js"></script>
	<script charset="utf-8" src="plugins/code/prettify.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	   <script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="Fdiscuss"]', {
				cssPath : '<%=basePath%>plugins/code/prettify.css',
				uploadJson : '<%=basePath%>jsp/backstage2/upload_json.jsp',
				fileManagerJson : '<%=basePath%>jsp/backstage2/file_manager_json.jsp',
				allowFileManager : true,
				afterBlur: function(){this.sync();},
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
		
	KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="Fimg"]', {
				cssPath : '<%=basePath%>plugins/code/prettify.css',
				uploadJson : '<%=basePath%>jsp/backstage2/upload_json.jsp',
				fileManagerJson : '<%=basePath%>jsp/backstage2/file_manager_json.jsp',
				allowFileManager : true,
				afterBlur: function(){this.sync();},
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
</script>
<script type="text/javascript">
  function test(test){
   window.open('${pageContext.request.contextPath }/view.do?fid='+test, "newwindow", "height=580, width=1000, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
  }
  
  function music(){
  document.forms.example.action="servlet/UploadHandleServlet";
   document.forms.example.target="success";
  document.forms.example.enctype="multipart/form-data";
	document.forms.example.submit();
  }
  
  function yymusic(){
  document.forms.example.action="servlet/UploadHandleServlet";
   document.forms.example.target="success";
  document.forms.example.enctype="multipart/form-data";
	document.forms.example.submit();
  } 
  
    function add(){
  document.forms.example.action="add_games_fin.do";
 document.forms.example.target="";
document.forms.example.enctype="";
	document.forms.example.submit();
  }
 </script>
<style type="text/css">
		td{
		line-height:50px;
		}
		select::-ms-expand { display: none; }
	select {
  /*Chrome和Firefox里面的边框是不一样的，所以复写了一下*/
  border: solid 1px #000;

  /*很关键：将默认的select选择框样式清除*/
  appearance:none;
  -moz-appearance:none;
  -webkit-appearance:none;

  /*在选择框的最右侧中间显示小箭头图片*/
  background: url("arrow.png") no-repeat scroll right center transparent;


  /*为下拉小箭头留出一点位置，避免被文字覆盖*/
  padding-right: 14px;
}
	</style>
  </head>
    <body>
   <form name="example" method="post" >
   <input type="text" name="fsubjectid" id="fsubjectid" value="${ex.fsubjectid}" style="display:none">
   <input type="text" name="fversionid" id="fversionid" value="${ex.fversionid}" style="display:none">
   <input type="text" name="fclassid" id="fclassid" value="${ex.fclassid}" style="display:none">
   <input type="text" name="FVolume" id="FVolume" value="${ex.FVolume}" style="display:none">
   <input type="text" name="funit" id="funit" value="${ex.funit}" style="display:none">
     <input type="text" name="FHourID" id="FHourID" value="${ex.FHourID}" style="display:none">
    
   	<div style="width:100%;">
   			<div style="float:left;width:80%;padding-top:2%;">
			<table border="0" style="width:100%;border-collapse:collapse;">
			<tr>
			<td>序号</td>
			</tr>
			<tr>
			<td><input type="text" id="number" name="number"></td>
			</tr>
			<tr>
			<td>标题</td>
			</tr>
			<tr>
			<td><input type="text" id="Ftitle" name="Ftitle"></td>
			</tr>
			<tr>
			<td>图片</td>
			</tr>
			<tr>
			<td><textarea name="Fimg" id="Fimg" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea></td>
			</tr>
			<tr>
			<td>答案</td>
			</tr>
			<tr>
			<td><input type="text" id="Fanswer" name="Fanswer"></td>
			</tr>
			<tr>
			<td>音频文件</td>
			</tr>
			<tr>
			<td ><input type="file"   id="Faudio" name="Faudio" style="background:#FFFFFF;"><input type="button" style="background:#F2F2F2;" value="上传" onclick="music()"><br/>
			<iframe id="success" name="success" style="width:20%;height:20%; "></iframe></td>
				
			</tr>
			<tr>
			<td>例句</td>
			</tr>
			<tr>
			<td><textarea name="Fdiscuss" id="Fdiscuss" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea></td>
			</tr>
			<tr >
					<td >
					<br/>
						<div>
							<div style="float:left;padding-left:20%;margin:0 2%;"><input type="button" onclick="add()" style="line-height:5;width:150px;background:#F2F2F2;" value="完成" ></div>
							
						</div>
					</td>
			</table>
			</div>
			</div>
   </form>
</body>
</html>
