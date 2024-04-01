<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/head.jspf"%>

<body>
	<%@ include file="/WEB-INF/views/include/header.jspf"%>
	<h1>리스트</h1>
	<table>
		<thead>
			<tr>
				<th>No</th>
				<th>일자</th>
				<th>시각</th>
				<th>상품명</th>
				<th>매입단가</th>
				<th>판매단가</th>
				<th>수량</th>
				<th>매입합계</th>
				<th>판매합계</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${IOLIST}" var="IOLIST">
				<tr>
					<td>${IOLIST.io_seq}</td>
					<td>${IOLIST.io_date}</td>
					<td>${IOLIST.io_time }</td>
					<td>${IOLIST.io_pname }</td>
					<td>${IOLIST.io_import }</td>
					<td>${IOLIST.io_export }</td>
					<td>${IOLIST.io_quan }</td>
					<td>${IOLIST.io_impTotal }</td>
					<td>${IOLIST.io_expTotal }</td>
				</tr>
			</c:forEach>
			
			<tr>
			<td></td>
			<td>합계</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td>1</td>
			<td>${total.io_impTotal}</td>
			<td>${total.io_expTotal}</td>
			</tr>
		</tbody>

	</table>
</body>
</html>