<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>修改</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script language="javascript" >	
	function addtx(){

var ExamID=document.getElementsByName('FExamID');
	FExamID=ExamID.FExamID.value;
	//alert(FExamID);

	window.open('${pageContext.request.contextPath }/add_tx.do?FExamID='+FExamID,"newwindow", "height=100, top=150,left=500,width=300, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");

 }
 
 function txcheck(){
var ExamID=document.getElementsByName('FExamID');
	FExamID=ExamID.FExamID.value;
	//alert(FExamID);
	window.self.TL.location.href="check_tx.do?FExamID="+FExamID;

 }
 
 function preview(){
var ExamID=document.getElementsByName('FExamID');
	FExamID=ExamID.FExamID.value;
var fname=document.getElementsByName('fname');
	Fname=fname.fname.value;
	//alert(Fname);
	window.location.href="preview_examination.do?FExamID="+FExamID+"&testname="+Fname;

 }
 
 function check()
   {
    
    if (form1.fname.value=="")
     {
      alert('试卷名称不能为空');
      form1.fname.focus();
     return false;
     }
    if(form1.FDESC.value=="")
    {
    alert('试卷描述不为空');
    form1.FDESC.focus();
    
    return false;
   
    }
    }
	</script>
  </head>
  <body>
  <form id="form1" name="form1" method="post" action="add_examination_fin.do" onsubmit="return check();">
  <input type="text" name="FExamID" id="FExamID" value="${FExamID}" style="display:none">
  	<table border="1" style="width:100%;border-collapse:collapse;">
  		<tr style="background:#CCCCCC;height:30px;">
  			<td colspan="2">组卷</td>
  		</tr>
  		<tr>
  			<td colspan="2">
  				<div>
  					
					<div style="float:left;">试卷名称：<input style="width:200px;" id="fname" name="fname" type="text" ></div>
					<div style="float:left;margin-left:5%; ">描述：<input id="FDESC" name="FDESC" type="text" ></div>
  				</div>
  				</br>
  				<div>
  				<div style="float:right;margin:0 1%;"><input style="height:28px;" id="s" name="s" type="button" value="返回" onclick="javascript:window.location.href='delete_all.do?FExamID=${FExamID}';"></div>
  					<div style="float:right;margin:0 1%;"><input style="height:28px;" id="p" name="p" type="button" value="预览试卷" onclick="preview()"></div>
  					<div style="float:right;margin:0 1%;"><input style="height:28px;" id="s" name="s" type="submit" value="保存试卷" ></div>
  						
  				</div>
  			</td>
  		</tr>
  		<tr>
  			<td>
  				题型列表</br>
  				<div>
  					
  					<div style="float:right;margin:0 1%;"><input style="height:28px;" id="a" name="a" type="button" value="新增题型" onclick="addtx();"></div>
  					 <div style="float:right;margin:0 1%;"><input style="height:28px;" id="d" name="d" type="button" value="刷新" onclick="txcheck();"></div>
  				</div>
  			</td>
  			<td>
  				试题列表</br>
  				<div style="text-align:right;padding-right:3%;">
  				<!--  <input style="height:28px;" id="add" name="add" type="button" value="添加试题" onclick="javascript:window.location.href='AddItem.jsp';">--></div>
  			</td>
  		</tr>
  		<tr>
  			<td style="width:40%"><iframe  name="TL" id="TL" frameborder="0" class="TL" style="width:100%;height:400px;"></iframe></td>
  			<td style="width:60%"><iframe  name="Q" id="Q" frameborder="0" name="Q" style="width:100%;height:400px;"></iframe></td>
  		</tr>
  	</table>
  	</form>
  </body>
</html>
