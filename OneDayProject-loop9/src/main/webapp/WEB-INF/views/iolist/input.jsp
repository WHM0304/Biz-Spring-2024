<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<script src="${rootPath}/static/js/input.js"></script>
<style>
.HM-form {
	width: 70%;
	div
	{
	margin-top
	:
	5px;
}

label {
	display: inline-block;
	width: 20%;
	background-color: black;
	color: white;
}

.HM-input_1, .HM-input_2 {
	
}

.HM-radio {
	display: flex;
}
}
</style>
<body>
	<%@ include file="/WEB-INF/views/include/header.jspf"%>

	<form method="POST"
		class="HM-form w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin"
		data-input="${IOLIST.io_input} ">
		<div>
			<label>상품명</label><input name="io_pname" value="${IOLIST.io_pname}"
				class="w3-input w3-right" />
		</div>
		<label>선택</label>
		<div class="HM-radio">

			<input type="radio" name="io_input" value="1"
				class="HM-input_1 w3-radio ">매입 <input type="radio"
				name="io_input" value="2" class="HM-input_2 w3-radio ">매출

		</div>
		<div>
			<label>단가</label><input name="io_price" value="${IOLIST.io_price }"
				class="w3-input" />
		</div>
		<div>
			<label>수량</label><input type="number" name="io_quan"
				value="${IOLIST.io_quan }" class="w3-input" />
		</div>
		<div>
			<button type="button" class="w3-button HM-btn_add w3-right w3-yellow">추가하기</button>
		</div>
		<div>
			<label></label><input name="io_date" hidden="true" class="HM-date" />
		</div>
		<div>
			<label></label><input name="io_time" hidden="true" class="HM-time" />
		</div>
	</form>

</body>
</html>