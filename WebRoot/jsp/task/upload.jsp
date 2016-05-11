<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title>文件上传</title>  
</head>  
<body>  
    <h5>文件上传</h5><hr/>  
    <form id="file_upload_id" name="file_upload_name" action="upload.do" method="post" enctype="multipart/form-data">  
        <div><input type="file" name="file_upload"/></div>  
		<input type="hidden" value="">
        <div><input type="submit" value="上传"/></div>  
    </form>  
</body>  
</html>
