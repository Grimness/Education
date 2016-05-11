<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<base href="<%=basePath%>">
<title>我要布置作业</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<style type="text/css">
td{
padding-top:3%;
}
</style>
</head>
<script type="text/javascript">
	function apple() {

		var fclasscode1 = document.getElementsByName("fclasscode");
		var fclasscode = "";
		for(var i = 0; i<fclasscode1.length;i++){
			var b = fclasscode1[i];
			if (b.checked) {
				fclasscode = b.value;	
			}
		}
		
		
		var fphone = document.getElementById("fphone").value;
		
		
		

		
		window.location.href = "ChooseClass.do?fclasscode=" + fclasscode
				+ "&fphone=" + fphone;

	}
	function Submit(){
		var fphone = document.getElementById("fphone").value;
		var fclasscode1 = document.getElementsByName("fclasscode");
		var FQRCode1 = document.getElementById("fqrCode1").value;
		var FUserName = document.getElementById("fName").value;
		var FName = document.getElementById("FFileName").value;
		var FReleasetime = document.getElementById("FReleasetime").value;
		
		
		if (FReleasetime!=null&&FReleasetime!="") {
					var fclasscode = "";
		for(var i = 0; i<fclasscode1.length;i++){
			var b = fclasscode1[i];
			if (b.checked) {
				fclasscode = b.value;	
			}
		}
		
		alert("作业发布成功!");
		window.location.href = "SettingHomework2.do?fclasscode=" + fclasscode+"&fphone="+fphone+"&FQRCode1="+FQRCode1+"&FName="+FName+"&freleasetime="+FReleasetime+"&FUserName="+FUserName;
		}else{
		alert("请选择时间");
		}

	}
	function changeBegin(){  
 var str_text = document.getElementById("FFileName");
 if (str_text.value==""){
  str_text.value="在这里写备注内容~";
 }
}
function changeEnd(){  
 var str_text = document.getElementById("FFileName");
 if (str_text.value=="在这里写备注内容~"){
  str_text.value="";
 }
}
	
</script>
<body>
	<table border="0" style="width:100%;border-collapse: collapse;">
		<tr>
			<td colspan="2"  style="text-align:center;">科目：${selectExercise1.FFileName}</td>
			<input type="hidden" id="FFileName1" name="FFileName1" value="${selectExercise1.FFileName}">
		</tr>
		<tr>
			<td colspan="2" style="color:#4876FF;">选择班级：</td>
		</tr>
		
		<c:forEach items="${selectTeacherClass }" begin="0" end="5" var="sc">
			<tr>
			
				<td><input type="radio" id="fclasscode" name="fclasscode" <c:if test="${getFclasscode == sc.fclasscode}">checked='checked'</c:if> value="${sc.fclasscode }">${sc.fgradeid}${sc.fclassid}</td>
			
	<%-- 		<c:choose>
				<c:when test="${getFclasscode ==sc.fclasscode}">
				<td><input type="radio" id="fclasscode" name="fclasscode" checked='checked' value="${sc.fclasscode }">${sc.fgradeid}${sc.fclassid}</td>
				</c:when>
				<c:otherwise>
				<td><input type="radio" id="fclasscode" name="fclasscode" value="${sc.fclasscode }">${sc.fgradeid}${sc.fclassid}</td>
				</c:otherwise>
			</c:choose> --%>
			</tr>
			<tb>
			<input type="hidden" id="fphone" value="${apples }">
			<input type="hidden" id="fgradeid" value="${sc.fgradeid}">
			<input type="hidden" id="fclassid" value="${sc.fclassid}">
			</tb>
			
		</c:forEach>
		<tr>
			<td colspan="2" style="color:#4876FF;">选择作业课时：</td>
		</tr>
		<tr>
			<td><input type="radio" id="Fsynchronization"
				name="Fsynchronization" runat="server" <c:if test="${getFclasscode != null}">checked="checked"</c:if> onclick="javascript:apple();">同步导学</td>
			<td></td>
		</tr>

		<tr>
			<td><input type="radio" id="Fsynchronization"
				name="Fsynchronization" value='' onclick="javascript:apple();" runat="server" >自定义作业布置</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="2" style="color:#4876FF;">选择截止提交时间：</td>
		</tr>
		<tr>

			<td><input id="FReleasetime" type="text" name="FReleasetime"
				onclick="WdatePicker({el:$dp.$('d12'),dateFmt:'yyyy-MM-dd HH:mm'})"
				src="<%=basePath%>/js/skin/datePicker.gif" width="16" height="22"
				align="absmiddle" style="cursor:pointer;width:100%;border:1px solid #CFCFCF;height:30px;" />
		</tr>
		<tr>
			<td colspan="2" style="color:#4876FF;">备注：</td>
		</tr>
		<tr>
			<td colspan="2"><textarea  rows="5" cols="60%" id="FFileName" name="FFileName" onblur="changeBegin()" onfocus="changeEnd()"  style="width:98%;background:#DBDBDB;border:1px solid #CFCFCF;color:#787878;">在这里写备注内容~</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;padding-top:3%;"><input  type="button"
				style="width:90%;background:#4876FF;height:35px;color:#FFFFFF;"  onclick="javascript:Submit();" value="发布作业">
			</td>
		</tr>
		<%-- <tb><input type="hidden" id="fclasscode" value="${getFclasscode }"></tb> --%>
		<tb><input type="hidden" id="fphone" value="${getFphone }"></tb>
		<tb><input type="hidden" id="fsynchronization" value="${getFsynchronization }"></tb>
		<tb><input type="hidden" id="fqrCode1" value="${fqrCode2 }"></tb>
		<tb><input type="hidden" id="fName" value="${fName }"></tb>
		
	</table>
</body>
</html>