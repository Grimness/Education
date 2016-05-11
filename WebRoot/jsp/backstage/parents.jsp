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
<title>家长管理</title> 
<style type="text/css"> 
body,table{ 
font-size:12px; 
} 
table{ 
table-layout:fixed; 
empty-cells:show; 
border-collapse: collapse; 
margin:0 auto; 
} 
td{ 
height:30px; 
} 
h1,h2,h3{ 
font-size:12px; 
margin:0; 
padding:0; 
} 
.table{ 
border:1px solid #cad9ea; 
color:#666; 
} 
.table th { 
background-repeat:repeat-x; 
height:30px; 
} 
.table td,.table th{ 
border:1px solid #cad9ea; 
padding:0 1em 0; 
} 
.table tr.alter{ 
background-color:#EEEEE0; 
}



/*按钮*/
.btn{display:inline-block;cursor:pointer;text-align:center; font-weight:400;white-space:nowrap;vertical-align: middle;*zoom:1;-webkit-transition:background-color .1s linear;-moz-transition:background-color .1s linear;-o-transition:background-color .1s linear;transition:background-color .1s linear;}
a.btn:hover,a.btn:focus,a.btn:active,a.btn.active,a.btn.disabled,a.btn[disabled]{text-decoration:none}
.btn:active,.btn.active{background-color:#ccc}
.btn:first-child{*margin-left:0}
.btn.active,.btn:active{-moz-box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset;-webkit-box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset; box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset;}
 
/*默认——灰色 通常用于取消*/
.btn-default{background-color:#e6e6e6}
.btn-default:hover,
.btn-default:focus,
.btn-default:active,
.btn-default.active{color:#333;background-color:#c7c7c7;border-color:#c7c7c7}
 
/*主要——主色 通常用于确定、提交、购买、支付等*/
.btn-primary{color:#fff;background-color:#5a98de; border-color:#5a98de}
.btn-primary:hover,
.btn-primary:focus,
.btn-primary:active,
.btn-primary.active{color:#fff;background-color:#6aa2e0;border-color:#6aa2e0}
 
/*次要按钮*/
.btn-secondary{color:#fff;background-color:#3bb4f2; border-color:#3bb4f2}
.btn-secondary:hover,
.btn-secondary:focus,
.btn-secondary:active,
.btn-secondary.active{color:#fff;background-color:#0f9ae0;border-color:#0f9ae0}
 
/*成功*/
.btn-success{color:#fff;background-color:#5eb95e; border-color:#5eb95e}
.btn-success:hover,
.btn-success:focus,
.btn-success:active,
.btn-success.active{color:#fff;background-color:#429842;border-color:#429842}
 
/*警告*/
.btn-warning{color:#fff;background-color:#f37b1d; border-color:#f37b1d}
.btn-warning:hover,
.btn-warning:focus,
.btn-warning:active,
.btn-warning.active{color:#fff;background-color:#c85e0b;border-color:#c85e0b}
 
/*危险*/
.btn-danger{color:#fff;background-color:#dd514c; border-color:#dd514c}
.btn-danger:hover,
.btn-danger:focus,
.btn-danger:active,
.btn-danger.active{color:#fff;background-color:#c62b26;border-color:#c62b26}
 
/*链接*/
.btn-link{color:#0e90d2;cursor:pointer;border-color:transparent;background-color:transparent;}
.btn-link:hover,
.btn-link:focus,
.btn-link:active,
.btn-link.active{color:#095f8a;text-decoration:underline;background-color:transparent}
 
/*禁用状态*/
.btn.disabled{cursor:not-allowed;background-image:none;opacity:.65;filter:alpha(opacity=65);box-shadow:none; pointer-events:none;} 
</style> 
</head> 
<form id="form1" name="form1" method="post" action="search_parents.do">
<table>
<tr>
<td>姓名:<input type="text" name="fname" id="fname" value="${fname}"></td>
<td>手机号码：<input type="text" name="fphone" id="fphone" value="${fphone}"></td>
<td><input type="submit"  value="查找"  class="btn btn-primary"></td>
</tr>
</table>
</form>
<body> 
<table width="90%" class="table"> 
<tr> 
<th>姓名</th> 
<th>性别</th> 
<th>手机号码</th> 
<th>地区</th> 
<th>生日日期</th> 
<th>使用状态</th> 
<th></th> 
</tr > 
 <tbody id="table2">
 <c:forEach items="${getparents}" var="p">
<tr > 
<td>${p.fname}</td> 
<td><c:if test="${p.fsex==0}" >女</c:if><c:if test="${p.fsex==1}" >男</c:if></td> 
<td>${p.fphone}</td> 
<td>${p.areaname}</td> 
<td>${p.fbirthday}</td> 
<td><c:if test="${p.fright==0}" >正常</c:if><c:if test="${p.fright==1}" ><font color=red>禁用</font></c:if></td> 
<td><input class="btn btn-success radius" type="button" value="启用" onclick="javascript:window.location.href='updateparents_right.do?fright=0&fid=${p.fid}'">&nbsp;<input class="btn btn-danger radius" type="button" value="禁用" onclick="javascript:window.location.href='updateparents_right.do?fright=1&fid=${p.fid}'"></td> 
</tr> 
</c:forEach>
</tbody>
</table>
<table>
<tr>
<td></td>
<td>
<span id="spanFirst">第一页</span> <span id="spanPre">上一页</span> <span id="spanNext">下一页</span> <span id="spanLast">最后一页</span> 第<span id="spanPageNum"></span>页/共<span id="spanTotalPage"></span>页
</td>
</tr>
</table> 
</body> 
</html>
<script>
     var theTable = document.getElementById("table2");
     var totalPage = document.getElementById("spanTotalPage");
     var pageNum = document.getElementById("spanPageNum");


     var spanPre = document.getElementById("spanPre");
     var spanNext = document.getElementById("spanNext");
     var spanFirst = document.getElementById("spanFirst");
     var spanLast = document.getElementById("spanLast");


     var numberRowsInTable = theTable.rows.length;
     var pageSize = 16;
     var page = 1;


     //下一页
     function next() {


         hideTable();


         currentRow = pageSize * page;
         maxRow = currentRow + pageSize;
         if (maxRow > numberRowsInTable) maxRow = numberRowsInTable;
         for (var i = currentRow; i < maxRow; i++) {
             theTable.rows[i].style.display = '';
         }
         page++;


         if (maxRow == numberRowsInTable) { nextText(); lastText(); }
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
         if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
         for (var i = maxRow; i < currentRow; i++) {
             theTable.rows[i].style.display = '';
         }




         if (maxRow == 0) { preText(); firstText(); }
         showPage();
         nextLink();
         lastLink();
     }


     //第一页
     function first() {
         hideTable();
         page = 1;
         for (var i = 0; i < pageSize; i++) {
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
         for (var i = currentRow; i < numberRowsInTable; i++) {
             theTable.rows[i].style.display = '';
         }
         showPage();


         preLink();
         nextText();
         firstLink();
     }


     function hideTable() {
         for (var i = 0; i < numberRowsInTable; i++) {
             theTable.rows[i].style.display = 'none';
         }
     }


     function showPage() {
         pageNum.innerHTML = page;
     }


     //总共页数
     function pageCount() {
         var count = 0;
         if (numberRowsInTable % pageSize != 0) count = 1;
         return parseInt(numberRowsInTable / pageSize) + count;
     }


     //显示链接
     function preLink() { spanPre.innerHTML = "<a href='javascript:pre();'>上一页</a>"; }
     function preText() { spanPre.innerHTML = "上一页"; }


     function nextLink() { spanNext.innerHTML = "<a href='javascript:next();'>下一页</a>"; }
     function nextText() { spanNext.innerHTML = "下一页"; }


     function firstLink() { spanFirst.innerHTML = "<a href='javascript:first();'>第一页</a>"; }
     function firstText() { spanFirst.innerHTML = "第一页"; }


     function lastLink() { spanLast.innerHTML = "<a href='javascript:last();'>最后一页</a>"; }
     function lastText() { spanLast.innerHTML = "最后一页"; }


     //隐藏表格
     function hide() {
         for (var i = pageSize; i < numberRowsInTable; i++) {
             theTable.rows[i].style.display = 'none';
         }


         totalPage.innerHTML = pageCount();
         pageNum.innerHTML = '1';


         nextLink();
         lastLink();
     }


     hide();
</script> 