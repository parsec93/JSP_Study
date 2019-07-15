<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp2/sessionInval.jsp</h1>
<%
//세션전체 삭제(초기화),로그아웃
session.invalidate();
// 이동 sessionTest.jsp
%>
<script type="text/javascript">
alert("세션전체 초기화");
location.href="sessionTest.jsp";
</script>
</body>
</html>


