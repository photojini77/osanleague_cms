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
		.league_add .btn_team {padding: 24px;}
		.sport_manage_cls_none {display:none}
		.table_wrap table th, .table_wrap table td {text-align: center;}
	</style>
	
<script type="text/javascript">

	$(document).ready(function(){
		$(".sport_manage_cls").removeClass("sport_manage_cls_none");
		
		var sport_prt = "<c:out value="${sport_prt}"/>";
		var s_prt_nm = "팀 구성";
		if(sport_prt == "2") {
			s_prt_nm = "참가인원 관리";
		} else if(sport_prt == "3") {
			s_prt_nm = "대진 관리";
		} else if(sport_prt == "4") {
			s_prt_nm = "경기 관리";
		} else {
			sport_prt = "1";
		}
		$("#sport_mng_nm").html(s_prt_nm);
		$("#sport_manage_cls"+sport_prt).addClass("sport_manage_cls_none");

		var sSeq = "<c:out value="${s_seq}"/>";
		
		$(".sport_choice").removeClass("sport_manage_cls_none");
		$("#sport_choice"+sSeq).addClass("sport_manage_cls_none");
	});

</script>

</head>
<body>
<input type="hidden" id="sport_seq" name="sport_seq" value="${s_seq}" />
<input type="hidden" id="league_seq" name="league_seq" value="${l_seq}" />
<%
ArrayList<CommonVo> list = (ArrayList) session.getAttribute("SportsList");
%>

<c:set value="<%=session.getAttribute(\"UserAuth\") %>" var="auth" />
	<div id="wrap">
		<!-- 사이드 메뉴 -->
		<jsp:include page="../common/menu.jsp" flush="false" />
		
		<section class="container">
			<div class="container_inner">
				<div class="content league_add league_add2">
					<!-- 컨테이너 탑 -->
					<header class="container_top">
						<h2 class="cont_tit">종목별 리그관리</h2>
						<!-- 시민리그 종목 메뉴 -->
						<div class="league_select_wrap">
							<div class="league_select">
								<div class="league_sct_tit">
									<c:set value="${s_seq}" var="sSeq" />
									<% 
									for(int i=0;i<list.size(); i++) {
										String sName = list.get(i).getSport_name();
										int sSeq = list.get(i).getSports_seq();
									%>
									<c:set value="<%=sSeq%>" var="s_seq" />
									<c:if test="${sSeq eq s_seq}"><%=sName%></c:if>
									<%} %>
								</div>
								<c:if test="${auth eq '01' or auth eq '02'}" >
									<ul id="sport_choice_ul">
										<% 
										for(int i=0;i<list.size(); i++) {
											String sNm = list.get(i).getSport_name();
											int sNo = list.get(i).getSports_seq();
										%>
										<c:set value="<%=sNo%>" var="s_no" />
										<li class="sport_choice" id="sport_choice${s_no}" data-val="${s_no}"><a href="javascript:;"><%=sNm%></a></li>
										<%
										}
										%>
									</ul>
								</c:if>
							</div>
						</div>
						<!-- 시민리그 종목 메뉴 -->
						<div class="league_select_wrap league_select_wrap2">
							<div class="league_select">
								<div class="league_sct_tit" id="sport_mng_nm">팀 구성</div>
								<ul id="sport_manage_ul">
									<li class="sport_manage_cls" data-val="1" id="sport_manage_cls1"><a href="javascript:;">팀 구성</a></li>
									<li class="sport_manage_cls" data-val="2" id="sport_manage_cls2"><a href="javascript:;">참가인원 관리</a></li>
									<li class="sport_manage_cls" data-val="3" id="sport_manage_cls3"><a href="javascript:;">대진 관리</a></li>
									<li class="sport_manage_cls" data-val="4" id="sport_manage_cls4"><a href="javascript:;">경기 관리</a></li>
								</ul>
							</div>
						</div>
					</header>
					<!-- 팀 구성 테이블 -->
					<div id="sport_inner_div" style="overflow-y: scroll;height: 781px;">
						<div class="table_wrap">
							<table summary="No., 지역, 팀명, 리더, 연락처, 팀원 수가 표시된 팀 구성 테이블입니다.">
								<caption class="fs_00">팀 구성 테이블</caption>
								<colgroup>
									<col width="10%" />
									<col width="30%" />
									<col width="20%" />
									<col width="25%" />
									<col width="15%" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="col1">No.</th>
										<th scope="col" class="col2">팀명</th>
										<th scope="col" class="col3">리더</th>
										<th scope="col" class="col4">연락처</th>
										<th scope="col" class="col6">팀원수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="c" varStatus="status">
										<tr>
											<td scope="row" class="col1">${c.row_num}</td>
											<td class="col2">${c.team_name}</td>
											<td class="col3">${c.reader_name }</td>
											<td class="col4">${c.reader_phone }</td>
											<td class="col6">
												<button type="button" class="btn_pop">${c.team_member_cnt}명</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="btn_team clearFix">
								<button type="button" onclick="location.href='league_add2.html'" class="btn_ok">팀 만들기</button>
							</div>
						</div>
						<!-- 팝업 -->
						<div class="popup">
							<div class="popup_title">팀원</div>
							<div class="popup_inner">
								<!-- 팀 구성 테이블 -->
								<div class="table_wrap">
									<table summary="No., 등록일, 제목, 조회수가 표시된 공지사항 테이블입니다.">
										<caption class="fs_00">공지사항 테이블</caption>
										<colgroup>
											<col width="98px" />
											<col width="92px" />
											<col width="108px" />
											<col width="204px" />
										</colgroup>
										<thead>
											<tr>
												<th scope="col" class="col1">No.</th>
												<th scope="col" class="col2">포지션</th>
												<th scope="col" class="col3">성명</th>
												<th scope="col" class="col4">연락처</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td scope="row" class="col1">1</td>
												<td class="col2">PG</td>
												<td class="col3">안길동</td>
												<td class="col4">010-1234-1234</td>
											</tr>
											<tr>
												<td scope="row" class="col1">1</td>
												<td class="col2">PG</td>
												<td class="col3">안길동</td>
												<td class="col4">010-1234-1234</td>
											</tr>
											<tr>
												<td scope="row" class="col1">1</td>
												<td class="col2">PG</td>
												<td class="col3">안길동</td>
												<td class="col4">010-1234-1234</td>
											</tr>
											<tr>
												<td scope="row" class="col1">1</td>
												<td class="col2">PG</td>
												<td class="col3">안길동</td>
												<td class="col4">010-1234-1234</td>
											</tr>
											<tr>
												<td scope="row" class="col1">1</td>
												<td class="col2">PG</td>
												<td class="col3">안길동</td>
												<td class="col4">010-1234-1234</td>
											</tr>
											<tr>
												<td scope="row" class="col1">1</td>
												<td class="col2">PG</td>
												<td class="col3">안길동</td>
												<td class="col4">010-1234-1234</td>
											</tr>
										</tbody>
									</table>
									<div class="btn_row">
										<button type="button" class="btn_ok">저장</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- inner end -->
					
				</div>
			</div>
		</section>
		<div class="darkbg"></div>
	</div>
	
	
