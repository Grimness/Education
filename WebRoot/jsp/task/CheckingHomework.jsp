<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>查看作业情况</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<style type="text/css">
	td{
	padding-top:4%;
	}
	</style>
	<script src="js/jquery.js"></script> 
<script src="js/jquery.lightbox-0.5.js"></script> 
<link rel="stylesheet" href="css/jquery.lightbox-0.5.css" media="screen">
<script type="text/javascript">
$(function() {
    $('#imglightbox a').lightBox();
});

function changeBegin1(){  
 var str_text = document.getElementById("text1");
 if (str_text.value==""){
  str_text.value="在这里打分";
 }
}
function changeEnd1(){  
 var str_text = document.getElementById("text1");
 if (str_text.value=="在这里打分"){
  str_text.value="";
 }
}
function changeBegin2(){  
 var str_text = document.getElementById("t1");
 if (str_text.value==""){
  str_text.value="在这里可以直接写评语";
 }
}
function changeEnd2(){  
 var str_text = document.getElementById("t1");
 if (str_text.value=="在这里可以直接写评语"){
  str_text.value="";
 }
}
function app(){
	/* var fphone = document.getElementById("fphone").value;           
	var fclasscode = document.getElementById("fclasscode").value;       
	var fimg = document.getElementById("fimg").value;             
	var fchildid = document.getElementById("fchildid").value;         
	var fQRCode1 = document.getElementById("fQRCode1").value;         
	var assigninghomework = document.getElementById("assigninghomework").value;*/
	var fclasscode = document.getElementById("fclasscode").value;         
	var FChildid = document.getElementById("FChildid").value;           
	var fid = document.getElementById("fid").value; 
	var fscore = document.getElementById("t1").value;
	var fcomment = document.getElementById("text1").value;
	var finspect1 = document.getElementsByName("radio1");
	
	
	
	var finspect = "";
		for(var i = 0; i<finspect1.length;i++){
			var b = finspect1[i];
			if (b.checked) {
				finspect = b.value;	
				}
		}

	
	alert(finspect);
	alert(fcomment);
	alert(fscore);
	
	  window.location.href = "JobStatus2.do?fclasscode=" + fclasscode
				+ "&FChildid=" + FChildid+"&fid="+fid+"&fscore="+fscore+"&fcomment="+fcomment+"&finspect="+finspect;
 
}

</script>
</head>
<body>
	<table border="0" style="width:100%;border-collapse:collapse;">
	<tbody id="table2">
	<c:forEach items="${selectCheckingHomework }" var="tc">
		<tr style="background:#EAEAEA;">
			<td colspan="3">【作业】</td>
		</tr>
		<tr style="background:#EAEAEA;">
			 <td colspan="3">${tc.fsubjectid }${tc.fgradeid }${tc.fvolume }</td> 
		</tr>
		<tr style="background:#EAEAEA;">
			<td colspan="3">完成"${tc.FHourDesc }"课时&nbsp;${tc.freleasetime}&nbsp;前提交</td>
		</tr>
		<tr style="background:#EAEAEA;"> 
			<td style="color:#cccccc;height:30px;" colspan="3">——${tc.FUserName } 老师</td>
		</tr>
		<tr>
			<td colspan="3" style="height:30px;">【作业上传】</td>
		</tr>
		 <c:choose>
			<c:when test="${tc.fimg == null }">
			<tr>
				<td>
					家长还没上传作业!
				</td>
				
			</tr>
			</c:when>
			
			<c:otherwise>
			
			<tr>
			<td></td>
			<td style="text-align:center;height:50px;width:50px;" id="imglightbox" >
			<a href="<%=basePath%>${tc.fimg}"><img height="50px" width="50px" src="<%=basePath%>${tc.fimg}"></a></td>
			<td></td>
			</tr>
		</c:otherwise>
		</c:choose> 
		
		<tr>
			<td style="width:40%;"><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
			<td style="text-align:center;color:#1E90FF;">我的批阅</td>
			<td style="width:40%;"><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
		</tr>
	 	<c:choose>
			<c:when test="${tc.fscore == '' }">
			 
			  请选择批阅方式<br>
	<input type="radio" name="radio1" id="radio1" value="0" runat="server" >直接选择"已阅"<br>
	<input type="radio" name="radio1" id="radion1" value="1" runat="server">我要评分
	<input type="text" id="text1" onkeyup="value=value.replace(/[^\d]/g,'') " onblur="changeBegin1()" onfocus="changeEnd1()" style="border:0;border-bottom:1 solid #F0F0F0;text-align:center;color:#cccccc;" value="在这里打分"><br>
	<textarea id="t1" rows="5" cols="7" wrap="no/off" style="width:250px;height:100px;background:#F7F7F7;border:1 solid #F0F0F0;color:#cccccc;" onblur="changeBegin2()" onfocus="changeEnd2()">在这里可以直接写评语</textarea>
  	<input type="button" onclick="app();" value="提交">
			</c:when>
			<c:otherwise>
 			<tr >
			<td><c:if test="${tc.finspect == '1' }">我的打分:<font style="color:red;">"${tc.fcomment }分"</font></c:if></td>
			<td></td>
			<td style="text-align:center;"><c:if test="${tc.finspect == '0' }"><font style="color:red;">已阅</font></c:if></td>
			</tr>
		
		</c:otherwise>
		</c:choose> 
			
		<input type="hidden" id="fclasscode" name="fclasscode" value="${tc.fclasscode}">        
  			<input type="hidden" id="FChildid" name="FChildid" value="${tc.FChildid}">
		<input type="hidden" id="fid" name="fid" value="${tc.fid}"> 
		</c:forEach>
		</tbody>
	</table>
