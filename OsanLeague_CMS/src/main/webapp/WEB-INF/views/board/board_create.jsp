<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true" />
<title>오산시민리그-농구리그</title>
<meta name="viewport" content="width=1260" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="robots" content="index,nofollow" />
<link rel="shortcut icon" href="" />
<link rel="stylesheet" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/sub.css" />
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <!--[if lt IE 9]>
<script src="../js/html5shiv.js"></script>
<![endif]-->
<!--[if lte IE 9]>
<div class="ie_support_box">
	<div class="ie_spt_inner">
		<p class="add_txt">본 사이트는 <em>Chrome, Firefox 및 IE 11 이상</em>의 최신 브라우저에 최적화되어 있습니다.<br /><em>HTML5, CSS3 기반</em>으로 제작되어 IE 9 버전 이하에서는 일부 기능이 정상적으로 작동하지 않습니다.<br />인터넷 익스플로러 업데이트, 크롬 또는 파이어폭스 브라우저를 설치하세요.</p>
		<ul class="ie_spt_list">
			<li class="chrome"><a href="https://www.google.com/chrome/browser/desktop/index.html" target="_blank">크롬 설치하기</a></li>
			<li class="firefox"><a href="https://www.mozilla.org/ko/firefox/new/" target="_blank">파이어폭스 설치하기</a></li>
			<li class="ie"><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank">인터넷 익스플로러 업데이트하기</a></li>
		</ul>
	</div>
</div>
<![endif]-->
</head>
<body>
	<div id="wrap">
		<!-- 사이드 메뉴 -->
		<nav class="nav">
			<h1 class="logo"><a href="" class="fs_0">오산시민리그</a></h1>
			<!-- 관리자 메뉴 -->
			<div class="admin_menu_wrap">
				<div class="admin_view">
					<figure class="admin_img"><img src="http://placehold.it/64x64"></figure>
					<h2>관리자</h2>
				</div>
				<i class="icon"></i>
			</div>
			<!-- CMS 메뉴 -->
			<div class="cms_menu_wrap">
				<!-- depth01 -->
				<ul class="depth01_ul">
					<li class="depth01_li01">
						<h2 class="depth01_tit">운영자 관리</h2>
						<!-- depth02 -->
						<ul class="depth02_ul">
							<li class="depth02_li"><h3 class="depth02_tit"><a href="operator_list.html">운영자 리스트</a></h3></li>
							<li class="depth02_li"><h3 class="depth02_tit"><a href="operator_right.html">권한 관리</a></h3></li>
						</ul>
					</li>
					<li class="depth01_li02">
						<h2 class="depth01_tit">회원 관리</h2>
						<!-- depth02 -->
						<ul class="depth02_ul">
							<li class="depth02_li"><h3 class="depth02_tit"><a href="member_list.html">회원 리스트</a></h3></li>
						</ul>
					</li>
					<li class="depth01_li03">
						<h2 class="depth01_tit">종목별 리그관리</h2>
						<!-- depth02 -->
						<ul class="depth02_ul">
							<li class="depth02_li"><h3 class="depth02_tit"><a href="league_view.html">시민리그 보기</a></h3></li>
							<li class="depth02_li"><h3 class="depth02_tit"><a href="league_add.html">시민리그 만들기</a></h3></li>
						</ul>
					</li>
					<li class="depth01_li04">
						<h2 class="depth01_tit on">게시판 관리</h2>
						<!-- depth02 -->
						<ul class="depth02_ul">
							<li class="depth02_li"><h3 class="depth02_tit on"><a href="notice.html">공지사항</a></h3></li>
							<li class="depth02_li"><h3 class="depth02_tit"><a href="qna.html">질문과 답변</a></h3></li>
							<li class="depth02_li"><h3 class="depth02_tit"><a href="gallery.html">갤러리</a></h3></li>
						</ul>
					</li>
					<li class="depth01_li05">
						<h2 class="depth01_tit">통계 관리</h2>
						<!-- depth02 -->
						<ul class="depth02_ul">
							<li class="depth02_li"><h3 class="depth02_tit"><a href="league_graph.html">시민리그 통계</a></h3></li>
							<li class="depth02_li"><h3 class="depth02_tit"><a href="league_graph_exercise.html">운동량 통계</a></h3></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		<!-- 컨테이너 -->
		<section class="container">
			<div class="container_inner">
				<div class="content notice_add">
					<!-- 컨테이너 탑 -->
					<header class="container_top">
						<h2 class="cont_tit">공지사항</h2>
					</header>
					<div class="board_write_wrap">
						<!-- 제목 -->
						<div class="title_wrap cleaFix">
							<!-- 분류 -->
							<div class="select fl_l">
								<label class="fs_00">검색 분류 입니다.</label>
								<select>
									<option selected="">전체</option>
									<option>필독</option>
								</select>
							</div>
							<!-- 검색 -->
							<div class="title fl_l">
								<label>제목</label>
								<input type="text" name="" class="label_hide">
							</div>
						</div>
						<!-- 작성 -->
						<textarea></textarea>
						<div class="btn_row">
							<button type="button" class="btn_close">취소</button>
							<button type="button" class="btn_save">등록</button>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>