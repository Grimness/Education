<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<!-- <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>  
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script> 
<script src="../Education/js/skin/ajaxfileupload.js"></script>  --> 
<script type="text/javascript">
	/* document.getElementById("file_upload_id").value; */
function imgAdd(){
 		$("#FileName").click();
 	}

function ajaxFileUpload(){

 	/*   var fphone = document.getElementById("fphone").value;
    //开始上传文件时显示一个图片,文件上传完成将图片隐藏
    //$("#loading").ajaxStart(function(){$(this).show();}).ajaxComplete(function(){$(this).hide();});
    //执行上传文件操作的函数
    $.ajaxFileUpload({
        //处理文件上传操作的服务器端地址(可以传参数,已亲测可用)
        url:'${pageContext.request.contextPath}/upload.do?fphone='+fphone,
        secureuri:false,                       //是否启用安全提交,默认为false
        fileElementId:'FHWFileName',           //文件选择框的id属性
        dataType:'text',                       //服务器返回的格式,可以是json或xml等
        success:function(data, status){        //服务器响应成功时的处理函数
            data = data.replace("<PRE>", '');  //ajaxFileUpload会对服务器响应回来的text内容加上<pre>text</pre>前后缀
            data = data.replace("</PRE>", '');
            data = data.replace("<pre>", '');
            data = data.replace("</pre>", ''); //本例中设定上传文件完毕后,服务端会返回给前台[0`filepath]
            if(data.substring(0, 1) == 0){     //0表示上传成功(后跟上传后的文件路径),1表示失败(后跟失败描述)
                $("img[id='uploadImage']").attr("src", data.substring(2));
                $('#result').html("图片上传成功<br/>");
            }else{
                $('#result').html('图片上传失败，请重试！！');
            }
        },
        error:function(data, status, e){ //服务器响应失败时的处理函数
            $('#result').html('图片上传失败，请重试！！');
        }
    });   */
    FHWFileName.action = "upload.do";
    $("#FHWFileName").submit();
    
}
</script>
<html>
<head>
<base href="<%=basePath%>">
<title>作业检查</title>
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
	select::-ms-expand { display: none; }
	select {
  /*Chrome和Firefox里面的边框是不一样的，所以复写了一下*/
  border: solid 1px #fff;
	border:none;
  /*很关键：将默认的select选择框样式清除*/
  appearance:none;
  -moz-appearance:none;
  -webkit-appearance:none;

  /*在选择框的最右侧中间显示小箭头图片*/
  background: url("arrow.png") no-repeat scroll right center transparent;

  /*为下拉小箭头留出一点位置，避免被文字覆盖*/
  padding-right: 14px;
  
}
td{
	padding-top:3%;
}
a{
	 text-decoration: none; color: inherit;
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
	<!-- <table border="0" style="width:100%;border-collapse: collapse;" >
		<tr style="background:#FFFFFF;">
			<td style="text-align:center;">
				<select>
					<option>科目</option>
					<option>全部科目</option>
					<option>语文</option>
					<option>数学</option>
					<option>英语</option>
				</select>
			</td>
			<td style="text-align:center;">
				<select>
					<option>日期</option>
					<option>全部日期</option>
					<option>本周</option>
					<option>本月</option>
					<option>本学期</option>
				</select>
			</td>
			<td style="text-align:center;">
				<select  style="">
					<option>状态</option>
					<option>全部状态</option>
					<option>已检查</option>
					<option>未检查</option>
					<option>已上传</option>
					<option>未上传</option>
					<option>已批阅</option>
					<option>未批阅</option>
				</select>
			</td>
		</tr>
	</table> -->
	<table border="0px " style="border-collapse: collapse;width:100%;margin :2% 0;background:#FFFFFF;" >
	<tbody id="table2">
	<c:forEach items="${selectOperationCheck }" var="op">
		<tr>
			<td colspan="5" style="color:blue;">${op.fgradeid }${op.fclassid }</td>
		</tr>
		<tr>
			<td colspan="5"> ${op.fhourid } ${op.fvolume }&nbsp;&nbsp;<br>${op.FHourDesc }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${op.freleasetime}前提交!</td>
		</tr>
		<tr>
			<td colspan="5" style="color:#CCCCCC;padding-bottom:5%;">—— ${op.fsubjectid }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${op.FUserName }老师   </td>
		</tr>
		
		<tr style="height:25px;">
			<td style="padding-left:3%;color:blue;" onclick="window.location.href = 'CheckAnswer3.do?FQRCode1=${op.FQRCode1}'">作业辅导</td>
			<td style="text-align:center;"><div style="float:left;width:1px;height:22px; background:#C4C4C4;"></div></td>
			<form method="post" id="FHWFileName" enctype="multipart/form-data">
			<input type="file" style="display:none" id="FileName" onchange="ajaxFileUpload()" accept="image/*" name="FileName">
			<input type="hidden" id="fphone" name="fphone" value="${fphone }" >
			<input type="hidden" id="fclasscode" name="fclasscode" value="${fclasscode }" >
			<input type="hidden" id="FChildid" name="FChildid" value="${FChildid }" >
			<input type="hidden" id="fqrCode1" name="fqrCode1" value="${fqrCode1 }">
			<input type="hidden" id="assigninghomework" name="assigninghomework" value="${assigninghomework }">
			</form>
			<td style="padding-left:3%;color:blue;text-align:center;" id="FHWFileName1" onclick="imgAdd()" >作业上传</td>
			<td style="text-align:center;"><div style="float:left;width:1px;height:22px; background:#C4C4C4;"></div></td>
			<td style="padding-right:3%;text-align:right;color:blue;"><a href="jsp/task/CheckingHomework.jsp">查看批阅</a></td>
		</tr>
		<tr>
			<td colspan="5"><hr style="border:none;border-top:1px ridge #C4C4C4;" /></td>
		</tr>
		</c:forEach>
		</tbody>
		<tr>
			<td colspan="5">
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
var pageSize = 10;
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