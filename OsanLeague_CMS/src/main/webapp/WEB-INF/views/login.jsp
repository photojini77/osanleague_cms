<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true" />

<title>오산시민리그 CMS LOGIN</title>
<meta charset="utf-8">
<meta name="viewport" content="width=1260">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="robots" content="index,nofollow">
<link rel="shortcut icon" href="">
<link rel="stylesheet" type="text/css" href="./css/common.css" />
<link rel="stylesheet" type="text/css" href="./css/cms.css" />
<script type="text/javascript" src="./js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>

<script type="text/javascript" src="./js/cms.js"></script>
<!--[if lt IE 9]>
<script src="../js/html5shiv.js"></script>
<![endif]-->

<style type="text/css">
	body {background-color:#e4ebf7;}
	.logo{margin: auto;width:500px;height:300px}
	.logo a{display:block;position:relative;width:100%;height:100%;background:url('img/CI3.png') no-repeat 50% 50%}
	.login_input{width:300px;height:100px;margin: auto;}
	.id_input {border: 2px solid #e1e7f0;padding: 0 30px; outline: none;  -webkit-border-radius: 30px;  -moz-border-radius: 30px;   border-radius: 30px; }
	input[type=password],input[type=text] {width: 100%;height:50%;border: 2px solid #515974;background:#ffffff;color:#353535;}
	input[type=button] {width: 100%;height:50%;border: 2px solid #515974;background:#515974;cursor:pointer;color:#ffffff;}
	input[type=button]:hover {background: linear-gradient(135deg, #6b7084, #2f3752);transition: box-shadow .5s ease, transform .2s ease; }
</style>

</head>
<body>
<form id="mainform" name="mainform" method="post" action=""> 
<input type="hidden" id="menu_odr" name="menu_odr"/>
<input type="hidden" id="menu_val" name="menu_val"/>
</form>
	<div id="wrap">
		<!-- 컨테이너 -->
		<h1 class="logo"><a href="" class="fs_0">오산시민리그</a></h1>
		
		<div class="login_input"><input type="text" id="id" name="id" class="id_input" placeholder="아이디"/></div>
		<div class="login_input"><input type="password" id="password" name="password" class="id_input" placeholder="비밀번호"/></div>
		<div class="login_input"><input type="button" class="id_input" value="로그인" id="login_check"/></div>
	</div>
	
	<script type="text/javascript">
		$("#login_check").on("click",function(){	
			
			$.ajax({	
				data:{"id" : $('#id').val(), "password" : $('#password').val()},
				type:"POST",
				url:"login_check.ajax",
			    dataType :"text",
			    success : function(result){
			    	if(result != "0") {
						var menu_url = "";
						alert("로그인되었습니다.");
						if(result == "1") {
							$('#menu_odr').val("1");
							$('#menu_val').val("manager_list");
						} else if(result == "2") {
							$('#menu_odr').val("2");
							$('#menu_val').val("member_list");
						} else {
							$('#menu_odr').val("3");
							$('#menu_val').val("league_list");
						}
						menu_url = $('#menu_val').val()+".do";
						document.mainform.action = menu_url;
						document.mainform.submit();
					} else {
						alert("아이디, 패스워드를 확인해주세요");
					}
			    },
			    error:function(request,status,error){
			        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }
				
			});
		});
	
	</script>
</body>
</html>