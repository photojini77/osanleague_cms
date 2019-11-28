<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>

</style>

<div class="league_add3">
	<div class="table_wrap_filter">
		<ul>
			<li>
				<!-- 분류 -->
				<div class="select">
					<label class="fs_00">포지션 선택 입니다.</label>
					<select>
						<option selected="">포지션 선택</option>
						<option>전체</option>
					</select>
				</div>
			</li>
			<li>
				<!-- 분류 -->
				<div class="select">
					<label class="fs_00">팀 선택 입니다.</label>
					<select>
						<option selected="">팀 선택</option>
						<option>전체</option>
					</select>
				</div>
			</li>
			<li>
				<!-- 검색 -->
				<div class="search">
					<label>이름 입력</label>
					<input type="text" name="" class="label_hide">
					<button type="button">검색</button>
				</div>
			</li>
		</ul>
	</div>
	<!-- 참가 인원 관리 테이블 -->
	<div class="table_wrap">
		<table summary="No., 이름, 포지션, 팀, 등록일자, 연락처가 표시된 참가 인원 관리 테이블입니다.">
			<caption class="fs_00">참가인원 관리 테이블</caption>
			<colgroup>
				<col width="5%">
				<col width="20%">
				<col width="15%">
				<col width="20%">
				<col width="15%">
				<col width="25%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col" class="col1">No.</th>
					<th scope="col" class="col2">이름</th>
					<th scope="col" class="col3">포지션</th>
					<th scope="col" class="col4">팀</th>
					<th scope="col" class="col5">등록일자</th>
					<th scope="col" class="col6">연락처</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="c" varStatus="status">
					<tr>
						<td scope="row" class="col1">${c.row_num}</td>
						<td class="col2">
							<button type="button" class="btn_pop">${c.name}</button>
						</td>
						<td class="col3">${c.grade }</td>
						<td class="col4">${c.team_name }</td>
						<td class="col5">${c.reg_dt}</td>
						<td class="col6">${c.phone }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
				<!-- 팝업 -->
		<div class="popup">
			<div class="popup_title">참가인원 관리</div>
			<div class="popup_inner" style="width: 423px;padding-top: 93px;">
				<ul>
					<li class="row1_1">
						<label>성명</label>
						<input type="" name="" disabled="disabled" value="홍길동">
					</li>
					<li class="row1_2">
						<label>등록일자</label>
						<input type="" name="" disabled="disabled" value="19.10.01">
					</li>
					<li class="row2">
						<label>연락처</label>
						<input type="" name="" disabled="disabled" value="010-1234-1234">
					</li>
					<li class="row3">
						<label>팀</label>
						<!-- 분류 -->
						<div class="select">
							<select>
								<option selected="">선택</option>
								<option>전체</option>
							</select>
						</div>
					</li>
					<li class="row4">
						<label>포지션</label>
						<!-- 분류 -->
						<div class="select">
							<select>
								<option selected="">선택</option>
								<option>전체</option>
							</select>
						</div>
					</li>
				</ul>
				<div class="btn_row">
					<button type="button" class="btn_close">취소</button>
					<button type="button" class="btn_save">저장</button>
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