<script type="text/javascript">
	
	$(".sport_choice").on("click",function(){
		
		var seq = $(this).attr("data-val"); // 
		var s_prt_nm = "";
		
		$(".sport_manage_cls").removeClass("sport_manage_cls_none");
		if(seq == "1") {
			s_prt_nm = "팀 구성";
		} else if(seq == "2") {
			s_prt_nm = "참가인원 관리";
		} else if(seq == "3") {
			s_prt_nm = "대진 관리";
		} else if(seq == "4") {
			s_prt_nm = "경기 관리";
		} else {
			sport_prt = "1";
		}
		$("#sport_mng_nm").html(s_prt_nm);
		$("#sport_mng_nm").next('.league_select ul').slideToggle(200);
		$("#sport_manage_cls"+seq).addClass("sport_manage_cls_none");
		
		$("#sport_manage_ul").slideUp(200);
	});

	$(".sport_manage_cls").on("click",function(){
		
		var seq = $(this).attr("data-val"); // 
		var s_prt_nm = "";
		$(".sport_manage_cls").removeClass("sport_manage_cls_none");
		
		$.ajax({
			url: "sport_manage_change.ajax",
			method:"POST",
			data : {"league_seq" : $("#league_seq").val(), "sport_seq" : $("#sport_seq").val(), "seq" : seq} ,
			cache: true
			}).done(function(result){
				$("div#sport_inner_div").html(result);
		});
		
		if(seq == "1") {
			s_prt_nm = "팀 구성";
		} else if(seq == "2") {
			s_prt_nm = "참가인원 관리";
		} else if(seq == "3") {
			s_prt_nm = "대진 관리";
		} else if(seq == "4") {
			s_prt_nm = "경기 관리";
		} else {
			sport_prt = "1";
		}
		$("#sport_mng_nm").html(s_prt_nm);
		$("#sport_mng_nm").next('.league_select ul').slideToggle(200);
		$("#sport_manage_cls"+seq).addClass("sport_manage_cls_none");
		
		$("#sport_choice_ul").slideUp(200);
	});

</script>
	
</body>
</html>