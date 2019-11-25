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
				<div class="content league_view">
					<!-- 컨테이너 탑 -->
					<header class="container_top">
						<h2 class="cont_tit">시민리그 보기</h2>
						<!-- 시민리그 종목 메뉴 -->
						<div class="league_select_wrap">
							<div class="league_select">
								<div class="league_sct_tit">종목선택</div>
								<ul>
									<li><a href="">농구리그</a></li>
									<li><a href="">배드민턴리그</a></li>
									<li><a href="">족구리그</a></li>
									<li><a href="">테니스리그</a></li>
									<li><a href="">당구리그</a></li>
									<li><a href="">탁구리그</a></li>
								</ul>
							</div>
						</div>
						<div class="container_top_right clearFix">
							<!-- 생성 -->
							<div class="league_add_btn fl_l">
								<button type="button" onclick="location.href='league_add.html'">리그 만들기</button>
							</div>
						</div>
					</header>
					<!-- 시민 리그 리스트 -->
					<ul class="league_list_wrap">
						<!-- box -->
						<li class="league_list">
							<div class="league_list_inner">
								<p class="league_list_tit type1">농구</p>
								<p class="league_list_stit ellipsis">2019년 시민리그</p>
								<ul class="league_term">
									<li>
										<span>경기</span>19.11.01~19.12.31
									</li>
									<li>
										<span>접수</span>19.11.01~19.12.31
									</li>
								</ul>
							</div>
						</li>
						<!-- box -->
						<li class="league_list">
							<div class="league_list_inner">
								<p class="league_list_tit type2">배드민턴</p>
								<p class="league_list_stit ellipsis">2019년 시민리그</p>
								<ul class="league_term">
									<li>
										<span>경기</span>19.11.01~19.12.31
									</li>
									<li>
										<span>접수</span>19.11.01~19.12.31
									</li>
								</ul>
							</div>
						</li>
						<!-- box -->
						<li class="league_list">
							<div class="league_list_inner">
								<p class="league_list_tit type3">족구</p>
								<p class="league_list_stit ellipsis">2019년 시민리그</p>
								<ul class="league_term">
									<li>
										<span>경기</span>19.11.01~19.12.31
									</li>
									<li>
										<span>접수</span>19.11.01~19.12.31
									</li>
								</ul>
							</div>
						</li>
						<!-- box -->
						<li class="league_list">
							<div class="league_list_inner">
								<p class="league_list_tit type4">테니스</p>
								<p class="league_list_stit ellipsis">2019년 시민리그</p>
								<ul class="league_term">
									<li>
										<span>경기</span>19.11.01~19.12.31
									</li>
									<li>
										<span>접수</span>19.11.01~19.12.31
									</li>
								</ul>
							</div>
						</li>
						<!-- box -->
						<li class="league_list">
							<div class="league_list_inner">
								<p class="league_list_tit type5">당구</p>
								<p class="league_list_stit ellipsis">2019년 시민리그</p>
								<ul class="league_term">
									<li>
										<span>경기</span>19.11.01~19.12.31
									</li>
									<li>
										<span>접수</span>19.11.01~19.12.31
									</li>
								</ul>
							</div>
						</li>
						<!-- box -->
						<li class="league_list">
							<div class="league_list_inner">
								<p class="league_list_tit type6">탁구</p>
								<p class="league_list_stit ellipsis">2019년 시민리그</p>
								<ul class="league_term">
									<li>
										<span>경기</span>19.11.01~19.12.31
									</li>
									<li>
										<span>접수</span>19.11.01~19.12.31
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</section>
	</div>
</body>
</html>