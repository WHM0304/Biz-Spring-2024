<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <form method="POST" enctype="multipart/form-data">
		<div><input placeholder="제목" name="g_subject"/></div>
		<div><textarea rows="10" placeholder="내용" name="g_content"></textarea></div>
		<div><input placeholder="작성자" name="g_writer"/></div>
		<div><input placeholder="비밀번호" type="password" name="g_password"/></div>
		<div><input type="file" accept="image/*" multiple="multiple" name="files"/></div>
		<div><input type="submit" value="저장" /></div>    	
    </form>
  </body>
</html>
