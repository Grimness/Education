<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

<title>小游戏题库导入</title>



<meta name="viewport" content="width=device-width,user-scalable=1">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />

</head>
<style type="text/css">
.app {
	margin: 12px 0px 0px 250px;
}

.aap {
	margin: 70px 0px 0px 260px;
}

.ass {

	margin: 0px 0px 0px 0px;
}

.add {
	margin: 10px 0px 0px 200px;
}
.aww{

	margin: 1px 0px 40px 202px;
}
</style>
<script type="text/javascript">
	function app(fid){
	var fversionid = document.getElementById("fversionid").value;
  	var fclassid = document.getElementById("fclassid").value;
  	var FVolume = document.getElementById("FVolume").value;
  	var funit = document.getElementById("funit").value;
  	//alert(fversionid);
  	//alert(fclassid);
  	//alert(FVolume);
  	//alert(funit);
	window.location.href="delectGames.do?fid="+fid+"&fclassid="+fclassid+"&FVolume="+FVolume+"&funit="+funit+"&fversionid="+fversionid;
	}
	function aoo(fid){
	window.location.href="updaeGames.do?fid="+fid;
	}

</script>
<body>
	<%-- <table border="1" width="100%" height="70%" align="center" background-repeat:no-repeat;margin:0 auto;">
	<div style="position:absolute;width="100%" height="70%";><img src="<%=basePath%>jsp/backstage2/img/9.png" width=50% height=35%>
	<td>
		<img src="<%=basePath%>jsp/backstage2/img/1.png" width=91px height=92px>
	</td>
	</div>
</table>padding-left:27%;  top:0px;left:0px;--%>
	
	
<table width="80%" height="80" >
	<tbody id="table2">

				<c:forEach items="${selectGames }" var="g">
					<tr style="width:50%;background-image: url('jsp/backstage2/img/9.png');background-repeat: no-repeat">
						<td>
						
							<div class="app">
								<audio style="width:30%;" controls="controls"> <source src="<%=basePath%>upload/${g.faudio}" /> </audio>
							</div>
				
							<div class="aap">
							
								<img src="${g.fimg}" width="190px" height="190px" /><br />
							</div>
					
							<div>
								<img class="add" src="<%=basePath%>jsp/backstage2/img/3.png">
								 <input type="button" value="删除" onclick="app(${g.fid});">
							<input type="button" value="修改" onclick="aoo(${g.fid});">
							</div>
							<div class="aww">
							
								<font size=2px>${g.fdiscuss }</font>
							
								<br />
							</div>
						</td>
					</tr>

						<input type="hidden" id="fversionid" value="${g.fversionid }">
						<input type="hidden" id="fclassid" value="${g.fclassid }">
						<input type="hidden" id="FVolume" value="${g.FVolume }">
						<input type="hidden" id="funit" value="${g.funit }">

				</c:forEach>
			</tbody>
		</table>
		<span id="spanFirst">第一页</span>
<span id="spanPre">上页</span>
<span id="spanNext">下页</span>
<span id="spanLast">最后一页</span> 第
<span id="spanPageNum"></span> 页/共
<span id="spanTotalPage"></span> 页

	
</body>


</html>
<script type="text/javascript">
	var theTable = document.getElementById("table2");
	var totalPage = document.getElementById("spanTotalPage");
	var pageNum = document.getElementById("spanPageNum");

	var spanPre = document.getElementById("spanPre");
	var spanNext = document.getElementById("spanNext");
	var spanFirst = document.getElementById("spanFirst");
	var spanLast = document.getElementById("spanLast");

	var numberRowsInTable = theTable.rows.length;
	var pageSize = 1;
	var page = 1;

	//下一页
	function next() {
		hideTable();
		currentRow = pageSize * page;
		maxRow = currentRow + pageSize;
		if (maxRow > numberRowsInTable)
			maxRow = numberRowsInTable;
		for ( var i = currentRow; i < maxRow; i++) {
			theTable.rows[i].style.display = '';
		}
		page++;
		if (maxRow == numberRowsInTable) {
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
		if (currentRow > numberRowsInTable)
			currentRow = numberRowsInTable;
		for ( var i = maxRow; i < currentRow; i++) {
			theTable.rows[i].style.display = '';
		}

		if (maxRow == 0) {
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
		for ( var i = 0; i < pageSize; i++) {
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
		for ( var i = currentRow; i < numberRowsInTable; i++) {
			theTable.rows[i].style.display = '';
		}
		showPage();

		preLink();
		nextText();
		firstLink();
	}

	function hideTable() {
		for ( var i = 0; i < numberRowsInTable; i++) {
			theTable.rows[i].style.display = 'none';
		}
	}

	function showPage() {
		pageNum.innerHTML = page;
	}

	//总共页数
	function pageCount() {
		var count = 0;
		if (numberRowsInTable % pageSize != 0)
			count = 1;
		return parseInt(numberRowsInTable / pageSize) + count;
	}

	//显示链接
	function preLink() {
		spanPre.innerHTML = "<a href='javascript:pre();'>上页</a>";
	}
	function preText() {
		spanPre.innerHTML = "上页";
	}

	function nextLink() {
		spanNext.innerHTML = "<a href='javascript:next();'>下页</a>";
	}
	function nextText() {
		spanNext.innerHTML = "下页";
	}

	function firstLink() {
		spanFirst.innerHTML = "<a href='javascript:first();'>第一页</a>";
	}
	function firstText() {
		spanFirst.innerHTML = "第一页";
	}

	function lastLink() {
		spanLast.innerHTML = "<a href='javascript:last();'>最后一页</a>";
	}
	function lastText() {
		spanLast.innerHTML = "最后一页";
	}

	//隐藏表格
	function hide() {
		for ( var i = pageSize; i < numberRowsInTable; i++) {
			theTable.rows[i].style.display = 'none';
		}

		totalPage.innerHTML = pageCount();
		pageNum.innerHTML = '1';

		nextLink();
		lastLink();
	}

	hide();
</script>