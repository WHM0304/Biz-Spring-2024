<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
	<h1>${LIST.io_seq}</h1>
	<h1>${LIST.io_date}</h1>
	<h1>${LIST.io_time}</h1>
	<h1>${LIST.io_input}</h1>
	<h1>${LIST.io_pname}</h1>
	<h1>${LIST.io_price}</h1>
	<h1>${LIST.io_Total}</h1>
	
	<button class="HM-update"  data-io_seq = "${LIST.io_seq}" >수정</button>
	<button class="HM-delete" data-io_seq = "${LIST.io_seq}" >삭제</button>

</body>
</html>