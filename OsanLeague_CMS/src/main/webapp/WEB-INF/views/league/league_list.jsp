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
				<div class="content league_view">
					<!-- 컨테이너 탑 -->
					<header class="container_top">
						<h2 class="cont_tit">시민리그 보기</h2>
						<!-- 시민리그 종목 메뉴 
						<div class="league_select_wrap">
							<div class="league_select">
								<div class="league_sct_tit">종목선택</div>
								<ul>
									<%-- <% 
									for(int i=0;i<list.size(); i++) {
										String sNm = list.get(i).getSport_name();
										int sNo = list.get(i).getSports_seq();
									%> --%>
									<%-- <c:set value="<%=sNo%>" var="s_no" /> --%>
									<c:choose>
										<c:when test="${auth ne '01' and auth ne '02'}" >
											<c:if test="${auth eq s_no}">
												<%-- <li><a href="javascript:;" data-val="${s_no}"><%=sNm%></a></li> --%>
											</c:if>
										</c:when>
										<c:otherwise>
											<%-- <li><a href="javascript:;" data-val="${s_no}"><%=sNm%></a></li> --%>
										</c:otherwise>
									</c:choose>
									<%-- <%
									}
									%> --%>
								</ul>
							</div>
						</div>
						-->
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
						<c:forEach items="${list}" var="c" varStatus="status">
								<li class="league_list" data-val="${c.league_seq}" style="cursor:pointer">
									<div class="league_list_inner">
										<p class="league_list_tit type1"></p>
										<p class="league_list_stit ellipsis">${c.league_name}</p>
										<p class="league_list_stit ecntn">${fn:substring(c.cntn,0,78)}<c:if test="${fn:length(c.cntn) gt 78}"> ...</c:if> </p>
										<ul class="league_term">
											<li>
												<span>경기</span>${c.start_dt }~${c.end_dt } 
											</li>
											<li>
												<span>접수</span>${c.receipt_str_dt}~${c.receipt_end_dt}
											</li>
										</ul>
									</div>
								</li>
						</c:forEach>
						
					</ul>
				</div>
			</div>
		</section>
	</div>
	
	<form id="mainform" name="mainform" method="post" action=""> 
		<input type="hidden" id="menu_odr" name="menu_odr"/>
		<input type="hidden" id="menu_val" name="menu_val"/>
		<input type="hidden" id="league_seq" name="league_seq"/>
	</form>
	<script type="text/javascript">
	$(".league_list").on("click",function(){
		
		var seq = $(this).attr("data-val"); // 버스 번호
    	$('#league_seq').val(seq);
		var ath = <%=session.getAttribute("UserAuth") %>;
		var url = "league_manage_team.do";
    	
		mainform.menu_odr.value = "3";
		mainform.menu_val.value = "league_list";
    	
    	if(ath == "01" || ath == "02") {
    		url = "league_info.do";
    	}
    	
    	document.mainform.action = url;
		document.mainform.submit();
	});

</script>
	
</body>
</html>