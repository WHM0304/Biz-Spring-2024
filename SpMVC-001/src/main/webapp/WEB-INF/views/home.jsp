<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<link href="${rootPath }/static/css/main.css?001518" rel="stylesheet"/>
</head>
<body>
	<header class="head">
		<h1>HOME</h1>
		<nav class="menu">
			<a href="${rootPath}">홈</a>
			<a href="${rootPath}/user/login">로그인</a> 
			<a href="${rootPath}/user/join">회원가입</a>
		</nav>
	</header>
</body>
</html>
