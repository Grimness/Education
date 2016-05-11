<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Added.jsp' starting page</title>
    
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
		<div style="float:left;width:40%;padding-top:2%;">
			<table border="0" style="width:100%;border-collapse:collapse;">
				<tr>
					<td>大标题</td>
					<td>小标题</td>
				</tr>
				<tr>
					<td><input type="text" style="width:40%;" value="一、给加点字选择正确的读音，画“√”。"></td>
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
					<td><input type="text" style="width:40%;" value="选择题、拼音"></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="2">题目</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="60">
					   叶脉(mò　mài)　        种子(zhǒng　zhòng)
					   品尝(píng　pǐn)   撒种(sā　sǎ)
					   仰脸(yáng　yǎng)  演奏(còu　zòu)</textarea></td>
				</tr>
				<tr>
					<td colspan="2">答案</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="60">mài　zhǒng　pǐn　sǎ　yǎng　zòu</textarea></td>
				</tr>
				<tr>
					<td colspan="2">点播</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="60">①“脉”有两个读音。读mài时，意为血管，例如“动脉”“静脉”。
引申为植物叶子、昆虫翅膀上像血管的组织，如“叶脉”；也引申为像血管一样连贯而成系统的东西，如“山脉”“矿脉”。
读mò 时，只组词“脉脉”，表示默默地用眼神或行动表达情意的样子。如“含情脉脉”。
 ②“撒”读sā时，有放开，发出之意，如“撒网”“撒谎”。
读sǎ时，意为散布，散播，如“撒种”。</textarea></td>
				</tr>
				<tr>
					<td colspan="2">家长辅助资料</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="60"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">巩固练习</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="60">     mò  (      )          zhǒng (       )           sā(      )    
脉                    种                       撒
     mài (      )          zhóng (       )           sǎ(      )     </textarea></td>
				</tr>
				<tr>
					<td colspan="2">巩固练习答案</td>
				</tr>
				<tr>
					<td colspan="2"><textarea rows="3" cols="60">  含情脉脉    种子       撒娇       脉搏        种花       撒种  </textarea></td>
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
						<table border="1" style="width:80%;height:300px;margin:80% 0 0 0;border-collapse:collapse;">
							<tr>
								<td style="text-align:center;font-size:10px;">一、给加点字选择正确的读音，画“√”。<br/>
								叶脉(mò　mài)   种子(zhǒng　zhòng)
								品尝(píng　pǐn)撒种(sā　sǎ)
								仰脸(yáng　yǎng)演奏(còu　zòu)<br/>
								mài　zhǒng　pǐn　sǎ　yǎng　zòu<br/>
								
								
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div style="float:left;width:20%;">
			<table border="0" style="width:100%;">
				<tr>
					<td>
						<table border="1" style="width:80%;height:300px;margin:80% 10% 1% 0%;border-collapse:collapse;">
							<tr>
								<td style="text-align:center;">5寸分辨率预览器</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div style="float:left;width:20%;">
			<table border="0" style="width:100%;">
				<tr>
					<td>
						<table border="1" style="width:80%;height:300px;margin:80% 10% 1% 0%;border-collapse:collapse;">
							<tr>
								<td style="text-align:center;">6寸分辨率预览器</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</div>  
  </body>
</html>
