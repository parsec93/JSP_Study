<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = (String)session.getAttribute("id");
%>
<form action="deletePro.jsp" method="post" name="fr">
삭제할 아이디:<input type="text" name="id" value="<%=id %>" readonly><br>
비밀번호: <input type="password" name="pass"><br>
<input type="submit" value="회원삭제">
</form>

</body>
</html>