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
session.setAttribute("sesname", "session value" );
// EL(Expression Language) : 표준 언어 
// %=% 대신에 ${}를 사용
// 내장객체 sessionScope.세션이름 을 사용하면 세션값을 가져올 수 있음. param.파라미터이름 
// EL 연산자 
%>
<h1>jstl/el.jsp</h1>
<h3>\${10%3} = ${10%3}</h3>
<h3>\${5!=7} = ${5!=7}</h3>
<h3>\${5+3==8?8:10} = ${5+3==8 ? 8 : 10}</h3>
<form action="elPro.jsp" method = "post">
아이디 : <input type="text" name="id">
<input type="submit" value="전송">
</form>
</body>
</html>