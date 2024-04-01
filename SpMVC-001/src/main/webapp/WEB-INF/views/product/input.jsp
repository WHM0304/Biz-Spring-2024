<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/includes/head.jspf" %>
<style>
	div.HM-input_box{
		display : flex;
		flex-direction : column;
		width: 50%;
		margin : 10px auto;
		gap : 5px
	}
</style>
<body>
	<form method="POST">
		<div class="HM-input_box w3-container">
			<input name="p_code" placeholder="상품코드"  value="${PRODUCT.p_code }"/>
			<input name="p_name" placeholder="상품이름" value="${PRODUCT.p_name }"/>
			<input name="p_item" placeholder="상품분류" value="${PRODUCT.p_item }"/>
			<input name="p_price" placeholder="상품가격" value="${PRODUCT.p_price }"/>
			<input type="submit" value="저장" > 
		</div>
	</form>

</body>
</html>