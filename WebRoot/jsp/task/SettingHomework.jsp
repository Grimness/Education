<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<!-- <script type="text/javascript">
	function app(){
	var fphone = document.getElementById("fphone").value;
	var fqrcode1 = document.getElementById("fqrcode1").value;
	var fclasscode = document.getElementById("fclasscode").value;
	window.location.href = "JobStatus.do?fphone="+fphone+"&FQRCode1="+fqrcode1+"&Fclasscode="+fclasscode;
	}
</script> -->
<html>
<head>
<base href="<%=basePath%>">
<title>布置作业</title>
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
</head>

<body style="background:#EAEAEA;">
	<%-- <table border="0" style="width:100%;border-collapse: collapse;" >
		<tr style="background:#FFFFFF;">
			<td style="text-align:center;">
				<select name="select1">
					<option>班级</option>
					<c:forEach items="${selectSubmessage }" var="s">
					<option>${s.fgradeid }</option>
					</c:forEach>
				</select>
				
			</td>
			<td style="text-align:center;">
				<select name="select2">
					<option>日期</option>
					<option>全部日期</option>
					<option>本周</option>
					<option>本月</option>
					<option>本学期</option>
				</select>
			</td>
		</tr>
	
	</table> --%>
	<table border="0px " style="border-collapse: collapse;width:100%;margin :2% 0;background:#FFFFFF;padding-top:5%;">
	<tbody id="table2" onclick="window.location.href = 'JobStatus.do?fphone=${fphone }&FQRCode1=${tc.FQRCode1 }&Fclasscode=${tc.fclasscode }'">
	<c:forEach items="${selectSubmessage }" var="tc">
		<tr  >
			<td style="color:blue;">${tc.fgradeid }${tc.fclassid }</td>
		</tr>
		<tr>
			<td> ${tc.fhourid } ${tc.fvolume }<br>${tc.FHourDesc }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${tc.freleasetime}前提交!</td>
		</tr>
		<tr>
		<td style="color:#CCCCCC">—— ${tc.fsubjectid } 老师   </td>
		</tr>
		<tr style="height:3px;">
			<td><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		</c:forEach>
		</tbody>
		<tr>
			<td>
				<div style="height:30px;margin:20px 0 0 0;padding-top:10%;">
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
var pageSize = 8;
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
			</td>
		</tr>
	</table>
		<%-- <input type="hidden" id="fclasscode" name="fclasscode" value="${fclasscode }">
		<input type="hidden" id="fqrcode1" name="fqrcode1" value="${fqrcode1 }">
		<input type="hidden" id="fphone" name="fphone" value="${fphone }"> --%>
</body>
</html>