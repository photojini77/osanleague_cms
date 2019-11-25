<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.ArrayList"  %>
<%@ page import="com.sweetk.osancms.common.vo.CommonVo"  %>
	
<nav class="nav">
<%
ArrayList<CommonVo> list = (ArrayList) session.getAttribute("SportsList");
for(int i=0;i<list.size(); i++) {
    System.out.println(list.get(i).getSports_seq() + "<br>");
    System.out.println(list.get(i).getSport_name() + "<br>");
}
%>
	
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
		<c:set value="<%=session.getAttribute(\"UserAuth\") %>" var="auth" />
		<c:if test="${auth eq '01'}">
			<li class="depth01_li01">
				<h2 class="depth01_tit">운영자 관리</h2>
				<!-- depth02 -->
				<ul class="depth02_ul">
					<li class="depth02_li"><h3 class="depth02_tit"><a href="javascript:;" class="menu__class" data-val="manager_list">운영자 리스트</a></h3></li>  <!-- operator_list.html -->
					<li class="depth02_li"><h3 class="depth02_tit"><a href="javascript:;" class="menu__class" data-val="auth_list">권한 관리</a></h3></li>  <!-- operator_right.html -->
				</ul>
			</li>
		</c:if>
		<c:if test="${auth eq '01' or auth eq '02'}">
			<li class="depth01_li02">
				<h2 class="depth01_tit">회원 관리</h2>
				<!-- depth02 -->
				<ul class="depth02_ul">
					<li class="depth02_li"><h3 class="depth02_tit"><a href="javascript:;" class="menu__class" data-val="member_list">회원 리스트</a></h3></li>  <!-- member_list.html -->
				</ul>
			</li>
		</c:if>
			<li class="depth01_li03">
				<h2 class="depth01_tit">종목별 리그관리</h2>
				<!-- depth02 -->
				<ul class="depth02_ul">
					<li class="depth02_li"><h3 class="depth02_tit"><a href="javascript:;" class="menu__class" data-val="league_list">시민리그 관리</a></h3></li> <!-- league_view.html -->
					<li class="depth02_li"><h3 class="depth02_tit"><a href="javascript:;" class="menu__class" data-val="sports_list">운동종목 관리</a></h3></li> <!-- league_add.html -->
				</ul>
			</li>
		<c:if test="${auth eq '01' or auth eq '02'}">
			<li class="depth01_li04">
				<h2 class="depth01_tit on">게시판 관리</h2>
				<!-- depth02 -->
				<ul class="depth02_ul">
					<li class="depth02_li"><h3 class="depth02_tit on"><a href="javascript:;" class="menu__class" data-val="notice">공지사항</a></h3></li> <!-- notice.html -->
					<li class="depth02_li"><h3 class="depth02_tit"><a href="javascript:;" class="menu__class" data-val="qna">질문과 답변</a></h3></li> <!-- qna.html -->
					<li class="depth02_li"><h3 class="depth02_tit"><a href="javascript:;" class="menu__class" data-val="gallery">갤러리</a></h3></li> <!-- gallery.html -->
				</ul>
			</li>
			<li class="depth01_li05">
				<h2 class="depth01_tit">통계 관리</h2>
				<!-- depth02 -->
				<ul class="depth02_ul">
					<li class="depth02_li"><h3 class="depth02_tit"><a href="javascript:;" class="menu__class" data-val="league_graph">시민리그 통계</a></h3></li> <!-- league_graph.html -->
					<li class="depth02_li"><h3 class="depth02_tit"><a href="javascript:;" class="menu__class" data-val="league_graph_exercise">운동량 통계</a></h3></li> <!-- league_graph_exercise.html -->
				</ul>
			</li>
		</c:if>
		</ul>
	</div>
</nav>