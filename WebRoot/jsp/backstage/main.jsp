<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<style type="text/css">
#write {color: write;}
#blue {color: blue;}
#orange {color: orange;}
#green {color: green;}
                                                       
a {color: inherit;}
</style>
</head>

<body>
<div class="nav-top">
	<span>鲲鹏教育后台管理平台</span>
    <div class="nav-topright">
   
        <span>您好：管理员</span><span id="write"><a href="<%=basePath%>bglogin.do" rel="nofollow" >注销</a></span>
    </div>
</div>
<div class="nav-down">
	<div class="leftmenu1">
        <div class="menu-oc"><img src="images/iconfont-back.png" /></div>
    	<ul>
        	<li>
            	<a class="a_list a_list2">用户管理</a>
                <div class="menu_list menu_list_first">
                	<a class="lista_first" href="teacher_management.do" target="main">教师管理</a>
                    <a href="parents_management.do" target="main">家长管理</a>
                   
                </div>
            </li>
            <li>
            	<a class="a_list a_list3">题库管理</a>
                <div class="menu_list">
                	<a href="exercise2.do" target="main">题库导入</a>
                   	<a href="settestpaper.do" target="main">试题组卷</a>
                   	<a href="games_import.do" target="main">小游戏题库导入</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list3">基础资料管理</a>
                <div class="menu_list">
                	<a href="dy_base.do" target="main" style="display:none">单元管理</a>
                    <a href="ks_base.do" target="main" style="display:none">课时管理</a>
                    <a href="dycode_base.do" target="main">单元描述管理</a>
                    <a href="kscode_base.do" target="main">课时描述管理</a>
                </div>
            </li>
            
        </ul>
    </div>
    <div class="leftmenu2">
    	<div class="menu-oc1"><img src="images/iconfont-right.png" /></div>
        <ul>
        	<li>
            	<a class="j_a_list j_a_list2"></a>
                <div class="j_menu_list j_menu_list_first">
                	<span class="sp2"><i></i>用户管理</span>
                	<a href="teacher_management.do" target="main">教师管理</a>
                    <a href="parents_management.do" target="main">家长管理</a>
                   
                </div>
            </li>
            <li>
            	<a class="j_a_list j_a_list3"></a>
                <div class="j_menu_list">
                	<span class="sp3"><i></i>题库管理</span>
                	<a href="exercise2.do" target="main">题库导入</a>
                  	<a href="settestpaper.do" target="main">试题组卷</a>
                  	<a href="games_import.do" target="main">小游戏题库导入</a>
                </div>
            </li>
            <li>
            	<a class="j_a_list j_a_list3"></a>
                <div class="j_menu_list">
                	<span class="sp3"><i></i>基础资料管理</span>
                	<a href="dy_base.do" target="main" style="display:none">单元管理</a>
                    <a href="ks_base.do" target="main" style="display:none">课时管理</a>  
                    <a href="dycode_base.do" target="main">单元描述管理</a>
                    <a href="kscode_base.do" target="main">课时描述管理</a>        
                </div>
            </li>
        </ul>
        
    </div>
    <div class="rightcon">
    	
        	<iframe src="" id="main" frameborder="0" name="main" style="width:100%;height:100%;" ></iframe>
        
    </div>
</div>


</body>
</html>
