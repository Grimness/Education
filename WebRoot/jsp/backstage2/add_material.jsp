<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("UTF-8");
String htmlData = request.getParameter("fdetails") != null ? request.getParameter("fdetails") : "";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公共材料添加</title>
    
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="themes/default/default.css" />
	<link rel="stylesheet" href="plugins/code/prettify.css" />
	<script charset="utf-8" src="js/kindeditor-all.js"></script>
	<script charset="utf-8" src="lang/zh_CN.js"></script>
	<script charset="utf-8" src="plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="fdetails"]', {
				cssPath : '<%=basePath%>plugins/code/prettify.css',
				uploadJson : '<%=basePath%>jsp/backstage2/upload_json.jsp',
				fileManagerJson : '<%=basePath%>jsp/backstage2/file_manager_json.jsp',
				allowFileManager : true,
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
	<script language="javascript">
	function msg(){
	${msg}
	}
	
</script>	
  </head>

  <body onload="msg()">
   <form name="example" method="post" action="add_material.do">
   <center>
   公共材料标题:
   <input type="text" name="ftitle" id="ftitle" ><br/>
   <br/>

   <textarea name="fdetails" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea>
		<br />

		<input type="submit"  value="保存" /> 
		</center>
   </form>
  </body>
</html>
<%!
private String htmlspecialchars(String str) {
	str = str.replaceAll("&", "&amp;");
	str = str.replaceAll("<", "&lt;");
	str = str.replaceAll(">", "&gt;");
	str = str.replaceAll("\"", "&quot;");
	return str;
}
%>