</body>
	<!-- <div style="height:30px;margin:20px 0 0 0;">
        <span id="spanFirst">第一页</span>
        <span id="spanPre">上页</span>
        <span id="spanNext">下页</span>
        <span id="spanLast">最后一页</span>
        第
        <span id="spanPageNum"></span>
        页/共
        <span id="spanTotalPage"></span>
        页
    </div>
    <script type="text/javascript">
var theTable = document.getElementById("table2");
var totalPage = document.getElementById("spanTotalPage");
var pageNum = document.getElementById("spanPageNum");

var spanPre = document.getElementById("spanPre");
var spanNext = document.getElementById("spanNext");
var spanFirst = document.getElementById("spanFirst");
var spanLast = document.getElementById("spanLast");

var numberRowsInTable = theTable.rows.length;
var pageSize = 15;
var page = 1;

//下一页
function next() {

    hideTable();
    
    currentRow = pageSize * page;
    maxRow = currentRow + pageSize;
    if ( maxRow > numberRowsInTable )
    maxRow = numberRowsInTable;
    for ( var i = currentRow; i< maxRow; i++ ) {
        theTable.rows[i].style.display = '';
    }
        page++;
    if ( maxRow == numberRowsInTable ){
        nextText();
        lastText();
    }
    showPage();
    preLink();
    firstLink();
}

//上一页
function pre() {

    hideTable();
    
    page--;

    currentRow = pageSize * page;
    maxRow = currentRow - pageSize;
    if ( currentRow > numberRowsInTable )
    currentRow = numberRowsInTable;
    for ( var i = maxRow; i< currentRow; i++ ) {
        theTable.rows[i].style.display = '';
    }


    if ( maxRow == 0 ) {
        preText();
        firstText();
    }
    
    showPage();
    nextLink();
    lastLink();
}

//第一页
function first() {
    hideTable();
    page = 1;
    for ( var i = 0; i<pageSize; i++ ) {
        theTable.rows[i].style.display = '';
    }
    showPage();

    preText();
    nextLink();
    lastLink();
}

//最后一页
function last() {
    hideTable();
    page = pageCount();
    currentRow = pageSize * (page - 1);
    for ( var i = currentRow; i<numberRowsInTable; i++ ) {
        theTable.rows[i].style.display = '';
    }
    showPage();
    
    preLink();
    nextText();
    firstLink();
}

function hideTable() {
    for ( var i = 0; i<numberRowsInTable; i++ ) {
    theTable.rows[i].style.display = 'none';
    }
}

function showPage() {
    pageNum.innerHTML = page;
}

//总共页数
function pageCount() {
    var count = 0;
    if ( numberRowsInTable%pageSize != 0 ) count = 1; 
    return parseInt(numberRowsInTable/pageSize) + count;
}

//显示链接
function preLink() { spanPre.innerHTML = "<a href='javascript:pre();'>上页</a>"; }
function preText() { spanPre.innerHTML = "上页"; }

function nextLink() { spanNext.innerHTML = "<a href='javascript:next();'>下页</a>"; }
function nextText() { spanNext.innerHTML = "下页"; }

function firstLink() { spanFirst.innerHTML = "<a href='javascript:first();'>第一页</a>"; }
function firstText() { spanFirst.innerHTML = "第一页"; }

function lastLink() { spanLast.innerHTML = "<a href='javascript:last();'>最后一页</a>"; }
function lastText() { spanLast.innerHTML = "最后一页"; }

//隐藏表格
function hide() {
    for ( var i = pageSize; i<numberRowsInTable; i++ ) {
        theTable.rows[i].style.display = 'none';
    }

    totalPage.innerHTML = pageCount();
    pageNum.innerHTML = '1';
    
    nextLink();
    lastLink();
}

hide(); -->
</script>
</html>