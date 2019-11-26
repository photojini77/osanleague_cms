<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page import="java.util.ArrayList"  %>
<%@ page import="com.sweetk.osancms.common.vo.CommonVo"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true" />

<title>오산시민리그 CMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=1260">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="robots" content="index,nofollow">
<link rel="shortcut icon" href="">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/cms.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/cms.js"></script>
<!--[if lt IE 9]>
<script src="../js/html5shiv.js"></script>
<![endif]-->

	<style>
		.league_list {width: 336px;}
		.ecntn {line-height: 1.2em; height: 3.6em; font-size: 14px;}
		.league_list_inner {padding: 10px 30px;}
	</style>

</head>
<body>
<%
ArrayList<CommonVo> list = (ArrayList) session.getAttribute("SportsList");
%>

<c:set value="<%=session.getAttribute(\"UserAuth\") %>" var="auth" />
	<div id="wrap">
		<!-- 사이드 메뉴 -->
		<jsp:include page="../common/menu.jsp" flush="false" />
<!-- 컨테이너 -->
		<section class="container">
			<div class="container_inner">
				<div class="content league_add">
					<!-- 컨테이너 탑 -->
					<header class="container_top">
						<h2 class="cont_tit">시민리그 보기</h2>
						<!-- 시민리그 종목 메뉴 -->
						<div class="league_select_wrap">
							<div class="league_select">
								<div class="league_sct_tit">종목선택</div>
								<c:if test="${auth eq '01' or auth eq '02'}" >
									<ul>
										<% 
										for(int i=0;i<list.size(); i++) {
											String sNm = list.get(i).getSport_name();
											int sNo = list.get(i).getSports_seq();
										%>
										<c:set value="<%=sNo%>" var="s_no" />
										<li><a href="javascript:;" class="league_sport" data-val="${s_no}"><%=sNm%></a></li>
										<%
										}
										%>
									</ul>
								</c:if>
							</div>
						</div>
					</header>
					<!-- 시민 리그 리스트 -->
					<form class="input_area">
						<fieldset>
							<legend class="fs_00">시민리그 만들기</legend>
							<div class="row row01">
								<label>리그명</label>
								<div class="input_wrap">${info.league_name}</div>
							</div>
							<div class="row row02">
								<label>리그일정</label>
								<div class="input_wrap col01">
									${info.start_dt }
								</div>
								<div class="input_wrap col02">
									${info.end_dt }
								</div>
							</div>
							<div class="row row03">
								<label>신청일정</label>
								<div class="input_wrap col01">
									${info.receipt_str_dt }
								</div>
								<div class="input_wrap col02">
									${info.receipt_end_dt }
								</div>
							</div>
							<div class="row row04">
								<label>리그 설명</label>
								<div class="txtarea_wrap">
									${info.cntn }
								</div>
							</div>
							<div class="row row05">
								<label>이미지</label>
								<div class="imgUpload">
									<input class="imgUpload_name" value="" disabled="disabled">
									<label for="imgUpload_file">찾아보기</label> 
								  	<input type="file" id="imgUpload_file" class="imgUpload_hidden">
								</div>
							</div>
							<div class="row row06 clearFix">
								<button type="button" onclick="'" class="btn_ok">수정</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</section>
	</div>
	
	<form id="mainform" name="mainform" method="post" action=""> 
		<input type="hidden" id="menu_odr" name="menu_odr"/>
		<input type="hidden" id="menu_val" name="menu_val"/>
		<input type="hidden" id="league_seq" name="league_seq" value="${l_seq}"/>
		<input type="hidden" id="sport_seq" name="sport_seq"/>
	</form>
	<script type="text/javascript">
	$(".league_sport").on("click",function(){
		
		var seq = $(this).attr("data-val"); // 버스 번호
    	$('#sport_seq').val(seq);
		
		mainform.menu_odr.value = "3";
		mainform.menu_val.value = "league_list";
    	
    	document.mainform.action = "league_manage_team.do";
		document.mainform.submit();
	});

</script>
	
</body>
</html>