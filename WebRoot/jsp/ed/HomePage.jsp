<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'HomePage.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	select::-ms-expand { display: none; }
	select {
  /*Chrome和Firefox里面的边框是不一样的，所以复写了一下*/
  border: solid 1px #000;

  /*很关键：将默认的select选择框样式清除*/
  appearance:none;
  -moz-appearance:none;
  -webkit-appearance:none;

  /*在选择框的最右侧中间显示小箭头图片*/
  background: url("jsp/ed/arrow.png") no-repeat scroll right center transparent;


  /*为下拉小箭头留出一点位置，避免被文字覆盖*/
  padding-right: 14px;
}
	a{
	 text-decoration: none; color: inherit;
	}
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
	td{
	text-align:center;
	}
	div{
	padding-bottom:2%;padding-top:1%;
	}
	input{
	line-height:18px;
	background:#F2F2F2;
	}
	    /*按钮*/
    .btn{display:inline-block;cursor:pointer;text-align:center; font-weight:400;white-space:nowrap;vertical-align: middle;*zoom:1;-webkit-transition:background-color .1s linear;-moz-transition:background-color .1s linear;-o-transition:background-color .1s linear;transition:background-color .1s linear;}
    a.btn:hover,a.btn:focus,a.btn:active,a.btn.active,a.btn.disabled,a.btn[disabled]{text-decoration:none}
    .btn:active,.btn.active{background-color:#ccc}
    .btn:first-child{*margin-left:0}
    .btn.active,.btn:active{-moz-box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset;-webkit-box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset; box-shadow:0 1px 8px rgba(0, 0, 0, 0.125) inset;}
     
    /*默认——灰色 通常用于取消*/
    .btn-default{background-color:#e6e6e6}
    .btn-default:hover,
    .btn-default:focus,
    .btn-default:active,
    .btn-default.active{color:#333;background-color:#c7c7c7;border-color:#c7c7c7}
     
    /*主要——主色 通常用于确定、提交、购买、支付等*/
    .btn-primary{color:#fff;background-color:#5a98de; border-color:#5a98de}
    .btn-primary:hover,
    .btn-primary:focus,
    .btn-primary:active,
    .btn-primary.active{color:#fff;background-color:#6aa2e0;border-color:#6aa2e0}
     
    /*次要按钮*/
    .btn-secondary{color:#fff;background-color:#3bb4f2; border-color:#3bb4f2}
    .btn-secondary:hover,
    .btn-secondary:focus,
    .btn-secondary:active,
    .btn-secondary.active{color:#fff;background-color:#0f9ae0;border-color:#0f9ae0}
     
    /*成功*/
    .btn-success{color:#fff;background-color:#5eb95e; border-color:#5eb95e}
    .btn-success:hover,
    .btn-success:focus,
    .btn-success:active,
    .btn-success.active{color:#fff;background-color:#429842;border-color:#429842}
     
    /*警告*/
    .btn-warning{color:#fff;background-color:#f37b1d; border-color:#f37b1d}
    .btn-warning:hover,
    .btn-warning:focus,
    .btn-warning:active,
    .btn-warning.active{color:#fff;background-color:#c85e0b;border-color:#c85e0b}
     
    /*危险*/
    .btn-danger{color:#fff;background-color:#dd514c; border-color:#dd514c}
    .btn-danger:hover,
    .btn-danger:focus,
    .btn-danger:active,
    .btn-danger.active{color:#fff;background-color:#c62b26;border-color:#c62b26}
     
    /*链接*/
    .btn-link{color:#0e90d2;cursor:pointer;border-color:transparent;background-color:transparent;}
    .btn-link:hover,
    .btn-link:focus,
    .btn-link:active,
    .btn-link.active{color:#095f8a;text-decoration:underline;background-color:transparent}
     
    /*禁用状态*/
    .btn.disabled{cursor:not-allowed;background-image:none;opacity:.65;filter:alpha(opacity=65);box-shadow:none; pointer-events:none;}
	</style>
  </head>
  <body>
  	<div style="widht:100%;">
  		<div style="float:left;margin:0 1%;">
  			<select>
  				<option>语文</option>
  				<option>数学</option>
  				<option>英语</option>
  			</select>
  		</div>
  		<div style="float:left;margin:0 2%;">
  			<select>
  				<option>人教版</option>
  				<option>开心版</option>
  			</select>
  		</div>
  		<div style="float:left;margin:0 2%;">
  			<select>
  				<option>一年级</option>
  				<option>二年级</option>
  				<option>三年级</option>
  			</select>
  		</div>
  		<div style="float:left;margin:0 2%;">
  			<select>
  				<option>上册</option>
  				<option>中册</option>
  				<option>下册</option>
  			</select>
  		</div>
  		<div style="float:left;margin:0 2%;">
  			<select>
  				<option>第一单元</option>
  				<option>第二单元</option>
  				<option>第三单元</option>
  			</select>
  		</div>
  		<div style="float:left;margin:0 2%;">
  			<select>
  				<option>第一课时</option>
  				<option>第二课时</option>
  				<option>第三课时</option>
  			</select>
  		</div>
  		<div style="float:left;margin:0 2%;">
  			<input  type="button" value="增加题目" onclick="javascript:window.location.href='jsp/ed/Added.jsp';">
  		</div>
  		<div style="float:left;margin:0 2%;">
  			<input  type="button" value="增加课时头">
  		</div>
  		<div style="float:left;margin:0 2%;">
  			<input type="button" value="增加课时码">
  		</div>
  		<div style="float:left;margin:0 2%;">
  			<input type="button" value="增加总码">
  		</div>
  		<div style="float:left;margin:0 1%;">
  			<input type="button" value="添加课时的功用材料">
  		</div>
  	</div>
  	<table border="1" style="width:100%;border-collapse:collapse;">
  		<tr>
  			<td>大标题</td>
  			<td>小标题</td>
  			<td>小小标题</td>
  			<td>小小小标题</td>
  			<td>课时描述</td>
  			<td>课时二维码</td>
  			<td>题目</td>
  			<td>答案</td>
  			<td>点播</td>
  			<td>家长辅导建议</td>
  			<td>音频文件</td>
  			<td>标签</td>
  			<td>巩固练习</td>
  			<td>巩固练习答案</td>
  		</tr>
  		<tr>
  			<td><a href="jsp/ed/content.jsp" >一、给加点字选择正确的读音，画“√”。</a></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td><a href="jsp/ed/content.jsp" >叶脉(mò　mài)种子(zhǒng　zhòng)品尝(píng　pǐn)撒种(sā　sǎ)仰脸(yáng　yǎng)演奏(còu　zòu)</a></td>
  			<td><a href="jsp/ed/content.jsp" >mài　zhǒng　pǐn　sǎ　yǎng　zòu</a></td>
  			<td><a href="jsp/ed/content.jsp" >①“脉”有两个读音。读mài时，意为血管，例如“动脉”“静脉”。
引申为植物叶子、昆虫翅膀上像血管的组织，如“叶脉”；也引申为像血管一样连贯而成系统的东西，如“山脉”“矿脉”。
读mò 时，只组词“脉脉”，表示默默地用眼神或行动表达情意的样子。如“含情脉脉”。
 ②“撒”读sā时，有放开，发出之意，如“撒网”“撒谎”。
读sǎ时，意为散布，散播，如“撒种”。</a></td>
  			<td></td>
  			<td></td>
  			<td><a href="jsp/ed/content.jsp">选择题、拼音</a></td>
  			<td><a href="jsp/ed/content.jsp"> mò  (      )          zhǒng (       )           sā(      )    
脉                    种                       撒
     mài (      )          zhóng (       )           sǎ(      )     </a></td>
  			<td><a href="jsp/ed/content.jsp">含情脉脉    种子       撒娇       
脉搏        种花       撒种  </a></td>
  		</tr>
  		<tr>
  			<td><a href="jsp/ed/content.jsp">二、在括号里填上恰当的量词。</a></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td><a href="jsp/ed/content.jsp">一(　　)清泉　一(　　)雨伞
一(　　)音乐厅       一(　　)风
一(　　)鼓           一(　　)水珠　
一(　　)树叶         一(　　)床</a></td>
  			<td><a href="jsp/ed/content.jsp">股　把　座　阵　面　颗　片　张</a></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td><a href="jsp/ed/content.jsp">填空题、字词句</a></td>
  			<td></td>
  			<td></td>
  		</tr>
  		<tr>
  			<td><a href="jsp/ed/content.jsp">三、写出下列句子的修辞手法。</a></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td><a href="jsp/ed/content.jsp">1．屋子前面小水沟里的水流动起来了，像一股从地底下涌出来的清泉。(　　　)
2．吹来一阵风，树叶上的水珠通通跌下来。(　　　)
3．我喜欢春雨，它在树林里演奏。(　　　)
4．所有的鼓都敲起来了，敲在小伞上，敲在地面上，好像地球就是一面鼓。(　　　)
5．春雨高兴得哗啦哗啦，哗啦哗啦，你推我挤。(　　　)
6．听雨滴打在油加利树上，打在相思树上，打在羊蹄甲上，打在面包树上……(　　　)</a></td>
  			<td><a href="jsp/ed/content.jsp">1.比喻 2.拟人 3.拟人 4.比喻 5.拟人 6.排比</a></td>
  			<td><a href="jsp/ed/content.jsp">从第二句、第三句和第五句描写人的词语“跌下来”“演奏”“你推我挤” 中可以看出这三个句子都是拟人句。
第六句是由“打在油加利树上”“打在相思树上”“打在羊蹄甲上”“打在面包树上”四个结构相同、内容相关、语气一致的短语组成的句子，所以是排比句。</a></td>
  			<td><a href="jsp/ed/content.jsp">比喻句常有比喻词，如“像”“好像”“仿佛”“犹如”等。但有这类词的句子，不一定是比喻句。判断一个句子是不是比喻句，就要看句子是否把一种事物比作了另一种事物，并且这两种事物必须是不同类的。如第一小题把“小水沟里的水”比作“清泉”，可以判定这个句子采用了比喻的修辞手法。</a></td>
  			<td></td>
  			<td><a href="jsp/ed/content.jsp">填空题、修辞</a></td>
  			<td></td>
  			<td></td>
  		</tr>
  	</table>
  </body>
</html>
