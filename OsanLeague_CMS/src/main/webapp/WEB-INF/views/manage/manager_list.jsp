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
				<div class="content operator_list">
					<!-- 컨테이너 탑 -->
					<header class="container_top">
						<h2 class="cont_tit">운영자 리스트</h2>
						<div class="container_top_right clearFix">
							<!-- 검색 -->
							<div class="search fl_l">
								<label>ID&#47;이름 입력</label>
								<input type="text" name="" class="label_hide">
								<button type="button">검색</button>
							</div>
							<!-- 생성 -->
							<div class="operator_add fl_l">
								<button type="button" class="btn_pop">운영자 생성</button>
							</div>
						</div>
					</header>
					<!-- 운영자 리스트 테이블 -->
					<div class="table_wrap">
						<table summary="ID, 이름, 권한, 등록일, 최근접속일이 표시된 운영자 리스트 테이블입니다.">
							<caption class="fs_00">운영자 리스트 테이블</caption>
							<colgroup>
								<col width="21.4%">
								<col width="18.2%">
								<col width="25%">
								<col width="22.7%">
								<col width="12.7%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="col1">ID</th>
									<th scope="col" class="col2">이름</th>
									<th scope="col" class="col3">권한</th>
									<th scope="col" class="col4">등록일</th>
									<th scope="col" class="col5">최근접속일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td scope="row" class="col1">sport00</td>
									<td class="col2">김단장</td>
									<td class="col3">최고관리자</td>
									<td class="col4">19.10.01</td>
									<td class="col5">19.10.01</td>
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
					<!-- 팝업 -->
					<div class="popup">
						<div class="popup_title">운영자 생성</div>
						<div class="popup_inner">
							<div class="row row01">
								<label>ID</label>
								<input type="text" name="">
								<button type="button" class="btn_ok">확인</button>
							</div>
							<div class="row row02 select">
								<label>권한</label>
								<select>
									<option selected>관리자선택</option>
									<option>경기관리자</option>
								</select>
							</div>
							<div class="row row03 btn_row">
								<button type="button" class="btn_close">취소</button>
								<button type="button" class="btn_save">저장</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="darkbg"></div>
	</div>
</body>
</html>