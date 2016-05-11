<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>查看批阅</title>
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
	<script src="js/jquery.js"></script> 
<script src="js/jquery.lightbox-0.5.js"></script> 
<link rel="stylesheet" href="css/jquery.lightbox-0.5.css" media="screen">
</head>
<script type="text/javascript">
$(function() {
    $('#imglightbox a').lightBox();
});
</script>
<body>
	<table border="0" style="width:100%;border-collapse:collapse;">
		 <c:forEach items="${selectCheckMarking}" var="sc">
		<tr style="background:#EAEAEA;">
			<td colspan="3">【作业】</td>
		</tr>
		<tr style="background:#EAEAEA;">
			<td colspan="3">《${sc.fsubjectid }${sc.fgradeid } ${sc.fvolume }》</td>
		</tr>
		<tr style="background:#EAEAEA;">
			<td colspan="3">完成第${sc.FHourDesc }课时&nbsp;${sc.freleasetime }&nbsp;日前提交</td>
		</tr>
		<tr style="background:#EAEAEA;"> 
			<td style="color:#cccccc;height:35px;" colspan="3">——${sc.fsubjectid } ${sc.FName }老师</td>
		</tr>
		<tr>
			<td colspan="3" style="height:30px;">【作业上传】</td>
		</tr>
		 <c:choose>
			<c:when test="${sc.fimg == null }">
			<tr>
				<td>
					你还没上传作业图片!
				</td>
			</tr>
			</c:when>
			<c:otherwise>
			<tr>
			<td></td>
			<td style="text-align:center;width:50px;height:50px;" id="imglightbox" >
			<a href="<%=basePath%>${sc.fimg}"><img height="50px" width="50px" src="<%=basePath%>${sc.fimg}"></a></td>
			<td></td>
			</tr>
		</c:otherwise>
		</c:choose> 
		<tr>
			<td style="width:40%;"><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
			<td style="text-align:center;color:#1E90FF;">我的批阅</td>
			<td style="width:40%;"><hr style="height:1px;border:none;border-top:1px solid #555555;" /></td>
		</tr>
	 	<c:choose>
			<c:when test="${sc.fscore == '' }">
			 
				老师还没批阅!
			</c:when>
			<c:otherwise>
 			<tr >
			<td><c:if test="${sc.finspect == '1' }">作业分数:<font style="color:red;">"${sc.fcomment }分"</font></c:if></td>
			<td></td>
			<td style="text-align:center;"><c:if test="${sc.finspect == '0' }"><font style="color:red;">已阅</font></c:if></td>
			</tr>
			<tr>
				<td>
			老师评语:<textarea style="border:1px solid #CCCCCC;" disabled="disabled">${sc.fscore}</textarea>
				</td>
			</tr>
		</c:otherwise>
		</c:choose> 
		</c:forEach>		
	</table>
</body>
</html>