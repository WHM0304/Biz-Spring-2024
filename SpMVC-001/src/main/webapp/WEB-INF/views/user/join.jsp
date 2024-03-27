<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여기는 회원가입</title>
<link href="/hello/static/css/join.css?016" rel="stylesheet">
</head>
<body>
	<form method="POST" class="form" >
		<div>
			<input name="username" placeholder="username" />
		</div>
		<div>
			<input name="password" placeholder="password" />
		</div>
		<div>
			<input name="name" placeholder="name" />
		</div>
		<div>
			<input name="email" placeholder="email" />
		</div>
		<div><input name="tel" placeholder="tel" /></div>
		<div><button type="submit">회원가입</button></div>
	</form>

</body>
</html>