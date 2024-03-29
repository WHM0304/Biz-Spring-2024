<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/includes/head.jspf" %>
<script src="${rootPath}/static/js/product.js?017"></script>
<script>
	const rootPath = "${rootPath}"
</script>
<body>
<%@ include file="/WEB-INF/views/includes/header.jspf" %>
	<main class="w3-container">
		<div class="w3-card-4">
			<div class="w3-container w3-center">
				<h3><label>상품명 </label>${PRODUCT.p_name}</h3>
				<h5><label>상품코드 </label> ${PRODUCT.p_code}</h5>
				<h5><label>상품분류 </label>${PRODUCT.p_item}</h5>
				<h5><label>상품가격 </label>${PRODUCT.p_price}</h5>
			</div>
			<div class="w3-right" >
				<input class="HM-update w3-button w3-yellow" data-pcode="${PRODUCT.p_code}" value="수정" type="button">
				<input class="HM-delete w3-button w3-red" data-pcode="${PRODUCT.p_code}" value="삭제" type="button">
			</div>
		</div>
	
	</main>

</body>
</html>