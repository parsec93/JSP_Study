<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp2/sessionSet.jsp</h1>
<%
//세션값 저장  "sesname" "session Value"
session.setAttribute("sesname", "session Value");
// 이동 sessionTest.jsp
// response.sendRedirect("sessionTest.jsp");
%>
<script type="text/javascript">
alert("세션값 저장");
location.href="sessionTest.jsp";
</script>
</body>
</html>



