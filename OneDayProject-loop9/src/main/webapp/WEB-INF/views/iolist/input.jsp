<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<script src="${rootPath}/static/js/input.js"></script>

<body>
	<%@ include file="/WEB-INF/views/include/header.jspf"%>
	<fieldset class="w3-container">
		<legend>입력</legend>
		<form method="POST" class="HM-form">
			<div>
				<label>상품명</label><input name="io_pname" value="${IOLIST.io_pname }"/>
			</div>

			<div>
				<label>선택</label>
				<input type="radio" name="io_input" value="1"  >매입
				<input type="radio" name="io_input" value="2" >매출
				
			</div>
			<div>
				<label>단가</label><input name="io_price" value="${IOLIST.io_price }" />
			</div>
			<div>
				<label>수량</label><input type="number" name="io_quan" value="${IOLIST.io_quan }" />
			</div>
			<div>
			<button type="button" class="w3-button HM-btn_add">추가하기</button>
			</div>
			<div>
				<label></label><input name="io_date" hidden="true"  class="HM-date" />
			</div>
			<div>
				<label></label><input name="io_time" hidden="true"  class="HM-time" />
			</div>
		</form>
	</fieldset>

</body>
</html>