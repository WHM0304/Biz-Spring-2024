<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/includes/head.jspf" %>
<style>
	table.w3-table-all {
		width : 80%;
		margin : 10px auto;
	}
	tr.HM-tr{
		th{
		background-color : grey;
		color : white;
		
		}
	}
	div.HM-input_box{
		width: 80%;
		margin : 10px auto;
		padding : 0;
		input{
		padding : 5px;
		&:hover{
			cursor: pointer;
		}
		}
	}
	
</style>
<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/product.js?2024-03-29-001"></script>
<body>
	<%@ include file="/WEB-INF/views/includes/header.jspf" %>
	<div class="HM-input_box w3-container w3-btn_box" >
		<input type="button" value="상품추가" class="w3-right btn_insert w3-blue w3-button">
	</div>
	<table class="w3-table-all w3-hoverable ">
			<tr class="HM-tr">
				<th>상품코드</th>
				<th>상품이름</th>
				<th>상품분류</th>
				<th>상품가격</th>
			</tr>
			<c:forEach items="${PRODUCT_LIST}" var="PRODUCT" >
				<tr>
					<td>${PRODUCT.p_code}</td>
					<td>${PRODUCT.p_name }</td>
					<td>${PRODUCT.p_item }</td>
					<td>${PRODUCT.p_price }</td>
				</tr>
			</c:forEach>
		</table>

</body>
</html>
