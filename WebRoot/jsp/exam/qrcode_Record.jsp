<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html >
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
<title>扫描记录</title>
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".timeline").eq(0).animate({
		height:'600px'
	},3000);
});
</script>
<link rel="stylesheet" type="text/css" href="../css/time.css">
</head>
<body>
<div class="timeline">
<div class="timeline-date">
		<ul>
			<h2 class="second" style="position: relative;">
				<span>2013年</span>
			</h2>
		
		</ul>
	</div>
	<div class="timeline-date">
		<ul>
			
			<li>
				<h3>09.03<span>2013</span></h3>
				<dl class="right">
					<span>时间轴就要成功了！</span>
				</dl>
			</li>
			
		</ul>
	</div>
	<div class="timeline-date">
		<ul>
			
			<li>
				<h3>09.03<span>2012</span></h3>
				<dl class="right">
					<span>那一年的今天！</span>
				</dl>
			</li>
			<li>
				<h3>08.15<span>2012</span></h3>
				<dl class="right">
					<span>前端之路慢慢修远！</span>
				</dl>
			</li>
		</ul>
	</div>
</div>

</body>
</html>
