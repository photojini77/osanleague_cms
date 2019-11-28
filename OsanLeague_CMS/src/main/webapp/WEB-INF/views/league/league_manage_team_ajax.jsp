<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>

</style>

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
	
<script type="text/javascript">
	 $(function () {
        $(".btn_pop").on("click", openPopUp);
        $(".btn_close, .darkbg").on("click", closePopUp);
    });
	 
	 function openPopUp() {
	        $(".darkbg, .popup").fadeIn(200);
	    }

	    function closePopUp() {
	        $(".darkbg, .popup").fadeOut(200);
	    }
</script>