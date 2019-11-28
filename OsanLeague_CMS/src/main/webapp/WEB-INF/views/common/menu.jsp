<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.ArrayList"  %>
<%@ page import="com.sweetk.osancms.common.vo.CommonVo"  %>

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
<form id="menuform" name="menuform" method="post" action=""> 
<input type="hidden" id="menu_odr" name="menu_odr"/>
<input type="hidden" id="menu_val" name="menu_val"/>
	<div class="cms_menu_wrap">
		<!-- depth01 -->
		<ul class="depth01_ul">
		<c:set value="<%=session.getAttribute(\"UserAuth\") %>" var="auth" />
		<c:set value="<%=(String)request.getParameter(\"menu_odr\") %>" var="odr" />
		<c:set value="<%=(String)request.getParameter(\"menu_val\") %>" var="val" />
		<c:if test="${auth eq '01'}">
			<li class="depth01_li01">
				<h2 class="depth01_tit <c:if test="${odr eq '1'}">on</c:if>">운영자 관리</h2>
				<!-- depth02 -->
				<ul class="depth02_ul">
					<li class="depth02_li"><h3 class="depth02_tit <c:if test="${val eq 'manager_list'}">on</c:if>"><a href="javascript:;" class="menu__class" data-val="manager_list" data-odr="1">운영자 리스트</a></h3></li>  <!-- operator_list.html -->
					<li class="depth02_li"><h3 class="depth02_tit <c:if test="${val eq 'auth_list'}">on</c:if>"><a href="javascript:;" class="menu__class" data-val="auth_list" data-odr="1">권한 관리</a></h3></li>  <!-- operator_right.html -->
				</ul>
			</li>
		</c:if>
		<c:if test="${auth eq '01' or auth eq '02'}">
			<li class="depth01_li02">
				<h2 class="depth01_tit <c:if test="${odr eq '2'}">on</c:if>">회원 관리</h2>
				<!-- depth02 -->
				<ul class="depth02_ul">
					<li class="depth02_li"><h3 class="depth02_tit <c:if test="${val eq 'member_list'}">on</c:if>"><a href="javascript:;" class="menu__class" data-val="member_list" data-odr="2">회원 리스트</a></h3></li>  <!-- member_list.html -->
				</ul>
			</li>
		</c:if>
			<li class="depth01_li03">
				<h2 class="depth01_tit <c:if test="${odr eq '3'}">on</c:if>">종목별 리그관리</h2>
				<!-- depth02 -->
				<ul class="depth02_ul">
					<li class="depth02_li"><h3 class="depth02_tit <c:if test="${val eq 'league_list'}">on</c:if>"><a href="javascript:;" class="menu__class" data-val="league_list" data-odr="3">시민리그 관리</a></h3></li> <!-- league_view.html -->
					<li class="depth02_li"><h3 class="depth02_tit <c:if test="${val eq 'sports_list'}">on</c:if>"><a href="javascript:;" class="menu__class" data-val="sports_list" data-odr="3">운동종목 관리</a></h3></li> <!-- league_add.html -->
				</ul>
			</li>
		<c:if test="${auth eq '01' or auth eq '02'}">
			<li class="depth01_li04">
				<h2 class="depth01_tit <c:if test="${odr eq '4'}">on</c:if>">게시판 관리</h2>
				<!-- depth02 -->
				<ul class="depth02_ul">
					<li class="depth02_li"><h3 class="depth02_tit <c:if test="${val eq 'board_list'}">on</c:if>"><a href="javascript:;" class="menu__class" data-val="board_list" data-odr="4">공지사항</a></h3></li> <!-- notice.html -->
					<li class="depth02_li"><h3 class="depth02_tit <c:if test="${val eq 'qna_list'}">on</c:if>"><a href="javascript:;" class="menu__class" data-val="qna_list" data-odr="4">질문과 답변</a></h3></li> <!-- qna.html -->
					<li class="depth02_li"><h3 class="depth02_tit <c:if test="${val eq 'gallery_list'}">on</c:if>"><a href="javascript:;" class="menu__class" data-val="gallery_list" data-odr="4">갤러리</a></h3></li> <!-- gallery.html -->
				</ul>
			</li>
			<li class="depth01_li05">
				<h2 class="depth01_tit <c:if test="${odr eq '5'}">on</c:if>">통계 관리</h2>
				<!-- depth02 -->
				<ul class="depth02_ul">
					<li class="depth02_li"><h3 class="depth02_tit <c:if test="${val eq 'league_graph'}">on</c:if>"><a href="javascript:;" class="menu__class" data-val="league_graph" data-odr="5">시민리그 통계</a></h3></li> <!-- league_graph.html -->
					<li class="depth02_li"><h3 class="depth02_tit <c:if test="${val eq 'league_graph_exercise'}">on</c:if>"><a href="javascript:;" class="menu__class" data-val="league_graph_exercise" data-odr="5">운동량 통계</a></h3></li> <!-- league_graph_exercise.html -->
				</ul>
			</li>
		</c:if>
		</ul>
	</div>
</form>
</nav>
<script type="text/javascript">
	$(".menu__class").on("click",function(){
		
		var value = $(this).attr("data-val"); // 버스 번호
    	var odr = $(this).attr("data-odr"); // 버스 위치
    	
    	menuform.menu_odr.value = odr;
    	menuform.menu_val.value = value;
    	
    	var menu_url = value+".do";
    	
    	document.menuform.action = menu_url;
		document.menuform.submit();
	});

</script>