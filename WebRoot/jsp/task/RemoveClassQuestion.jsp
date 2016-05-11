<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>班级移除错题</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width,user-scalable=1" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<style type="text/css">
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
<script type="text/javascript">
	var count = 0;
	function select(id) {
		var dis = $("#selected" + id).css("display");
		if (dis == "none") {
			$("#selected" + id).css("display", "inline");
			$("#" + id).attr("value", "1");
			count++;
		}
		if (dis == "inline") {
			$("#selected" + id).css("display", "none");
			$("#" + id).attr("value", "0");
			count--;
		}
	}

	function removeM() {
		
		var fphone = localStorage.getItem("fphone");
		MistakeForm.action = "RemoveChildWrong.do?FStudentID=${FStudentID}&FPhone=${FPhone}";
		$("#MistakeForm").submit();
	}
	function collect(id) {
		var src = $("#imgCollect" + id).attr("src");
		if (src == "images/collect.png") {
			$("#imgCollect" + id).attr("src", "images/u28.png");
		} else {
			$("#imgCollect" + id).attr("src", "images/collect.png");
		}
	}
	function removes() {
		$(".btn-lg").click();
		$(".modal-body").html("");
		$(".modal-body").append("您已选择" + count + "道易错题，确定移除错题吗？");
	}
</script>
</head>
<body style="background:#EAEAEA;">
	<button class="btn btn-primary btn-lg" data-toggle="modal"
		data-target="#remove" style="display: none;"></button>
	<div class="modal fade" id="remove" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 300px;height: 400px;">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">温馨提示</h4>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<div style="text-align: center;">
						<div style="display: inline;margin-right: 40px;color: blue;"
							data-dismiss="modal">取消</div>
						<div style="display: inline;margin-left: 40px;color: blue;"
							data-dismiss="modal" onclick="removeM()">确定</div>
					</div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!-- <button onclick="removes()">移除</button> -->
	<table border="0"
		style="border-collapse:collapse;width:100%;background:#FFFFFF;height: 50px;">
		<tr>
			<td style="text-align:center;font-size: large;"><a
				style="color: #333"
				href="RemoveChildQuestion.do?FStudentID=${FStudentID}&FPhone=${FPhone}">小孩易错题</a></td>
			<td
				style="text-align:center;font-size: large;border-bottom:2px #428BCA solid;"><a
				style="color: #428BCA"
				href="RemoveClassQuestion.do?FStudentID=${FStudentID}&FPhone=${FPhone}">班级易错题</a></td>
		</tr>
	</table>
	<form method="post" id="MistakeForm">
		<c:forEach items="${Mistakes}" var="cm">
			<table border="0"
				style="border-collapse:collapse;width:100%;margin :2% 0;background:#FFFFFF;">
				<tr>
					<td rowspan="4" style="text-align:center;width: 50px"><c:if
							test="${cm.FStudentID==FStudentID}">
							<div style="display: inline;" onclick="select(${cm.FExericsID})">
								<img src="images/u72.png" /> <img src="images/u82.png"
									id="selected${cm.FExericsID}" width="21px"
									style="margin-left: -28px;display:none;" />
						</c:if> <c:if test="${cm.FStudentID!=FStudentID}">
							<img src="images/u76.png" />
						</c:if> <input type="text" style="display: none;" name="FExericsID"
						value="${cm.FExericsID}" /> <input type="text"
						style="display: none;" id="${cm.FExericsID}" name="selectFlag"
						value="0" />
						</div></td>
				</tr>
				<tr style="height:80px;">
					<td colspan="2">${cm.FName}</td>
				</tr>
				<tr style="height:3px;">
					<td colspan="2"><hr
							style="border:none;border-top:1px ridge #C4C4C4;" /></td>
				</tr>
				<tr style="height:25px;">
					<td style="padding-left:3%;color:blue;"><a
						href="WrongQuestionAns.do?FExericsID=${cm.FExericsID}">查看答案>></a></td>
					<td style="padding-right:3%;text-align:right;color:blue;"><img
						src="images/u28.png" id="imgCollect${cm.FExericsID}"
						onclick="collect(${cm.FExericsID})" style="width: 35px" alt="收藏">&nbsp;&nbsp;&nbsp;
						<img src="images/u26.png" style="width: 25px" alt="分享"></td>
				</tr>
			</table>
		</c:forEach>
	</form>
</body>
</html>