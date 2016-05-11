<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<title>音频播放</title>
<meta name="viewport" content="width=device-width,user-scalable=1">
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<script type="text/javascript">
	$(function() {
		$("#srcMusic").html("");
		$("#srcMusic").html(
				"<audio controls=\"controls\" ><source src=\"upload/"
						+ encodeURI("${eMusic.FAudioFileName}") + "\" ></audio>");
	});

	function changeImg() {
		var src = $(".imgicon").attr("src");
		if (src == "jsp/exam/images/listenselect.png") {
			$(".imgicon").attr("src", "jsp/exam/images/listen.png");
			$(".textdiv").css("display", "none");
		} else {
			$(".imgicon").attr("src", "jsp/exam/images/listenselect.png");
			$(".textdiv").css("display", "block");
		}
	}
</script>
<style>
.imgicon {
	width: 100px;
	margin-top: 30px;
}

#srcMusic {
	margin-top: 40px;
}

.textdiv {
	display: none;
}

.maindiv {
	width: 100%;
}


</style>
<body>
	<div align="center" class="maindiv">
		<div align="left">
			<img  src="images/iconfont-back.png" onclick="window.history.go(-1)">
		</div>
		<div id="srcMusic"></div>
		<div>
			<img src="jsp/exam/images/listen.png" class="imgicon"
				onclick="changeImg()" />
		</div>
		<div class="textdiv">${eMusic.flistenmaterial}</div>
	</div>
</body>
</html>
