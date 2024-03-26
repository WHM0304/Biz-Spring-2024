<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" 
			prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<c:set var= "loginPath" value="${rootPath}/user/login" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>hello 홈페이지</title>
<link href= "${rootPath}/static/css/main.css?005" rel="stylesheet" >
</head>
<body>
	<header class="main">
		<h1>반갑습니다</h1>
	</header>
	<nav class="main">
		<ul>
		<li><a href="${rootPath}">Home</a></li>
		<li><a href="/notice">공지사항</a></li>
		<li><a href="/bbs">자유게시판</a></li>
		<li><a href="${loginPath}">로그인</a></li>
		<li><a href="${rootPath}/user/join">회원가입</a></li>
		</ul>
	</nav>
	
</body>
</html>
