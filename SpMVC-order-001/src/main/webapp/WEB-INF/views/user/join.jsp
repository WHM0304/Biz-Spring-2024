<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/views/includes/head.jspf"%>
<style>
	form.w3-container{
		width: 60%;
		margin : 10px auto;
		fieldset {
			border-radius : 20px;
			padding : 16px;
			margin : 20px;
		}
		legend {
			text-align : center;
			font-weight : 900;
			font-size : 1.3rem;
		}
		input {
			margin-bottom: 10px;
			border-radius: 10px;
		}
	}
</style>
<body>
	<%@ include file="/WEB-INF/views/includes/header.jspf"%>
	<form method="POST" class="w3-container">
		<fieldset>
		<legend>회원가입</legend>
		<label class="w3-text-teal">USERNAME</label>
		<input name="username" placeholder="username" class="w3-input w3-border w3-light-gray"/>
		<label class="w3-text-teal">비밀번호</label>
		<input name="password" placeholder="password"  class="w3-input w3-border w3-light-gray"/>
		<label class="w3-text-teal">이름</label>
		<input name="name" placeholder="name" class="w3-input w3-border w3-light-gray" />
		<label class="w3-text-teal">이메일</label>
		<input name="email" placeholder="email" class="w3-input w3-border w3-light-gray" />
		<label class="w3-text-teal">전화번호</label>
		<input name="tel" placeholder="tel" class="w3-input w3-border w3-light-gray" />
		<label class="w3-text-teal"></label>
		<input type="submit" value="회원가입"  class="w3-button w3-hover:purple w3-blue-gray w3-right"/>
		</fieldset>
	</form>

</body>
</html>