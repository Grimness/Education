<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>综合评测-家长</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,user-scalable=1" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta content="black" name="apple-mobile-web-app-status-bar-style" />
	<script type="text/javascript" src="js/H-ui.js"></script>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<style type="text/css">
	 .Huifold .item{ position:relative}
    .Huifold .item h4{margin:0;font-weight:bold;position:relative;border-top: 1px solid #CCC;font-size:15px;line-height:22px;padding:7px 10px;background-color:#FFFFFF;cursor:pointer;padding-right:30px}
    .Huifold .item h4 b{position:absolute;display: block; cursor:pointer;right:10px;top:7px;width:16px;height:16px; text-align:center; color: 	#BABABA}
    .Huifold .item .info{display:none;padding:10px}
	a{
	 text-decoration: none; color: inherit;}
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
	    jQuery.Huifold = function(obj,obj_c,speed,obj_type,Event){
    	if(obj_type == 2){
    		$(obj+":first").find("b").html("-");
    		$(obj_c+":first").show();
    	}
    	$(obj).bind(Event,function(){
    		if($(this).next().is(":visible")){
    			if(obj_type == 2){
    				return false;
    			}
    			else{
    				$(this).next().slideUp(speed).end().removeClass("selected");
    				$(this).find("b").html("+");
    			}
    		}
    		else{
    			if(obj_type == 3){
    				$(this).next().slideDown(speed).end().addClass("selected");
    				$(this).find("b").html("-");
    			}else{
    				$(obj_c).slideUp(speed);
    				$(obj).removeClass("selected");
    				$(obj).find("b").html("+");
    				$(this).next().slideDown(speed).end().addClass("selected");
    				$(this).find("b").html("-");
    			}
    		}
    	});
    }
        $(function(){
    	$.Huifold("#Huifold1 .item h4","#Huifold1 .item .info","fast",1,"click"); /*5个参数顺序不可打乱，分别是：相应区,隐藏显示的内容,速度,类型,事件*/
    });
    
    var FStudentID = localStorage.getItem("FStudentID");
 		var FPhone = localStorage.getItem("FPhone");
 		function practice(){
		window.location.href="<%=basePath%>MixedAbility1.do?FStudentID="+FStudentID+"&FPhone="+FPhone;
		}
	</script>
</head>
<body>
	<table border="0" style="width:100%;border-collapse:collapse;">
	<tr>
		<td><span onclick="practice()" >学习成长轨迹</span></td>
		<td>综合测评</td>
	</tr>
	<tr style="background:#CCCCCC;height:30px;">
		<td colspan="2"></td>
	</tr>
	<tr>
		<td colspan="2">
	    <ul id="Huifold1" class="Huifold" style="list-style-type:none">
      <li class="item">
        <h4>品德与社会化水平<b>+</b></h4>
        <div class="info">
        <div>关键指标</div>
        <div>1道德品质</div>
        <div>2社会责任</div>
        <div>3国家认同</div>
        <div>4国际理解</div>
        <div><input type="text" style="width:100%;height:200px;background:#cccccc;border:solid 1px #CCCCCC;"></div>
        </div>
      </li>
      <li class="item">
        <h4>学业发展水平<b>+</b></h4>
        <div class="info">
         <div>aaaa</div>
        <div>aaaa</div>
        </div>
      </li>
      <li class="item">
        <h4>身心发展水平<b>+</b></h4>
        <div class="info">
         <div>aaaa</div>
        <div>aaaa</div>
        </div>
      </li>
       <li class="item">
        <h4>兴趣特长潜能<b>+</b></h4>
        <div class="info">
         <div>aaaa</div>
        <div>aaaa</div>
        </div>
      </li>
       <li class="item">
        <h4>学业负担状况<b>+</b></h4>
        <div class="info">
         <div>aaaa</div>
        <div>aaaa</div>
        </div>
      </li>
       <li class="item">
        <h4>对学习的认同<b>+</b></h4>
        <div class="info">
         <div>aaaa</div>
        <div>aaaa</div>
        </div>
      </li>
    </ul>
    </td>
    </tr>
    </table>
</body>
</html>
