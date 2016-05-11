<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		td{
		line-height:50px;
		}
		select::-ms-expand { display: none; }
	select {
  /*Chrome和Firefox里面的边框是不一样的，所以复写了一下*/
  border: solid 1px #000;

  /*很关键：将默认的select选择框样式清除*/
  appearance:none;
  -moz-appearance:none;
  -webkit-appearance:none;

  /*在选择框的最右侧中间显示小箭头图片*/
  background: url("arrow.png") no-repeat scroll right center transparent;


  /*为下拉小箭头留出一点位置，避免被文字覆盖*/
  padding-right: 14px;
}
	</style>
  </head>
  
  <body>
	<div style="width:100%;">
		<div style="float:left;width:80%;padding-top:2%;">
			<table border="0" style="width:100%;border-collapse:collapse;">
				<tr>
					<td>大标题</td>
					<td>小标题</td>
				</tr>
				<tr>
					<td><input type="text" style="width:40%;"></td>
					<td><input type="text" style="width:40%;"></td>
				</tr>
				<tr>
					<td>小小标题</td>
					<td>小小小标题</td>
				</tr>
				<tr>
					<td><input type="text" style="width:40%;"></td>
					<td><input type="text" style="width:40%;"></td>
				</tr>
				<tr>
					<td>课时描述</td>
					<td>是否有公用材料</td>
				</tr>
				<tr>
					<td><input type="text" style="width:40%;"></td>
					<td>
						<select style="width:40%;">
							<option>公用材料一</option>
							<option>公用材料二</option>
							<option>公用材料三</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>音频文件</td>
					<td></td>
				</tr>
				<tr>
					<td><input type="text" style="width:40%;"></td>
					<td><input type="button" style="width:20%;background:#F2F2F2;" value="上传"></td>
				</tr>
				<tr>
					<td>标签</td>
					<td></td>
				</tr>
				<tr>
					<td><input type="text" style="width:40%;"></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="2">题目</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="100"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">答案</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="100"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">点播</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="100"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">家长辅助资料</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="100"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">巩固练习</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="100"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">巩固练习答案</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="100"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<div>
							<div style="float:left;padding-left:20%;margin:0 2%;"><input type="button" style="line-height:5;width:150px;background:#F2F2F2;" value="完成" onclick="javascript:window.location.href='jsp/ed/HomePage.jsp'"></div>
							<div style="float:left;"><input type="button" style="line-height:5;width:150px;background:#F2F2F2;" value="填写下一条" onclick="javascript:window.location.href='jsp/ed/Added.jsp'"></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div style="float:left;width:20%;">
			<table border="0" style="width:100%;">
				<tr>
					<td>
						<table border="1" style="width:80%;height:300px;margin:80% 10% 1% 10%;border-collapse:collapse;">
							<tr>
								<td style="text-align:center;">4寸分辨率预览器<br/>960*640</td>
							</tr>
						</table>
						<div >
							<div style="float:left;padding-left:20%;;margin:2% 2%;"><input type="button" value="4寸"></div>
							<div style="float:left;margin:2% 2%;"><input  type="button" value="5寸"></div>
							<div style="float:left;margin:2% 2%;"><input type="button" value="6寸"></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>  
  </body>
</html>
