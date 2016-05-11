<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("UTF-8");%>  
<%response.setCharacterEncoding("UTF-8");%> 

<html>
<head>
 <base href="<%=basePath%>">
<title>题目</title>
	<meta name="viewport" content="width=device-width,user-scalable=1">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>  
<style type="text/css"> 
	body,table{ 
	font-size:12px; 
	} 
	table{ 
	table-layout:fixed; 
	empty-cells:show; 
	border-collapse: collapse; 
	margin:0 auto; 
	} 
	td{ 
	height:20px; 
	padding-top:5px;
	} 
	h1,h2,h3{ 
	font-size:12px; 
	margin:0; 
	padding:0; 
	} 
	.table{ 
	border:1px solid #cad9ea; 
	color:#666; 
	} 
	.table th { 
	background-repeat:repeat-x; 
	height:30px; 
	} 
	.table td,.table th{ 
	border:1px solid #cad9ea; 
	padding:0 1em 0; 
	} 
	.table tr.alter{ 
	background-color:#EEEEE0; 
	}
	
	</style>
</head>
<script type="text/javascript">

    jQuery.Huitab =function(tabBar,tabCon,class_name,tabEvent,i){
    var $tab_menu=$(tabBar);
      // 初始化操作
      $tab_menu.removeClass(class_name);
      $(tabBar).eq(i).addClass(class_name);
      $(tabCon).hide();
      $(tabCon).eq(i).show();
      $tab_menu.bind(tabEvent,function(){
      $tab_menu.removeClass(class_name);
          $(this).addClass(class_name);
          var index=$tab_menu.index(this);
           $(tabCon).slideToggle();
          $(tabCon).hide();
          $(tabCon).eq(index).show();
      });
    }
    $(function(){
	$.Huitab("#tab_demo .tabBar span","#tab_demo .tabCon","current","click","0");
	 changeFlag=true;     
    	
    });
    
    function rightselect(fid){
    	var src1 = $(".wrongselect"+fid).attr("src");
    	var src2 = $(".rightselect"+fid).attr("src");
    	if(src2 == "<%=basePath%>jsp/task/images/rightselected.png" ){
    		$(".rightselect"+fid).attr("src","<%=basePath%>jsp/exam/images/rightselect.png");
    		return ;
    	}
    	$(".rightselect"+fid).attr("src","<%=basePath%>jsp/task/images/rightselected.png");
    	$(".wrongselect"+fid).attr("src","<%=basePath%>jsp/task/images/wrongselect.png");
    	$("#"+fid).attr("value","0");	
    }
    function wrongselect(fid){
    	var src1 = $(".wrongselect"+fid).attr("src");
    	var src2 = $(".rightselect"+fid).attr("src");
    	if(src1 == "<%=basePath%>jsp/task/images/wrongselected.png"){
    		$(".wrongselect"+fid).attr("src","<%=basePath%>jsp/task/images/wrongselect.png");
    		return ;
    	}
    	$(".rightselect"+fid).attr("src","<%=basePath%>jsp/task/images/rightselect.png");
    	$(".wrongselect"+fid).attr("src","<%=basePath%>jsp/task/images/wrongselected.png");
    	$("#"+fid).attr("value","1");
    }
   
    /* window.onbeforeunload = function() { 
    	  if(changeFlag ==true){  
              //如果changeFlag的值为true则提示   
              if(confirm("页面值已经修改，是否要保存？")){  
                  //处理信息保存...  
                  alert("即将执行保存操作...");  
              }else{  
                  //不保存数据...  
                  alert("不保存信息...");  
              }
            
    	  }
	} */
	/* function save(){
		exForm.action="saveMistake.do";
		$("#exForm").submit();
	} */
	
   
   
</script>
<body >


