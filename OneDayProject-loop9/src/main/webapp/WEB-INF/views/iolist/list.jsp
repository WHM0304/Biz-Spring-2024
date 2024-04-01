<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<script src="${rootPath}/static/js/list.js?2024-04-01-001"></script>
<script>
const rootPath = "${rootPath}"
</script>
<body>
	<%@ include file="/WEB-INF/views/include/header.jspf"%>
	<h1>리스트</h1>
	<a href="${rootPath}/iolist/insert">추가하기</a>
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
		<tbody class="HM-list_body">
			<c:forEach items="${IOLIST}" var="IOLIST">
				<tr data-io_seq="${IOLIST.io_seq}">
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
			<td></td>
			<td><!-- ${total} --></td>
			<td><!-- ${total} --></td>
			</tr>
		</tbody>

	</table>
</body>
</html>