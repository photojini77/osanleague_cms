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
				<div class="content notice">
					<!-- 컨테이너 탑 -->
					<header class="container_top">
						<h2 class="cont_tit">공지사항</h2>
						<div class="container_top_right clearFix">
							<!-- 분류 -->
							<div class="select fl_l">
								<label class="fs_00">검색 분류 입니다.</label>
								<select>
									<option selected="">전체</option>
									<option>필독</option>
								</select>
							</div>
							<!-- 검색 -->
							<div class="search fl_l">
								<label>내용&#47;키워드 입력</label>
								<input type="text" name="" class="label_hide">
								<button type="button">검색</button>
							</div>
							<!-- 생성 -->
							<div class="register fl_l">
								<button type="button" onclick="location.href='notice_add.html'">등록</button>
							</div>
						</div>
					</header>
					<!-- 공지사항 테이블 -->
					<div class="table_wrap">
						<table summary="No., 등록일, 제목, 조회수가 표시된 공지사항 테이블입니다.">
							<caption class="fs_00">공지사항 테이블</caption>
							<colgroup>
								<col width="14%">
								<col width="19%">
								<col width="56%">
								<col width="11%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="col1">No.</th>
									<th scope="col" class="col2">등록일</th>
									<th scope="col" class="col3">제목</th>
									<th scope="col" class="col4">조회수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td scope="row" class="col1">1</td>
									<td class="col2">19.08.11</td>
									<td class="col3">농구시민리그 조직위원회 소개</td>
									<td class="col4">0</td>
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