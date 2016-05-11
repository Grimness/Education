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
<script type="text/javascript">
	function choose(){
		var FQRCode12=document.getElementsByName("FQRCode1");
		var FQRCode1 = "";
		for(var i = 0;i < FQRCode12.length;i++){
			var b = FQRCode12[i];
			if (b.checked) {
				FQRCode1 = b.value;
			}
		}
		var fclasscode=document.getElementById("fclasscode").value;
		var fphone=document.getElementById("fphone").value;
		var fgradeid=document.getElementById("fgradeid").value;
		var fName = document.getElementById("fName").value;
		/* var FFileName=document.getElementById("FFileName").value; */
		
		  /* var fsynchronization=document.getElementById("Fsynchronization").value;  */
		/* request.getParameter("Fsynchronization"); */
		var parameterValues = document.getElementById("parameterValues").value;
		
		window.location.href="AssigningHomework2.do?fclasscode="+fclasscode+"&fphone="+fphone+
		"&FQRCode1="+FQRCode1+"&FName="+fName;

	};

</script>

<base href="<%=basePath%>">
<title>选择课时</title>
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

<body>

	<table border="0" style="width:100%;border-collapse:collapse;">
		<tr>
			<td colspan="3" style="text-align:center;">目录</td>
		</tr>
			<tbody id="table2">
		<c:forEach items="${selectExercise }" var="ex">
		<c:if test="${not empty ex.FHourDesc}">
		<tr>
			<td colspan="3"><input type="radio" id="FQRCode1" value="${ex.FQRCode1 }" name="FQRCode1" >${ex.FHourDesc }</td>
		</tr>
		</c:if>
		<c:if test="${not empty ex.FTitle1}">
		<tr>
			<%-- <td>${ex.FTitle1 }</td> --%>
			<td>${ex.FTitle1 }</td>
			<!-- <td><hr style="height:0px;border:none;border-top:1px solid #555555;" /></td>
			<td style="text-align:center;">√</td> -->
		</tr>
		</c:if>
		</c:forEach>
		<tb><input type="hidden" id="fclasscode" value="${getFclasscode }"></tb>
		<tb><input type="hidden" id="fphone" value="${getFphone }"></tb>
		<tb><input type="hidden" id="fName" value="${fName }"></tb>
		<tb><input type="hidden" id="parameterValues" value="${getparameterValues }"></tb>
		<tb><input type="hidden" id="fgradeid" value="${fgradeid }"></tb>
		<tb><input type="hidden" id="fFileName" value="${fFileName }"></tb>
		</tbody>
		<tr>
			<td><div style="text-align:center;padding-top:5%;"><input type="button" value="确定" style="width:90%;background:#4876FF;height:35px;color:#FFFFFF;" onclick="javascript:choose();"></div></td>
		</tr>
	</table>
	<div style="height:30px;margin:20px 0 0 0;">
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
</body>
<script type="text/javascript">
var theTable = document.getElementById("table2");
var totalPage = document.getElementById("spanTotalPage");
var pageNum = document.getElementById("spanPageNum");

var spanPre = document.getElementById("spanPre");
var spanNext = document.getElementById("spanNext");
var spanFirst = document.getElementById("spanFirst");
var spanLast = document.getElementById("spanLast");

var numberRowsInTable = theTable.rows.length;
var pageSize = 13;
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

hide();
</script>
</html>