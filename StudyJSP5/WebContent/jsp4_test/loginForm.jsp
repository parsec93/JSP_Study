<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인 페이지</h1>
<form action="loginPro.jsp" method="post" name="fr">
아이디:<input type="text" name="id"><br>
비밀번호:<input type="password" name="pass"><br>
<input type="submit" value="로그인">
<input type="button" value="회원가입" onclick="location.href='insertForm.jsp'">

</form>
</body>
</html>