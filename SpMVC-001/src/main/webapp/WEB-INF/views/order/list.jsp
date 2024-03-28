<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/views/includes/head.jspf" %>

<body>
	<%@ include file="/WEB-INF/views/includes/header.jspf" %>
	<table class="w3-table-all w3-hoverable ">
			<tr>
				<th>주문번호</th>
				<th>주문일자</th>
				<th>고객코드</th>
				<th>고객이름</th>
				<th>전화번호</th>
			</tr>
			<c:forEach items="${ORDER_LIST}" var="ORDER" >
				<tr>
					<td>${ORDER.o_num}</td>
					<td>${ORDER.o_date }</td>
					<td>${ORDER.o_ccode }</td>
					<td>${ORDER.c_name}</td>
					<td>${ORDER.c_tel}</td>
				</tr>
			</c:forEach>
		</table>

</body>
</html>