<table  border="0" cellpadding="0" cellspacing="0">
<!-- <button onclick="save()">保存</button> -->

		<!--  <tr><td colspan="5" valign="middle" ><img src="<%=basePath%>${KS.FHourPath}${KS.FHourFileName}" style="width:100%" alt="图片不存在"></td></tr>-->
	
		<form id="exForm" method="post">
		<!-- <input style="display: none;"  name="FParentID"
										value="10086" >
		<input style="display: none;"  name="FStudentID"
										value="1623402" > -->
				<c:forEach items="${selectCheckAnswer3}" var="ex" varStatus="status">
					<c:if test="${not empty ex.FTitle1}">
						<tr>
							<td colspan="5" valign="middle"
								style="font-size:14px;background:url(<%=basePath%>jsp/exam/images/titleback.png)">${ex.fid}/${ex.FQRCode1}/${ex.FTitle1}</td>
						</tr>
					</c:if>
					<tr>
						<td style="width:2px">&nbsp;&nbsp;&nbsp;&nbsp;${ex.FTitle2}</td>
						<td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;${ex.FFileName}</td>
					</tr>
					<tr>
						<td></td>
						<td colspan="4">
							<div id="tab_demo" class="HuiTab">
								<div class="tabBar cl">
									<span style="display:none;"></span> <span style="width:50">
										<img src="<%=basePath%>jsp/exam/images/da-nsl.png"
										width="40px" height="20px"
										onmouseover="this.src='<%=basePath%>jsp/exam/images/da-sel.png'"
										onmouseout="this.src='<%=basePath%>jsp/exam/images/da-nsl.png'">
									</span> <span style="width:43"><img
										src="<%=basePath%>jsp/exam/images/db-nsl.png" width="40px"
										height="20px"
										onmouseover="this.src='<%=basePath%>jsp/exam/images/db-sel.png'"
										onmouseout="this.src='<%=basePath%>jsp/exam/images/db-nsl.png'"></span>
									<span style="width:99"><img
										src="<%=basePath%>jsp/exam/images/ts-nsl.png" width="96"
										height="20"
										onmouseover="this.src='<%=basePath%>jsp/exam/images/ts-sel.png'"
										onmouseout="this.src='<%=basePath%>jsp/exam/images/ts-nsl.png'"></span>
									<span><img src="<%=basePath%>jsp/exam/images/gg-nsl.png"
										width="64" height="20"
										onmouseover="this.src='<%=basePath%>jsp/exam/images/gg-sel.png'"
										onmouseout="this.src='<%=basePath%>jsp/exam/images/gg-nsl.png'"></span>
									<c:if test="${not empty ex.FYYtlqs}">
										<span><img
											src="<%=basePath%>jsp/exam/images/tl-nsl.png" width="64"
											height="20"
											onmouseover="this.src='<%=basePath%>jsp/exam/images/tl-sel.png'"
											onmouseout="this.src='<%=basePath%>jsp/exam/images/tl-nsl.png'"></span>
									</c:if>
								</div>
								<div class="tabCon" style="display:none;"></div>
								<div class="tabCon"
									style="width:100%;background:#ffffff;text-align:center;">
									<div style="float: left;">${ex.FAnsFileName}</div>
									
									
									<input style="display: none;"  name="fexercisID"
										value="${ex.fid}" >
									<input style="display: none;" id="${ex.fid}" name="fresult"
										value="1" >
									<div style="float: left;">
										<img class="rightselect${ex.fid}"
											onclick="rightselect(${ex.fid})"
											src="<%=basePath%>jsp/exam/images/rightselect.png" width="32"
											height="20"> 
										<img class="wrongselect${ex.fid}"
											onclick="wrongselect(${ex.fid})"
											src="<%=basePath%>jsp/exam/images/wrongselect.png" width="32"
											height="20">
									</div>
								</div>
								<div class="tabCon"
									style="width:100%;background:#ffffff;text-align:center;">${ex.FPointersFileName}</div>
								<div class="tabCon"
									style="width:100%;background:#ffffff;text-align:center;">${ex.FTipsFileName}</div>
								<div class="tabCon"
									style="width:100%;background:#ffffff;text-align:center;">
									<!--<c:if test="${not empty ex.FGGTitle1}">【巩固练习标题1】<br/>${ex.FGGTitle1}<br/></c:if>-->
									<c:if test="${not empty ex.FGGFileName}">【巩固练习1】<br />${ex.FGGTitle1}<br />${ex.FGGFileName}<br />
									</c:if>
									<c:if test="${not empty ex.FAnsGGName}">【巩固练习1答案】 ${ex.FAnsGGName}<br />
									</c:if>
									<c:if test="${not empty ex.FPointersFileName1}">【巩固练习1点拨】 ${ex.FPointersFileName1}<br />
									</c:if>
									<c:if test="${not empty ex.FTipsFileName1}">【巩固练习1家长辅导提示】 ${ex.FTipsFileName1}<br />
									</c:if>
									<c:if test="${not empty ex.FGGFileName2}">【巩固练习2】<br />${ex.FGGTitle2}<br />${ex.FGGFileName2}<br />
									</c:if>
									<c:if test="${not empty ex.FAnsGGName2}">【巩固练习2答案】 ${ex.FAnsGGName2}<br />
									</c:if>
									<c:if test="${not empty ex.FPointersFileName2}">【巩固练习2点拨】 ${ex.FPointersFileName2}<br />
									</c:if>
									<c:if test="${not empty ex.FTipsFileName2}">【巩固练习2家长辅导提示】 ${ex.FTipsFileName2}<br />
									</c:if>
									<c:if test="${not empty ex.FGGFileName3}">【巩固练习3】<br />${ex.FGGTitle3}<br />${ex.FGGFileName3}<br />
									</c:if>
									<c:if test="${not empty ex.FAnsGGName3}">【巩固练习3答案】 ${ex.FAnsGGName3}<br />
									</c:if>
									<c:if test="${not empty ex.FPointersFileName3}">【巩固练习3点拨】 ${ex.FPointersFileName3}<br />
									</c:if>
									<c:if test="${not empty ex.FTipsFileName3}">【巩固练习3家长辅导提示】 ${ex.FTipsFileName3}<br />
									</c:if>
									<c:if test="${not empty ex.FGGFileName4}">【巩固练习4】<br />${ex.FGGTitle4}<br />${ex.FGGFileName4}<br />
									</c:if>
									<c:if test="${not empty ex.FAnsGGName4}">【巩固练习4答案】 ${ex.FAnsGGName4}<br />
									</c:if>
									<c:if test="${not empty ex.FPointersFileName4}">【巩固练习4点拨】 ${ex.FPointersFileName4}<br />
									</c:if>
									<c:if test="${not empty ex.FTipsFileName4}">【巩固练习4家长辅导提示】 ${ex.FTipsFileName4}<br />
									</c:if>
								</div>
								<c:if test="${not empty ex.FYYtlqs}">
									<div class="tabCon"
										style="width:100%;background:#ffffff;text-align:center;">${ex.FYYLabel}<br />${ex.FYYtlqs}<br />【答案】${ex.FYYtlan}<br />【听力材料】${ex.FYYmaterial}
									</div>
								</c:if>
							</div>
						</td>
					</tr>
				</c:forEach>
		</form>
	</table>
</body>
</html>