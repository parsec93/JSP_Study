<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jsp1/testPro1.jsp</h3>
<%
//java,jsp 명령 
// 변수 = id, pass 파라미터 가져오기
String id=request.getParameter("id");
String pass=request.getParameter("pass");
// 폼에서 받아온 아이디는  kim 이고 
// 폼에서 받아온 비밀번호는  p123 입니다. 
out.println("폼에서 받아온 아이디는 "+id+ "이고 <br>폼에서 받아온 비밀번호는 " +pass+ "입니다.<br>");
%>
폼에서 받아온 아이디는 <%=id %> 이고 <br>
폼에서 받아온 비밀번호는 <%=pass %> 입니다.<br>
</body>
</html>




