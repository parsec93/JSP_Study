<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jsp1/response.jsp</h3>
<%
//response:응답정보를 저장
//          서버의 처리결과 => 클라이언트 응답,설정변경

//http header 값변경
// response.setHeader("헤더이름", "변경값");
// response.setHeader("accept-language", "us");
//쿠키값변경       서버-> 클라이언트에 보내서 값 저장
// response.addCookie("쿠키값");
//클라이언트 contentType설정
// response.setContentType("text/html; charset=UTF-8");
// 클라이언트 URL주소 재전송 변경
// JSP 하이퍼링크
// response.sendRedirect("request.jsp");
// 자바스크립트 하이퍼링크
%>
<script type="text/javascript">
//메시지 "이동"
alert("이동");
// request.jsp로 이동
location.href="request.jsp";
<%
//response.sendRedirect("request.jsp");
%>
</script>
<a href="request.jsp">html 하이퍼링크</a>
</body>
</html>


