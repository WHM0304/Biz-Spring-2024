<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<nav class="main nav">
	<ul>
		<li><a href="${rootPath}">Home</a></li>
		<li>공지사항</li>
		<li><a href="${rootPath}/bbs/write">자유게시판</a></li>
	</ul>
</nav>