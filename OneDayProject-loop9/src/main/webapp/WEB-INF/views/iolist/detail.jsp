<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<%@ include file="/WEB-INF/views/include/head.jspf"%>
<script src="${rootPath}/static/js/list.js?2024-04-01-025"></script>
<script>
	const rootPath = "${rootPath}"
</script>
<style>

.HM-contain{
	width : 50%;
	margin : 10px auto;
}
.HM-content {
	display: flex;
	border:1px solid black;
	label{
	background-color: black;
	color : white;
	flex:1;
	}
	strong {
	flex:4;
	text-align:right;
	font-size:x-large;
	}
}
</style>
<body>
	<%@ include file="/WEB-INF/views/include/header.jspf"%>
	<main class="w3-container">
		<div class="w3-card-2 w3-light-grey">
			<div class="w3-container w3-center HM-contain">
				<div class="HM-content">
					<label>No</label> <strong>${LIST.io_seq}</strong>
				</div>
				<div class="HM-content">
					<label>거래날짜</label>
					<strong>${LIST.io_date}</strong>
				</div>
				<div class="HM-content">
					<label>거래시간</label>
					<strong>${LIST.io_time}</strong>
				</div>
				<div class="HM-content">
					<label>분류</label>
					<strong>${LIST.io_input}</strong>
				</div>
				<div class="HM-content">
					<label>상품이름</label>
					<strong>${LIST.io_pname}</strong>
				</div>
				<div class="HM-content">
					<label>가격</label>
					<strong>${LIST.io_price}</strong>
				</div>
				<div class="HM-content">
					<label>합계</label>
					<strong>${LIST.io_total}</strong>
				</div>
			</div>
			<div class="w3-section HM-btn_box">
				<button class="HM-delete w3-button w3-red w3-right w3-hover-shadow"
					data-io_seq="${LIST.io_seq}">삭제</button>
				<button
					class="HM-update w3-button w3-green  w3-right  w3-hover-shadow"
					data-io_seq="${LIST.io_seq}">수정</button>
			</div>
		</div>
	</main>
</body>
</html>