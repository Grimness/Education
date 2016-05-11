<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>作业状态</title>
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
	padding-top:3%;
}
a{
 float:left;overflow:hidden;
 margin:0 1%;
 color:#CCCCCC;
 font-size:15px;
}
a:link {
text-decoration: none;
}
a:visited {
text-decoration: none;
}
a:hover {
text-decoration: none;
}
a:active {
text-decoration: none;
}
</style>
</head>

<body style="background:#EAEAEA;">
	<!-- <div style="width:100%;height:30px;background:#FFFFFF;">
	<div style="line-height:2;">
		<div><a href="#" style="color:blue;">全部</a></div>
		<div><a href="#" >未上传</a></div>
		<div><a href="#" >已上传</a></div>
		<div><a href="#" >未检查</a></div>
		<div><a href="#" >已检查</a></div>
		<div><a href="#" >未点课</a></div>
	</div>
	</div> -->
	
	<table border="0px " style="border-collapse: collapse;width:100%;margin :2% 0;background:#FFFFFF;" >
	<tbody id="table2" style="padding-top:5%;">
	<c:forEach items="${selectJobStatus }" var="op">
		<tr style="width:35px;" onclick="window.location.href = 'CheckingHomework.do?fclasscode=${op.fclasscode}&FChildid=${op.FChildid }&fphone=${op.fphone}&fid=${fid }'">
			<td colspan="3" style="color:blue;">${op.fgradeid }${op.fclassid }</td>
		</tr>
		<tr onclick="window.location.href = 'CheckingHomework.do?fclasscode=${op.fclasscode}&FChildid=${op.FChildid }&fphone=${op.fphone}&fid=${fid }'">
			<td colspan="3"> ${op.fsubjectid } ${op.fgradeid }&nbsp;&nbsp;<br>${op.fvolume } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${op.freleasetime}前提交!</td>
		</tr>
		<tr onclick="window.location.href = 'CheckingHomework.do?fclasscode=${op.fclasscode}&FChildid=${op.FChildid }&fphone=${op.fphone}&fid=${fid }'">
			<td colspan="3" style="color:#CCCCCC">—— ${op.fsubjectid } ${op.FName }老师 </td>
		</tr>
		<tr style="height:3px;">
			<td colspan="3"></td>
		</tr>
		<tr style="height:10px;">
			<td style="padding-left:3%;color:blue;padding-bottom:5%;">学生：${op.students }</td>
			<td></td>
			<td style="padding-right:3%;text-align:right;color:blue;padding-bottom:5%;"  onclick="window.location.href = 'CheckAnswer3.do?FQRCode1=${op.FQRCode1}'">作业辅导</td>
		</tr>
		<tr>
			<td colspan="3"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		</c:forEach>
		</tbody>
		<tr>
			<td colspan="3">
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
    <script type="text/javascript">
var theTable = document.getElementById("table2");
var totalPage = document.getElementById("spanTotalPage");
var pageNum = document.getElementById("spanPageNum");

var spanPre = document.getElementById("spanPre");
var spanNext = document.getElementById("spanNext");
var spanFirst = document.getElementById("spanFirst");
var spanLast = document.getElementById("spanLast");

var numberRowsInTable = theTable.rows.length;
var pageSize = 12;
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
</body>
	
</html>
