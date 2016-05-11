<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>试题信息修改</title>
    
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
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="FFileName"]', {
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
		//答案
	KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="FAnsFileName"]', {
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
		//点拨
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="FPointersFileName"]', {
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
			var editor1 = K.create('textarea[name="FPointersFileName1"]', {
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
			var editor1 = K.create('textarea[name="FPointersFileName2"]', {
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
			var editor1 = K.create('textarea[name="FPointersFileName3"]', {
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
			var editor1 = K.create('textarea[name="FPointersFileName4"]', {
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
		//家长辅助建议
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="FTipsFileName"]', {
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
			var editor1 = K.create('textarea[name="FTipsFileName1"]', {
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
			var editor1 = K.create('textarea[name="FTipsFileName2"]', {
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
			var editor1 = K.create('textarea[name="FTipsFileName3"]', {
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
			var editor1 = K.create('textarea[name="FTipsFileName4"]', {
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
		//巩固练习题目1
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="FGGFileName"]', {
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
			var editor1 = K.create('textarea[name="FGGFileName2"]', {
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
			var editor1 = K.create('textarea[name="FGGFileName3"]', {
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
			var editor1 = K.create('textarea[name="FGGFileName4"]', {
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
		//巩固练习答案1
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="FAnsGGName"]', {
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
			var editor1 = K.create('textarea[name="FAnsGGName2"]', {
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
			var editor1 = K.create('textarea[name="FAnsGGName3"]', {
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
			var editor1 = K.create('textarea[name="FAnsGGName4"]', {
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
		//3分钟问题
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="FYYtlqs"]', {
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
		//3分钟答案
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="FYYtlan"]', {
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
		//3分钟材料
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="FYYmaterial"]', {
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
		
		//听力材料
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="Flistenmaterial"]', {
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
   document.forms.example.target="success1";
  document.forms.example.enctype="multipart/form-data";
	document.forms.example.submit();
  } 
    function alert(){
  document.forms.example.action="alert_fin.do";
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
  
  <body onload="msg()">
   <form name="example" method="post" >
     <input type="text" name="fid" id="fid" value="${ex.fid}" style="display:none">
  <input type="text" name="fsubjectid" id="fsubjectid" value="${ex.fsubjectid}" style="display:none">
   <input type="text" name="fversionid" id="fversionid" value="${ex.fversionid}" style="display:none">
   <input type="text" name="fclassid" id="fclassid" value="${ex.fclassid}" style="display:none">
   <input type="text" name="FVolume" id="FVolume" value="${ex.FVolume}" style="display:none">
   <input type="text" name="funit" id="funit" value="${ex.funit}" style="display:none">
     <input type="text" name="FHourID" id="FHourID" value="${ex.FHourID}" style="display:none">
      <input type="text" name="FRemark1" id="FRemark1" value="${ex.FAudioFileName}" style="display:none">
      <input type="text" name="FRemark2" id="FRemark2" value="${ex.FYYAudioFileName}" style="display:none">
	<div style="width:100%;">
		<div style="float:left;width:80%;padding-top:2%;">
		
			<table border="0" style="width:100%;border-collapse:collapse;">
			<tr>
				<td>
				序号
				</td>
				</tr>
				<tr>
				<td>
			<input type="text" style="width:10%;" name="FTitle" id="FTitle" value="${ex.FTitle }">
				</td>
				</tr>
			<tr>
					<td>课时描述</td>
					<td style="display:none">是否有公用材料</td>
				</tr>
				<tr>
					<td><input type="text" style="width:40%;" name="FHourDesc" id="FHourDesc" value="${ex.FHourDesc }"></td>
					<td style="display:none">
						<select style="width:40%;" name="FGyFileName" id="FGyFileName">
						<option value="">无</option>
						<c:forEach items="${getmaterial}" var="ma">
							<option value="${ma.fid}" <c:if test="${ex.FGyFileName==ma.fid}" >selected</c:if>>${ma.ftitle}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr >
					<td >大标题</td>
					<td>小标题</td>
				</tr>
				<tr>
					<td ><input type="text" style="width:40%;" name="FTitle1" id="FTitle1" value="${ex.FTitle1 }"></td>
					<td><input type="text" style="width:40%;" name="FTitle2" id="FTitle2" value="${ex.FTitle2 }"></td>
				</tr>
				<tr style="display:none">
					<td>小小标题</td>
					<td style="display:none">小小小标题</td>
				</tr>
				<tr style="display:none">
					<td><input type="text" style="width:40%;" name="FTitle3" id="FTitle3" value="${ex.FTitle3 }"></td>
					<td style="display:none"><input type="text" style="width:40%;" name="FTitle4" id="FTitle4" value="${ex.FTitle4 }"></td>
				</tr>
				
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td>音频文件</td>
					<td></td>
				</tr>
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
				<td colspan=2><input type="file"   id="FAudioFileName" name="FAudioFileName" style="background:#FFFFFF;"><input type="button" style="background:#F2F2F2;" value="上传" onclick="music()"><br/>
					<iframe id="success" name="success" style="width:20%;height:20%; "></iframe></td>
			
				</tr>
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td>听力材料</td>
				</tr>
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td colspan="2"><textarea name="Flistenmaterial" id="Flistenmaterial" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.flistenmaterial}</textarea></td>
				</tr>
				
				
				<tr>
					<td>标签</td>
					<td></td>
				</tr>
				<tr>
					<td><input type="text" style="width:40%;" name="FLabel" id="FLabel" value="${ex.FLabel }"></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="2">题目</td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="FFileName" id="FFileName" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FFileName }</textarea></td>
				</tr>
				<tr>
					<td colspan="2">答案</td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="FAnsFileName" id="FAnsFileName" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FAnsFileName }</textarea></td>
				</tr>
				<tr>
					<td colspan="2">点拨</td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="FPointersFileName" id="FPointersFileName" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FPointersFileName }</textarea></td>
				</tr>
				<tr>
					<td colspan="2">家长辅导提示</td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="FTipsFileName" id="FTipsFileName" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FTipsFileName }</textarea></td>
				</tr>
				<tr>
					<td>巩固练习标题</td>
					<td></td>
				</tr>
				<tr>
					<td><input type="text" style="width:40%;" name="FGGTitle1" id="FGGTitle1" value="${ex.FGGTitle1 }"></td>
					<td></td>
				</tr>
				<tr >
					<td>巩固练习标签</td>
					<td></td>
				</tr>
			
				<tr >
					<td><input type="text" style="width:40%;" name="FLabel1" id="FLabel1" value="${ex.FLabel1}"></td>
					<td></td>
				</tr>
				<tr >
					<td colspan="2">巩固练习题目内容</td>
				</tr >
				<tr >
					<td colspan="2"><textarea name="FGGFileName" id="FGGFileName" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FGGFileName }</textarea></td>
				</tr>
				<tr >
					<td colspan="2">巩固练习答案</td>
				</tr>
				<tr >
					<td colspan="2"><textarea name="FAnsGGName" id="FAnsGGName" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FAnsGGName}</textarea></td>
				</tr>
				
				<tr >
					<td colspan="2">点拨</td>
				</tr>
				
				<tr >
					<td colspan="2"><textarea name="FPointersFileName1" id="FPointersFileName1" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FPointersFileName1}</textarea></td>
				</tr>
				
					<tr >
					<td colspan="2">家长辅助提示</td>
				</tr>
				<tr >
					<td colspan="2"><textarea name="FTipsFileName1" id="FTipsFileName1" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FTipsFileName1}</textarea></td>
				</tr>
				
				<tr >
				<tr style="display:none">
					<td>巩固练习标题2</td>
					<td></td>
				</tr>
				<tr style="display:none">
					<td><input type="text" style="width:40%;" name="FGGTitle2" id="FGGTitle2" value="${ex.FGGTitle2 }"></td>
					<td></td>
				</tr>
				<tr style="display:none">
					<td>巩固练习标签2</td>
					<td></td>
				</tr>
			
				<tr style="display:none">
					<td><input type="text" style="width:40%;" name="FLabel2" id="FLabel2" value="${ex.FLabel2}"></td>
					<td></td>
				</tr>
				<tr style="display:none">
					<td colspan="2">巩固练习题目内容2</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FGGFileName2" id="FGGFileName2" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FGGFileName2}</textarea></td>
				</tr>
				<tr style="display:none">
					<td colspan="2">巩固练习答案2</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FAnsGGName2" id="FAnsGGName2" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FAnsGGName2}</textarea></td>
				</tr>
				
				
					<tr style="display:none">
					<td colspan="2">家长辅助提示2</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FTipsFileName2" id="FTipsFileName2" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FTipsFileName2}</textarea></td>
				</tr>
				<tr style="display:none">
					<td colspan="2">点拨2</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FPointersFileName2" id="FPointersFileName2" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FPointersFileName2}</textarea></td>
				</tr>
				<tr style="display:none">
					<td>巩固练习标题3</td>
					<td></td>
				</tr>
				
				<tr style="display:none">
					<td><input type="text" style="width:40%;" name="FGGTitle3" id="FGGTitle3" value="${ex.FGGTitle3 }"></td>
					<td></td>
				</tr>
				<tr style="display:none">
					<td>巩固练习标签3</td>
					<td></td>
				</tr>
			
				<tr style="display:none">
					<td><input type="text" style="width:40%;" name="FLabel3" id="FLabel3" value="${ex.FLabel3}"></td>
					<td></td>
				</tr>
				<tr style="display:none">
					<td colspan="2">巩固练习题目内容3</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FGGFileName3" id="FGGFileName3" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FGGFileName3 }</textarea></td>
				</tr>
				<tr style="display:none">
					<td colspan="2">巩固练习答案3</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FAnsGGName3" id="FAnsGGName3" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FAnsGGName3}</textarea></td>
				</tr>
				
				
					<tr style="display:none">
					<td colspan="2">家长辅助提示3</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FTipsFileName3" id="FTipsFileName3" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FTipsFileName3}</textarea></td>
				</tr>
				<tr style="display:none">
					<td colspan="2">点拨3</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FPointersFileName3" id="FPointersFileName3" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FTipsFileName3}</textarea></td>
				</tr>
				<tr style="display:none">
					<td>巩固练习标题4</td>
					<td></td>
				</tr>
				<tr style="display:none">
					<td><input type="text" style="width:40%;" name="FGGTitle4" id="FGGTitle4" value="${ex.FGGTitle4 }"></td>
					<td></td>
				</tr>
				<tr style="display:none">
					<td>巩固练习标签4</td>
					<td></td>
				</tr>
			
				<tr style="display:none">
					<td><input type="text" style="width:40%;" name="FLabel4" id="FLabel4" value="${ex.FLabel4}"></td>
					<td></td>
				</tr>
				<tr style="display:none">
					<td colspan="2">巩固练习题目内容4</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FGGFileName4" id="FGGFileName4" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FGGFileName4 }</textarea></td>
				</tr>
				<tr style="display:none">
					<td colspan="2">巩固练习答案4</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FAnsGGName4" id="FAnsGGName4" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FAnsGGName4}</textarea></td>
				</tr>
				
				
					<tr style="display:none">
					<td colspan="2">家长辅助提示4</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FTipsFileName4" id="FTipsFileName4" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FTipsFileName4}</textarea></td>
				</tr>
				<tr style="display:none">
					<td colspan="2">点拨4</td>
				</tr>
				<tr style="display:none">
					<td colspan="2"><textarea name="FPointersFileName4" id="FPointersFileName4" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FPointersFileName4}</textarea></td>
				</tr>
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td>标题</td>
					<td>音频</td>
				</tr>
			
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td><input type="text" style="width:40%;" name="FYYLabel" id="FYYLabel" value="${ex.FYYLabel}"></td>
					<td ><input type="file"   id="FYYAudioFileName" name="FYYAudioFileName" style="background:#FFFFFF;" ><input type="button" style="background:#F2F2F2;" value="上传" onclick="yymusic()">
						<br/><iframe id="success1" name="success1" style="width:25%;height:20%; "></iframe>
					</td>
				</tr>
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td colspan=2>标签</td>
					
				</tr>
			
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td><input type="text" style="width:40%;" name="FYYLabel1" id="FYYLabel1"  value="${ex.FYYLabel1}"></td>
				</tr>
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td colspan="2">听力三分钟题目</td>
				</tr>
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td colspan="2"><textarea name="FYYtlqs" id="FYYtlqs" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FYYtlqs}</textarea></td>
				</tr>
				
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td colspan="2">答案</td>
				</tr>
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td colspan="2"><textarea name="FYYtlan" id="FYYtlan" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FYYtlan}</textarea></td>
				</tr>
				
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td colspan="2">听力材料</td>
				</tr>
				<tr <c:if test="${ex.fsubjectid!='YY'}" >style="display:none"</c:if>>
					<td colspan="2"><textarea name="FYYmaterial" id="FYYmaterial" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${ex.FYYmaterial}</textarea></td>
				</tr>
				<tr>
					<td colspan="2">
					<br/>
						<div>
							<div style="float:left;padding-left:20%;margin:0 2%;"><input type="button"  onclick="alert()" style="line-height:5;width:150px;background:#F2F2F2;" value="修改" ></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div style="float:left;width:20%;">
			<table border="0" style="width:100%;">
				<tr onclick="test(${ex.fid})">
					<td>
						<!-- <table border="1" style="width:80%;height:300px;margin:80% 10% 1% 10%;border-collapse:collapse;">
							<tr >
								<td style="text-align:center;">5寸分辨率预览器<br/>点击浏览</td>
							</tr>
						</table> -->
						
					</td>
				</tr>
			</table>
		</div>		
	</div>
	
	<!-- 
	<div style="float:left;width:20%;">  
	<iframe id="frame" frameborder="0" src="http://www.w3cfuns.com/"></iframe>
	</div>
	 -->
	 </form>

  </body>
</html>
