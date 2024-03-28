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
	tr.hm-tr{
		th{
		background-color : grey;
		color : white;
		
		}
	}
	
</style>
<body>
	<%@ include file="/WEB-INF/views/includes/header.jspf" %>
	<table class="w3-table-all w3-hoverable ">
			<tr class="hm-tr">
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
