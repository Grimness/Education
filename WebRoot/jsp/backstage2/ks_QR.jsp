<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=utf-8" language="java"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>课时描述管理</title>
<style type="text/css">
body,table {
	font-size: 12px;
}

table {
	table-layout: fixed;
	empty-cells: show;
	border-collapse: collapse;
	margin: 0 auto;
}

td {
	height: 30px;
}

h1,h2,h3 {
	font-size: 12px;
	margin: 0;
	padding: 0;
}

.table {
	border: 1px solid #cad9ea;
	color: #666;
}

.table th {
	background-repeat: repeat-x;
	height: 30px;
}

.table td,.table th {
	border: 1px solid #cad9ea;
	padding: 0 1em 0;
}

.table tr.alter {
	background-color: #EEEEE0;
}

/*按钮*/
.btn {
	display: inline-block;
	cursor: pointer;
	text-align: center;
	font-weight: 400;
	white-space: nowrap;
	vertical-align: middle;
	*zoom: 1;
	-webkit-transition: background-color .1s linear;
	-moz-transition: background-color .1s linear;
	-o-transition: background-color .1s linear;
	transition: background-color .1s linear;
}

a.btn:hover,a.btn:focus,a.btn:active,a.btn.active,a.btn.disabled,a.btn[disabled]
	{
	text-decoration: none
}

.btn:active,.btn.active {
	background-color: #ccc
}

.btn:first-child {
	*margin-left: 0
}

.btn.active,.btn:active {
	-moz-box-shadow: 0 1px 8px rgba(0, 0, 0, 0.125) inset;
	-webkit-box-shadow: 0 1px 8px rgba(0, 0, 0, 0.125) inset;
	box-shadow: 0 1px 8px rgba(0, 0, 0, 0.125) inset;
}

/*默认——灰色 通常用于取消*/
.btn-default {
	background-color: #e6e6e6
}

.btn-default:hover,.btn-default:focus,.btn-default:active,.btn-default.active
	{
	color: #333;
	background-color: #c7c7c7;
	border-color: #c7c7c7
}

/*主要——主色 通常用于确定、提交、购买、支付等*/
.btn-primary {
	color: #fff;
	background-color: #5a98de;
	border-color: #5a98de
}

.btn-primary:hover,.btn-primary:focus,.btn-primary:active,.btn-primary.active
	{
	color: #fff;
	background-color: #6aa2e0;
	border-color: #6aa2e0
}

/*次要按钮*/
.btn-secondary {
	color: #fff;
	background-color: #3bb4f2;
	border-color: #3bb4f2
}

.btn-secondary:hover,.btn-secondary:focus,.btn-secondary:active,.btn-secondary.active
	{
	color: #fff;
	background-color: #0f9ae0;
	border-color: #0f9ae0
}

/*成功*/
.btn-success {
	color: #fff;
	background-color: #5eb95e;
	border-color: #5eb95e
}

.btn-success:hover,.btn-success:focus,.btn-success:active,.btn-success.active
	{
	color: #fff;
	background-color: #429842;
	border-color: #429842
}

/*警告*/
.btn-warning {
	color: #fff;
	background-color: #f37b1d;
	border-color: #f37b1d
}

.btn-warning:hover,.btn-warning:focus,.btn-warning:active,.btn-warning.active
	{
	color: #fff;
	background-color: #c85e0b;
	border-color: #c85e0b
}

/*危险*/
.btn-danger {
	color: #fff;
	background-color: #dd514c;
	border-color: #dd514c
}

.btn-danger:hover,.btn-danger:focus,.btn-danger:active,.btn-danger.active
	{
	color: #fff;
	background-color: #c62b26;
	border-color: #c62b26
}

/*链接*/
.btn-link {
	color: #0e90d2;
	cursor: pointer;
	border-color: transparent;
	background-color: transparent;
}

.btn-link:hover,.btn-link:focus,.btn-link:active,.btn-link.active {
	color: #095f8a;
	text-decoration: underline;
	background-color: transparent
}

