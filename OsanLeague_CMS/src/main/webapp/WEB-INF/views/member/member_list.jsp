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
</head>
<body>
<div id="wrap">
		<!-- 사이드 메뉴 -->
		<jsp:include page="../common/menu.jsp" flush="false" />
		<!-- 컨테이너 -->
		<section class="container">
			<div class="container_inner">
				<div class="content member_list">
					<!-- 컨테이너 탑 -->
					<header class="container_top">
						<h2 class="cont_tit">회원 리스트</h2>
						<div class="container_top_right clearFix">
							<!-- 엑셀 다운로드 -->
							<div class="exel_down fl_l">
								<button type="button">엑셀 다운로드</button>
							</div>
							<!-- 검색 -->
							<div class="search fl_l">
								<label>ID&#47;이름&#47;연락처 입력</label>
								<input type="text" name="" class="label_hide">
								<button type="button">검색</button>
							</div>
						</div>
					</header>
					<!-- 회원 리스트 테이블 -->
					<div class="table_wrap">
						<table summary="ID 및 이름, 연락처, 성별, 출생연도, 행정동, 가입일이 표시된 회원 리스트 테이블입니다.">
							<caption class="fs_00">회원 리스트 테이블</caption>
							<colgroup>
								<col width="26.8%">
								<col width="20.8%">
								<col width="10%">
								<col width="14%">
								<col width="13.5%">
								<col width="14.9%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="col1">ID 및 이름</th>
									<th scope="col" class="col2">연락처</th>
									<th scope="col" class="col3">성별</th>
									<th scope="col" class="col4">출생연도</th>
									<th scope="col" class="col5">행정동</th>
									<th scope="col" class="col6">가입일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td scope="row" class="col1">
										<div class="member_info_wrap clearFix">
											<figure class="member_img fl_l"><img src="http://placehold.it/64x64"></figure>
											<div class="member_info fl_l">
												<p class="member_id">sport00</p>
												<p class="member_name">김단장</p>
											</div>
										</div>
									</td>
									<td class="col2">010-1234-&#42;&#42;&#42;&#42;</td>
									<td class="col3">남</td>
									<td class="col4">1965년</td>
									<td class="col5">지곶동</td>
									<td class="col6">19.10.01</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- 페이징 -->
					<div class="paging">
						<div class="page_number">
							<span>1</span>
							-
							<span>7</span>
							of
							<span>35</span>
						</div>
						<div class="page_btns">
							<button type="button" class="prev">이전</button>
							<button type="button" class="next">다음</button>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>