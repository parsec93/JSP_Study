<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp2/sessionDel.jsp</h1>
<%
//하나의 세션값 삭제
session.removeAttribute("sesname");
// 이동 sessionTest.jsp
%>
<script type="text/javascript">
alert("세션값 하나삭제");
location.href="sessionTest.jsp";
</script>
</body>
</html>