/*禁用状态*/
.btn.disabled {
	cursor: not-allowed;
	background-image: none;
	opacity: .65;
	filter: alpha(opacity = 65);
	box-shadow: none;
	pointer-events: none;
}
</style>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script>
${message}
	function setSecond(obj) {
		var val = obj.value;
		if (val == 'YW') {
			var sec = document.getElementById('fversionid');
			sec.options[0] = new Option("人教版", "RJ");
			sec.options[1] = new Option("语文S版", "YW");
		} else if (val == 'SX') {
			var sec = document.getElementById('fversionid');
			sec.options[0] = new Option("人教版", "RJ");
			sec.options[1] = new Option("北师大版", "BS");
		} else if (val == 'YY') {
			var sec = document.getElementById('fversionid');
			sec.options[0] = new Option("人教版", "RJ");
			sec.options[1] = new Option("开心版", "KX");
		}
	}
	function setSecond2(id) {
		var val = $("#fsubjectid"+id).find("option:selected").val();
		$("#fversionid"+id).html("");
		if (val == 'YW') {
			$("#fversionid"+id).append("<option value='RJ'>人教版</option>");
			$("#fversionid"+id).append("<option value='YW'>语文S版</option>");
		} else if (val == 'SX') {
			$("#fversionid"+id).append("<option value='RJ'>人教版</option>");
			$("#fversionid"+id).append("<option value='BS'>北师大版</option>");
		} else if (val == 'YY') {
			$("#fversionid"+id).append("<option value='RJ'>人教版</option>");
			$("#fversionid"+id).append("<option value='KX'>开心版</option>");
		}
		
		
	}


	function add() {
		var version = $("#fversionid").find("option:selected").val();//版本
		var subject = $("#fsubjectid").find("option:selected").val();//科目
		if (version == "undefined" || subject == "") {
			alert("请完善添加的数据");
			return;
		}
		var grade = $("#fclassid").find("option:selected").val();//年级
		var book = $("#FVolume").find("option:selected").val();//上下册
		var unit = $("#funit").find("option:selected").val();//单元
		var hour = $("#FHourID").find("option:selected").val();//课时
		var unitdesc =  $("#funit").find("option:selected").text();//单元描述
		var hourdesc = $("#fhourdesc").val();//课时描述
		var unitcode = version + subject + grade + book + unit+hour;
		window.location.href = "add_kscode.do?fname=" + unitcode+"&funitname="+encodeURI(unitdesc)+"&fhourname="+encodeURI(hourdesc);
	}

	function update(unitid,hourid,fid) {
		if(unitid<10){
			unitid="0"+unitid;
		}	
		if(hourid<10){
			hourid="0"+hourid;
		}
		var version = $("#fversionid"+fid).attr("name");//版本
		var subject = $("#fsubjectid"+fid).attr("name");//科目
		var grade = $("#fclassid"+fid).attr("name");//年级
		var book = $("#FVolume"+fid).attr("name");//上下册
		var unitdesc = $("#funit"+fid+unitid).text();//单元描述
		var hourdesc = $(".fhour"+fid+hourid).val();//课时描述
		var unitcode = version + subject + grade + book + unitid+hourid;
	
		window.location.href = "update_kscode.do?fname=" + unitcode + "&fid="
				+ fid+"&funitname="+encodeURI(unitdesc)+"&fhourname="+encodeURI(hourdesc);
	}

	function deletedy(unitid,hourid,fid) {
		if(unitid<10){
			unitid="0"+unitid;
		}	
		if(hourid<10){
			hourid="0"+hourid;
		}
		var version = $("#fversionid"+fid).attr("name");//版本
		var subject = $("#fsubjectid"+fid).attr("name");//科目
		var grade = $("#fclassid"+fid).attr("name");//年级
		var book = $("#FVolume"+fid).attr("name");//上下册
		var unitcode = version + subject + grade + book + unitid+hourid;
		window.location.href = "delete_kscode.do?fname=" + unitcode + "&fid="
				+ fid;
	}
	
	function getDy(){
		var version = $("#fversionid").find("option:selected").val();//版本
		var subject = $("#fsubjectid").find("option:selected").val();//科目
		var grade = $("#fclassid").find("option:selected").val();//年级
		var book = $("#FVolume").find("option:selected").val();//上下册
		$.ajax({
			type:"GET",
			url:"getUnit.do?fsubject="+subject+"&fgrade="+grade+"&fbook="+book+"&fversion="+version,
			dataType : "json",
			success : function(result){
				$("#funit").html("");
				$.each(result.getUnit,function(i,n){
					$("#funit").append("<option  value=\""+n.funit+"\">"+n.funitname+"</option>");
				});
			}
		});
	}
	function getDy2(fid,id){
		var version = $("#fversionid"+fid).find("option:selected").val();//版本
		var subject = $("#fsubjectid"+fid).find("option:selected").val();//科目
		var grade = $("#fclassid"+fid).find("option:selected").val();//年级
		var book = $("#FVolume"+fid).find("option:selected").val();//上下册
		
		 $.ajax({
			type:"GET",
			url : "getUnit.do?fsubject="+subject+"&fgrade="+grade+"&fbook="+book+"&fversion="+version,
			dataType : "json",
			success : function(result){
				if(id<10){
					id = "0"+id;
				}
				$("#funit"+fid+id).html("");
				$.each(result.getUnit,function(i,n){
					$("#funit"+fid+id).append("<option  value=\""+n.funit+"\">"+n.funitname+"</option>");
				});
			}
		}); 
	}
