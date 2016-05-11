<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<style type="text/css">
li{
	list-style: none;
}
p{
	display: inline;
}
.title{
	text-align: center;
	font: bold;
	font-size: 24px;
	margin-top: 26px;
}
.main{
	margin-left: 5px;
}
.text_title1_dv{
	margin-top:30px;
	width: 100%;
}
.text_title1{
	font-size: 20px;
	display: inline;
}
.music_img{
	display: inline;
}
.textmargin{
	margin-top: 10px;
	width: 97%;
}
.text_title2{
	font-size: 16px;
	display: inline;
}
.text_title2_content{
	display: inline;
}
.button_list li{
	display: inline;
}
.tabcon{
	width: 97%;
	font-size: 14px;
}
.tabcon2{
	width: 97%;
	font-size: 14px;
}
</style>
<script type="text/javascript">
var fphone="";
var fname="";
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
    	$.Huitab("#tab_demo .tabBar li","#tab_demo .tabCon","current","click","0");
    	var search = document.location.search;
        var pattern1 = new RegExp("[?&]"+"qrcode"+"\=([^&]+)", "g");
        var pattern2 = new RegExp("[?&]"+"fphone"+"\=([^&]+)", "g");
        var matcher1 = pattern1.exec(search);
        var matcher2 = pattern2.exec(search);
       
        if(null != matcher1&&null != matcher2){
            try{
                    items1 = decodeURIComponent(decodeURIComponent(matcher1[1]));
                    items2 = decodeURIComponent(decodeURIComponent(matcher2[1]));
            }catch(e){
                    try{
                            items1 = decodeURIComponent(matcher1[1]);
                            items2 = decodeURIComponent(matcher2[1]);
                    }catch(e){
                            items1 = matcher1[1];
                            items2 = matcher2[1];
                    }
            }
            fname = items1;
            fphone = items2;
    	}
        //添加扫描记录
      if(fphone!=""&&fname!=""){
         $.ajax({
    		type : "GET", //提交方式  
    		url : "addScanRecord.do?fphone="+fphone+"&fname="+fname,//路径  
    		dataType : "json",
    		success : function(result) {//返回数据根据结果进行相应的处理 
    		//	alert(result.message);
    		}
    	}); 
      }
        });
        
        function rightselect(fid){
        	var src1 = $(".wrongselect"+fid).attr("src");
        	var src2 = $(".rightselect"+fid).attr("src");
        	if(src2 == "<%=basePath%>jsp/exam/images/rightselected.png" ){
        		$(".rightselect"+fid).attr("src","<%=basePath%>jsp/exam/images/rightselect.png");
        		return ;
        	}
        	$(".rightselect"+fid).attr("src","<%=basePath%>jsp/exam/images/rightselected.png");
        	$(".wrongselect"+fid).attr("src","<%=basePath%>jsp/exam/images/wrongselect.png");
        	$("#"+fid).attr("value","0");	
        }
        function wrongselect(fid){
        	var src1 = $(".wrongselect"+fid).attr("src");
        	var src2 = $(".rightselect"+fid).attr("src");
        	if(src1 == "<%=basePath%>jsp/exam/images/wrongselected.png"){
        		$(".wrongselect"+fid).attr("src","<%=basePath%>jsp/exam/images/wrongselect.png");
        		return ;
        	}
        	$(".rightselect"+fid).attr("src","<%=basePath%>jsp/exam/images/rightselect.png");
        	$(".wrongselect"+fid).attr("src","<%=basePath%>jsp/exam/images/wrongselected.png");
        	$("#"+fid).attr("value","1");
        }
       
         function save(FStudentID){
    		exForm.action="saveMistake.do?FParentID="+fphone+"&FStudentID="+FStudentID;
    		$("#exForm").submit();
    	} 
    	
    	  jQuery.Huitab2=function(tabBar2,tabCon2,class_name,tabEvent,i){
        var $tab_menu=$(tabBar2);
          // 初始化操作
          $tab_menu.removeClass(class_name);
          $(tabBar2).eq(i).addClass(class_name);
          $(tabCon2).hide();
          $(tabCon2).eq(i).show();
          $tab_menu.bind(tabEvent,function(){
          $tab_menu.removeClass(class_name);
              $(this).addClass(class_name);
              var index=$tab_menu.index(this);
               $(tabCon2).slideToggle();
              $(tabCon2).hide();
              $(tabCon2).eq(index).show();
          });
        } 
        $(function(){
        $.Huitab("#tab_demo2 .tabBar2 li","#tab_demo2 .tabCon2","current","click","0");
    	$(".main").css("width",document.body.clientWidth);
    	var size = $(".imgfile img").size()-1;
    	 for(var i=0;i<size;i++){
    		var width = $(".imgfile img").eq(i).attr("width");
    		//超出屏幕范围
    		if(width>document.body.clientWidth){
    			$(".imgfile img").eq(i).attr("width",document.body.clientWidth);
    		}
    		
    		$(".imgfile img").eq(i).attr("c","0");
    		w = $(".imgfile img").eq(i).attr("width");
    		h = $(".imgfile img").eq(i).attr("height");
    		 if(w==null){
    			w=parseInt($(".imgfile img").eq(i).css("width"));
    		/* 	if(w==0){
    				w = parseInt(document.body.clientWidth)/10;
    				$(".imgfile img").eq(i).attr("width",w);
    			} */
    		}
    		if(h==null){
    			h=parseInt($(".imgfile img").eq(i).css("height"));
    			/* if(h==0){
    				h = parseInt(document.body.clientHeight)/10;
    				$(".imgfile img").eq(i).attr("height",h);
    			} */
    		}
    		$(".imgfile img").eq(i).attr("w",w);
    		$(".imgfile img").eq(i).attr("h",h);
    	} 
        });
        
        $(window).resize(function() {
        	var size = $(".imgfile img").size()-1;
        	$(".main").css("width",document.body.clientWidth);
        	 for(var i=0;i<size;i++){
        		var width = $(".imgfile img").eq(i).attr("width");
        		//超出屏幕范围
        		if(width>document.body.clientWidth){
        			$(".imgfile img").eq(i).attr("width",document.body.clientWidth);
        		}
        		
        		$(".imgfile img").eq(i).attr("c","0");
        		w = $(".imgfile img").eq(i).attr("width");
        		h = $(".imgfile img").eq(i).attr("height");
        		if(w==null){
        			w=parseInt($(".imgfile img").eq(i).css("width"));
        			/* if(w==0){
        				w = parseInt(document.body.clientWidth)/10;
        				$(".imgfile img").eq(i).attr("width",w);
        			} */
        		}
        		if(h==null){
        			h=parseInt($(".imgfile img").eq(i).css("height"));
        		/* 	if(h==0){
        				h = parseInt(document.body.clientHeight)/10;
        				$(".imgfile img").eq(i).attr("height",h);
        			} */
        		}
        		$(".imgfile img").eq(i).attr("w",w);
        		$(".imgfile img").eq(i).attr("h",h);
        	} 
    		
    	});
      	
        function play(id){
        	/* window.location.href="exam/play.do?filename="+encodeURI(filename)+"&material="+encodeURI(material); */
        	var audiofile = document.getElementById("audiofile"+id);
        	if(audiofile.paused){
        		audiofile.play();
        	}else{
        		audiofile.pause();
        	}
        }
        
        function tl(id,id2){
        	var display = $(id).css("display");
        	if(display=="none"){
        	 $(id).css("display","block");
        		$(id2).css("display","none");
        	}else{
        		$(id).css("display","none");
        		$(id1).css("display","block");
        	}
        	var text = $(id+" span").text();
        	if(text!=""){
        		$(id).html("");
            	$(id).html(text);
            	$(id).css("width",screen.availWidth/2);
        	}

        }
        
        function imgChangeWidth(id){

        	var imgid = "#"+id+" img";
        	var width =parseInt($(imgid).attr("w"));
        	var height =parseInt($(imgid).attr("h"));
        	var c= $(imgid).attr("c");
        	
    		 if(c=="1"){
    			width =  $(imgid).attr("width");
    	    	height =   $(imgid).attr("height");
    	    	$(imgid).attr("c","1");	
     		} 
    		if(c=="0"){
    			 if(width==0){
    				return;
    			} 
    			if(height==0){
        			return;
        		}
    			//横屏
    			if(document.body.clientWidth>document.body.clientHeight){
    				//放大倍数
    				var pre=parseInt(document.body.clientWidth)/parseInt(document.body.clientHeight);
    				width = parseInt(width)*parseFloat(pre);
    				height = parseInt(height)*parseFloat(pre);
    			}
    			//竖屏
    			if(document.body.clientWidth<document.body.clientHeight){
    				//放大倍数
    				var pre=parseInt(document.body.clientHeight)/parseInt(document.body.clientWidth);
    				width = parseInt(width)*parseFloat(pre);
    				height = parseInt(height)*parseFloat(pre);
    			}
     	   		$(imgid).attr("c","1");	
     		}
        	 //超出屏幕范围
    		if(width>document.body.clientWidth){
    			width=document.body.clientWidth;
    		}
    		
    		$(imgid).attr("width",width);
        	$(imgid).attr("height",height); 
        	
        }    
        
