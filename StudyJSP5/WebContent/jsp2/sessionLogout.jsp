<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp2/sessionLogout.jsp</h1>
<%
//세션값 전체 초기화
session.invalidate();
// "로그아웃" 메시지 출력 하면서 sessionMain.jsp 이동
%>
<script type="text/javascript">
	alert("로그아웃");
	location.href="sessionMain.jsp";
</script>
</body>
</html>