</script>
</head>
<body>
	<div style="border: 0px solid #D1D1D1; height: 100%">
		<div
			style="background-color: #ECECEC;border: 0px solid #D1D1D1;width:100% ">
			课时描述管理</div>
		<div style="border: 0px solid #D1D1D1;margin-top: 10px">
			科目： <select id="fsubjectid" name="fsubjectid"
				onchange="setSecond(this)">
				<option value="" selected>-请选择-</option>
				<option  value="YW">语文</option>
				<option value="SX">数学</option>
				<option value="YY">英语</option>
			</select> &nbsp; 版本： <select  id="fversionid" name="fversionid">
			</select> &nbsp; 年级： <select onchange="getDy()" id="fclassid" name="fclassid">
				<option value="" selected>-请选择-</option>
				<option value="3">三年级</option>
				<option value="4">四年级</option>
				<option value="5">五年级</option>
				<option value="6">六年级</option>
			</select> &nbsp; 上下册： <select  onchange="getDy()" id="FVolume" name="FVolume">
				<option value="" selected>-请选择-</option>
				<option value="2">下册</option>
				<option value="1">上册</option>
				<!-- <option value="0">不分册</option> -->
			</select> &nbsp; 单元：<select id="funit" name="funit">
			</select> &nbsp; 课时：<select id="FHourID" name="FHourID">
				<c:forEach items="${ks}" var="ks">
					<option value="${ks.FNumber}">${ks.FNumber-1}</option>
				</c:forEach>
			
			</select> 
		</div>
		课时描述名称：<input type="text" id="fhourdesc" >
		<input type="button" value="新增课时描述" class="btn btn-primary radius"
				onclick="add()">
		<div style="margin-top: 10px">
			<table width="100%" class="table">
				<tr>
					<th width="230">名称</th>
					<th>科目</th>
					<th>版本</th>
					<th>年级</th>
					<th>上下册</th>
					<th width="140">单元</th>
					<th width="140">课时</th>
					<th width="120"></th>
				</tr>
					 <tbody id="table2">
				<c:forEach items="${qCodes}" var="qc">
					<tr align="center">
						<td>${qc.ftitle}</td>
						<td><span id="fsubjectid${qc.fid}" name="${qc.fsubject}">${qc.fsubjectname}</span></td>
						<td><span id="fversionid${qc.fid}" name="${qc.fversion}">${qc.fversionname}</span></td>
						<td><span id="fclassid${qc.fid}" name="${qc.fgrade}">${qc.fgradename}</span></td>
						<td><span id="FVolume${qc.fid}" name="${qc.fbook}">${qc.fbookname}</span></td>
						<td ><span id="funit${qc.fid}${qc.funit}" name="${qc.funit}">${qc.funitname}</span>
							<%-- <select  id="funit${qc.fid}${qc.funit}" name="funit${qc.fid}${qc.funit}">
							<option   value="${qc.funit}">${qc.funitname}</option>
						</select> --%>
						</td>
						<td>
							<input type="text" style="width: 140px" id="${qc.fid}${qc.fhour}" class="fhour${qc.fid}${qc.fhour} " value="${qc.fhourname}" >
						</td>
						<td><input class="btn btn-success radius" type="button"
							value="修改" onclick="update(${qc.funit},${qc.fhour},${qc.fid})">&nbsp;<input
							class="btn btn-danger radius" type="button" value="删除"
							onclick="deletedy(${qc.funit},${qc.fhour},${qc.fid})"></td>
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
		</div>
	</div>
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
     var pageSize = 15;
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