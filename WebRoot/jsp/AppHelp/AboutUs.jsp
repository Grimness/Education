<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <base href="<%=basePath%>">
    <title>关于我们</title>
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
*{padding:0;margin:0;}
#wrap{width:100%;height:100%;margin:0px auto;border:1px solid #ccc;
table-layout:fixed; 
empty-cells:show; 
border-collapse: collapse;}
#wrap tr#head{height:35px;text-align:center;background-color:#6495ED;color:#FFFFFF}
#wrap tr#head td{text-align:left;}
#wrap tr#logo{height:100px;text-align:center;background-color:#E8E8E8;}
#wrap tr#intro{background-color:#E8E8E8;}
</style>
</head>
	<body>
		<table id="wrap">
			<tr id="head">
				<td><a href="" ></a></td>
				<th>关于我们</th>
				<td></td>
			</tr>
			<tr id="logo" >
				<td colspan="3"><img src=""></td>
			</tr>
			<tr id="intro">
				<td colspan="3"><p>
				<span>
				&nbsp; &nbsp; &nbsp; 
				</span>
				<span>佛山市鲲鹏教育科技有限公司是是一家专门从事中、小学专业教育科技研究综合性公司。</span>
				</p>
				<p>
				<span>
				&nbsp; &nbsp;&nbsp; 
				</span>
				<span>近年来同广东省教育厅、广东省出版集团深度合作，日前，为积极响应国务院及教育部提出的&quot;在中小学普及信息化教育教学，加快信息技术与教学课程整合&quot;的号召，以互联网技术促进教学信息化改革，我们立足中国的教育国情，研发了适合中国教师教学、学生作业和家长辅导的互联网在线作业辅导平台。</span>
				</p>
				<p>
				<span>
				&nbsp; &nbsp; 目前本公司专注于小学阶段语文、数学和英语的教学及家长辅导。本平台拥有强大的教研和技术团队，所有教学产品均由一线的语文、数学和英语教研团队设计开发。此外，本平台还联合部分国外语音实验室，利用世界领先的智能语音纠正技术，帮助改善小学的英语教学，本平台拥有全部知识产权及著作权。</span>
				</p>
				<p>
				<span>&nbsp; &nbsp; &nbsp; </span>
				<span>此外本公司业务范围延展到中小学夏令营，研学旅游，职业规划等专题课程的研究和培训。</span></p></td>
			</tr>
		</table>
	</body>	
</html>
	