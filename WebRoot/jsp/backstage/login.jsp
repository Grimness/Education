<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css" media="screen">
.center {
	position: absolute;
	left: 25%;
	top: 20px;
}
.txt13 {
	font-family: Arial, Microsoft JhengHei, sans-serif;
	font-size: 13px;
	line-height: 22px;
	color: #030303;
}
.logoutMessage {
	font-family: Arial, Microsoft JhengHei, sans-serif;
	font-size: 18px;
	font-weight: bold;
	color: #ff0000;
}
td img {
	vertical-align: bottom;
}

.btn {
	position: relative;
	font-weight: bold;
	width: 100px;
	height: 40px;
	border-radius: 3px;
	border: 1px solid #c0c0c0;
	margin: 0 50px 40px 0;
}
.btn:nth-child(1) {
	font-family: Arial,  sans-serif;
	font-size:15px;
	color: #030303;
	border-color: #E6E6FA;
	box-shadow: inset 0 1px 0 #e0e0e0, 0 1px 0 rgba(0, 0, 0, .2);
	background: -webkit-linear-gradient(top, #CAE1FF, #b7b7b7);
	background: -moz-linear-gradient(top, #CAE1FF, #b7b7b7);
	background: -o-linear-gradient(top, #CAE1FF, #b7b7b7);
	background: -ms-linear-gradient(top, #CAE1FF, #b7b7b7);
	background: linear-gradient(top, #CAE1FF, #b7b7b7);
}

.btn:nth-child(1):hover {
	background: -webkit-linear-gradient(top, #FFFFE0, #FA8072);
	background: -moz-linear-gradient(top, #FFFFE0, #FA8072);
	background: -o-linear-gradient(top, #FFFFE0, #FA8072);
	background: -ms-linear-gradient(top, #FFFFE0, #FA8072);
	background: linear-gradient(top, #FFFFE0, #FA8072);
}

.btn:nth-child(1):active {
	top: 4px;
	box-shadow: inset 0 1px 3px #555;
	background: -webkit-linear-gradient(top, #E8E8E8, #FFFFFF);
	background: -moz-linear-gradient(top, #E8E8E8, #FFFFFF);
	background: -ms-linear-gradient(top, #E8E8E8, #FFFFFF);
	background: -o-linear-gradient(top, #E8E8E8, #FFFFFF);
	background: linear-gradient(top, #E8E8E8, #FFFFFF);
}

.btn:before,.btn:after {
	position: absolute;
	content: "";
	height: 50%;
	border-radius: 50%;
	z-index: -1;
}

.btn:before {
	width: 90%;
	left: 5%;
	top: 12%;
	box-shadow: 0 -7px 4px rgba(0, 0, 0, 0.3);
}

.btn:active:before {
	width: 90%;
	left: 5%;
	top: 12%;
	box-shadow: 0 0 2px rgba(0, 0, 0, 0.3);
}

.btn:after {
	width: 80%;
	left: 10%;
	bottom: 9%;
	box-shadow: 0 7px 4px rgba(0, 0, 0, 0.4);
}

.btn:active:after {
	width: 80%;
	left: 10%;
	bottom: 9%;
	box-shadow: 0 0 0 rgba(0, 0, 0, 0.4);
}
</style>
<script type="text/javascript">
	function userid_check() {
		if (document.form1.UserName.value == "") {
			form1.UserName.focus();
			alert('用户名不能为空');
			return false;
		}
		
			if (document.form1.UserPassWord.value == "") {
				alert('密码不能为空');
				form1.UserPassWord.focus();
				return false;
			}
		
	};
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
</head>
<body bgcolor="#CCCCCC">
	<form id="form1" name="form1" method="post" action="login_bgmain.do"
		onsubmit="return userid_check();">
		<table width="780" cellspacing="0" cellpadding="0" border="0"
			align="center">
			<tbody>
				<tr>
					<td valign="top" height="30" align="left">
						<table width="780px" cellspacing="0" cellpadding="0" border="0">
							<tr>
								<td><img width="18" height="21"
									src="pages/login_border_top_left.jpg">
								</td>
								<td><img width="744" height="21"
									src="pages/login_border_top_center.jpg">
								</td>
								<td><img width="18" height="21"
									src="pages/login_border_top_right.jpg">
								</td>
							</tr>
						</table>
						<table width="780px" cellspacing="0" cellpadding="0" border="0">
							<tr>
								<td><img width="10" height="133"
									src="pages/login_border_top_line_1.jpg">
								</td>
								<td valign="top" height="133" bgcolor="#FFFFFF" align="left"><img
									width="130" height="130" src="pages/company_logo.jpg.gif">
								</td>
								<td><img width="576" height="133"
									src="pages/login_border_top_banner1.jpg">
								</td>
								<td><img width="64" height="133"
									src="pages/login_border_top_line_2.jpg">
								</td>
							</tr>
							<tr>
								<td colspan="4"><img width="780" height="35"
									src="pages/login_line_split.jpg">
								</td>
							</tr>
						</table>
						<table bgcolor="" width="780px" cellspacing="0" cellpadding="0" border="0">
							<tr>
								<td><img width="18" height="329"
									src="pages/login_border_center_left.jpg"></td>
								<td><img width="499" height="329"
									src="pages/top_02_meitu_1.jpg"></td>
								<td valign="middle" height="329" bgcolor="#E2E7FD"
									align="left">
									<table class="txt13" width="98%" cellspacing="0"
										cellpadding="0" border="0">
										<tbody>
											<tr>
												<td class="logoutMessage" valign="middle"
													align="center"></td>
											</tr>
											<tr>
												<td width="50" valign="middle" height="40" align="right">
													<img width="41" height="39" src="pages/icon_user.gif">
												</td>
												<td width="39">账号:</td>
												<td width="134" valign="middle" height="40" align="left"><input
													type="text" style="width:80%;font-size:12px;"
													name="UserName" id="UserName" />
												</td>
											</tr>
											<tr>
												<td width="50" valign="middle" height="40" align="right">
													<img width="41" height="39" src="pages/icon_password.gif">
												</td>
												<td width="39">密码:</td>
												<td width="45" height="40" align="left" valign="middle"><input
													style="width:80%;font-size:12px;" type="password"
													name="UserPassWord" id="UserPassWord" />
												</td>
											</tr>
											<tr>
												<td width="55" valign="middle" height="40" align="right">
												</td>
												<td width="39"></td>
												<td valign="middle" align="right"><input class="btn"
													type="submit" value="登录" />
												</td>
											</tr>
										</tbody>
									</table></td>
								<td><img width="18" height="329"
									src="pages/login_border_center_right.jpg"></td>
							</tr>
						</table>
						<table bgcolor="" width="780px" cellspacing="0" cellpadding="0" border="0">
						<tr>
						<td>
						<img width="18" height="22" src="pages/login_border_bottom_left.jpg">
						</td>
						<td>
						<img width="744" height="22" src="pages/login_border_bottom_center.jpg">
						</td>
						<td>
						<img width="18" height="22" src="pages/login_border_bottom_right.jpg">
						</td>							
						</tr>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>