</script>
</head>
<body >
<div class="main">
	<div class="title"><c:if test="${not empty KS.FHourDesc}">${KS.FHourDesc}</c:if></div>
	<c:forEach items="${exercise}" var="ex" varStatus="status">
	<c:if test="${not empty ex.FTitle1}">
		<c:if test="${status.index==0}">
		<div class="text_title1_dv" style="background-image: url('<%=basePath%>jsp/exam/images/titleback.png');">
			<li class="text_title1">${ex.FTitle1}</li>
			<c:if test="${not empty ex.FAudioFileName}">
			<li class="music_img"><img onclick="play('1${ex.fid}')" src="jsp/exam/images/music.png"></li>
			<audio id="audiofile1${ex.fid}" style="display: none;" controls="controls">
  				<source src="<%=basePath%>upload/${ex.FAudioFileName}">	
			</audio>
			</c:if>
		</div>
		</c:if>
		<c:if test="${status.index>0}">
			<c:forEach items="${exercise}" var="e" begin="${status.index-1}" end="${status.index-1}" varStatus="sta">
			<div class="text_title1_dv" style="<c:if test="${e.FTitle1!=ex.FTitle1}">background-image: url('<%=basePath%>jsp/exam/images/titleback.png');</c:if>">
			<li class="text_title1">
			<c:if test="${e.FTitle1!=ex.FTitle1}">
			${ex.FTitle1}</c:if></li>
			<c:if test="${not empty ex.FAudioFileName}">
			<li class="music_img">
			<img onclick="play('1${ex.fid}')" src="jsp/exam/images/music.png"></li>
			<audio id="audiofile1${ex.fid}" style="display: none;" controls="controls">
  				<source src="<%=basePath%>upload/${ex.FAudioFileName}">	
			</audio>
			</c:if>
			</div>
			</c:forEach>
		</c:if>
	</c:if>
	<div class="text_contentdv textmargin">
			<li class="text_title2"><c:if test="${not empty ex.FTitle2}">${ex.FTitle2}</c:if></li>
			<li class="text_title2_content imgfile" id="fn${ex.fid}" onclick="imgChangeWidth('fn${ex.fid}')">${ex.FFileName}</li>
	</div>
	<div class="button_list HuiTab" id="tab_demo">
		<div class="tabBar textmargin">
		<li style="display:none;"></li> 
		<li><img  src="<%=basePath%>jsp/exam/images/da-nsl.png" width="56px" height="30px" 
				onmouseover="this.src='<%=basePath%>jsp/exam/images/da-sel.png'"
				onmouseout="this.src='<%=basePath%>jsp/exam/images/da-nsl.png'"></li>
		<li style="<c:if test="${fn:contains(ex.FTitle1,'听录音')||ex.FPointersFileName==''}">display: none;</c:if>">
			<img src="<%=basePath%>jsp/exam/images/db-nsl.png" width="56px" height="30px"
				onmouseover="this.src='<%=basePath%>jsp/exam/images/db-sel.png'"
				onmouseout="this.src='<%=basePath%>jsp/exam/images/db-nsl.png'"></li>
		<c:if test="${not empty ex.FGGFileName}">
		<li style="<c:if test="${fn:contains(ex.FTitle1,'听录音')||ex.FGGFileName==''}">display:none</c:if>">
			<img src="<%=basePath%>jsp/exam/images/gg-nsl.png" width="76px" height="30px" 
				onmouseover="this.src='<%=basePath%>jsp/exam/images/gg-sel.png'"
				onmouseout="this.src='<%=basePath%>jsp/exam/images/gg-nsl.png'"></li>
		</c:if>
		<c:if test="${not empty ex.FAudioFileName}">
		<li>
			<img  src="<%=basePath%>jsp/exam/images/listen.png" width="82px" height="30px" 
				onmouseover="this.src='<%=basePath%>jsp/exam/images/listenselect.png'"
				onmouseout="this.src='<%=basePath%>jsp/exam/images/listen.png'"></c:if></li>
		<c:if test="${not empty ex.FYYtlqs}">
		<li>
			<img src="<%=basePath%>jsp/exam/images/tl-nsl.png" width="104px" height="30px" 
				onmouseover="this.src='<%=basePath%>jsp/exam/images/tl-sel.png'"
				onmouseout="this.src='<%=basePath%>jsp/exam/images/tl-nsl.png'"></li>
		</c:if>
		<li style="<c:if test="${fn:contains(ex.FTitle1,'听录音')||ex.FTipsFileName==''}">display:none</c:if>">
		<img src="<%=basePath%>jsp/exam/images/ts-nsl.png" width="96px" height="30px" 
				onmouseover="this.src='<%=basePath%>jsp/exam/images/ts-sel.png'"
				onmouseout="this.src='<%=basePath%>jsp/exam/images/ts-nsl.png'"></li>
		</div>
		<div class="tabCon" style="display:none;"></div>
		<!-- 答案 -->
		<div class="tabCon" >
			<li class="imgfile" id="dafile${ex.fid}" onclick="imgChangeWidth('dafile${ex.fid}')"><div style="display:inline;" id="da${ex.fid}">${ex.FAnsFileName}</div></li>
			<li><input style="display: none;" name="fexercisID" value="${ex.fid}"></li>
			<li><input style="display: none;" id="${ex.fid}" name="fresult" value="1"></li>
			<li>
				<img class="rightselect${ex.fid}" 
					onclick="rightselect(${ex.fid})"
					src="<%=basePath%>jsp/exam/images/rightselect.png" 
					width="56"
					height="34">
				<img class="wrongselect${ex.fid}"
					onclick="wrongselect(${ex.fid})"
					src="<%=basePath%>jsp/exam/images/wrongselect.png" 
					width="56"
					height="34"></li>
		</div>
		<!-- 点拨 -->
		<div class="tabCon imgfile" id="db${ex.fid}" onclick="imgChangeWidth('db${ex.fid}')">
			<li class="db_content">${ex.FPointersFileName}</li>
		</div>
		<!-- 巩固练习 -->
		<c:if test="${not empty ex.FGGFileName}">
		<div class="tabCon imgfile" >
			<div>${ex.FGGTitle1}</div>
			<div class="imgfile" id="ggfile${ex.fid}" onclick="imgChangeWidth('ggfile${ex.fid}')">
				<li>${ex.FGGFileName}</li>
			</div>
		<!-- 巩固练习2级下滑按钮 -->
			 <div id="tab_demo2" class="HuiTab2">
			 	<div class="tabBar2 textmargin">
			 		<li style="display:none;"></li> 
			 		<li>
			 			<img  src="<%=basePath%>jsp/exam/images/da-nsl.png" width="56px" height="30px" 
							onmouseover="this.src='<%=basePath%>jsp/exam/images/da-sel.png'"
							onmouseout="this.src='<%=basePath%>jsp/exam/images/da-nsl.png'"></li>
					<li style="<c:if test="${ex.FPointersFileName1==''}">display:none</c:if>">
						<img src="<%=basePath%>jsp/exam/images/db-nsl.png" width="56px" height="30px"
							onmouseover="this.src='<%=basePath%>jsp/exam/images/db-sel.png'"
							onmouseout="this.src='<%=basePath%>jsp/exam/images/db-nsl.png'"></li>
					<li style="<c:if test="${ex.FTipsFileName1==''}">display:none</c:if>">
						<img src="<%=basePath%>jsp/exam/images/ts-nsl.png" width="96px" height="30px" 
							onmouseover="this.src='<%=basePath%>jsp/exam/images/ts-sel.png'"
							onmouseout="this.src='<%=basePath%>jsp/exam/images/ts-nsl.png'"></li>
					</div>
					<div class="tabCon2" style="display:none;"></div>
					<!-- 巩固练习答案 -->
					<div class="tabCon2 imgfile" id="ggda${ex.fid}" onclick="imgChangeWidth('ggda${ex.fid}')">
						<c:if test="${not empty ex.FAnsGGName}">
							<li id="da1${ex.fid}">${ex.FAnsGGName}</li>
						</c:if>
					</div>
					<!-- 巩固练习点拨 -->
					<div class="tabCon2 imgfile" id="ggdb${ex.fid}" onclick="imgChangeWidth('ggdb${ex.fid}')">
						<c:if test="${not empty ex.FPointersFileName1}"> 
							<li >${ex.FPointersFileName1}</li>
						</c:if>
					</div>
					<!-- 巩固练习提示 -->
					<div class="tabCon2 imgfile" id="ggts${ex.fid}" onclick="imgChangeWidth('ggts${ex.fid}')">
						<c:if test="${not empty ex.FTipsFileName1}">
							<li >${ex.FTipsFileName1}</li>
						</c:if>
					</div>
			 	</div>
			 </div>
			 </c:if>
			 <!-- 听力材料 -->
			<c:if test="${not empty ex.FAudioFileName}">
			<div class="tabCon">
				<li>${ex.flistenmaterial}</li>
			</div>
			</c:if>
			<!-- 听力三分钟 -->
			<c:if test="${not empty ex.FYYtlqs}">
			<div class="tabCon">
				<li>
					<c:if test="${not empty ex.FYYAudioFileName}">
					<audio id="audiofile2${ex.fid}" style="display: none;" controls="controls">
  						<source src="<%=basePath%>upload/${ex.FYYAudioFileName}">
					</audio></c:if>${ex.FYYLabel}</li>
				<li><img onclick="play('2${ex.fid}')" style="margin-top: 5px" width="30" height="28" src="images/music.png"></li>
				<div>${ex.FYYtlqs}</div>
				<div class="tls_btn textmargin">
				<li><img  src="<%=basePath%>jsp/exam/images/da-nsl2.png" width="56px" height="30px" 
					onclick="tl('#tlda${ex.fid}','#tlcl${ex.fid}')"
					onmouseover="this.src='<%=basePath%>jsp/exam/images/da-sel.png'"
					onmouseout="this.src='<%=basePath%>jsp/exam/images/da-nsl2.png'"></li>
				<li><img  src="<%=basePath%>jsp/exam/images/listen2.png" width="82px" height="30px" 
					onclick="tl('#tlcl${ex.fid}','#tlda${ex.fid}')"
					onmouseover="this.src='<%=basePath%>jsp/exam/images/listenselect.png'"
					onmouseout="this.src='<%=basePath%>jsp/exam/images/listen2.png'"></li></div>
				<div  id="tlda${ex.fid}" style="display: none;">${ex.FYYtlan}</div>
				<div  id="tlcl${ex.fid}" style="display: none;">${ex.FYYmaterial}</div>
			</div>
			</c:if>
			<!-- 家长辅导提示 -->
			<div class="tabCon imgfile" id="ts${ex.fid}" onclick="imgChangeWidth('ts${ex.fid}')">
				<li>${ex.FTipsFileName}</li>
			</div>
		</div>
		</c:forEach>
	</div>
</body>
</html>
