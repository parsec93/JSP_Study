<%@page import="member.MemberBean"%>
<%@page import="member.MemberDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
// 세션값 가져와서 변수에 저장
String id=(String)session.getAttribute("id");
// MemberDAO mdao 객체생성
MemberDAO mdao=new MemberDAO();
// MemberBean mb = getMember(id)메서드호출
MemberBean mb=mdao.getMember(id);
%>
<h1>member/updateForm.jsp</h1>
<h1>회원수정</h1>
<form action="updatePro.jsp" method="post" name="fr">
아이디:<input type="text" name="id" value="<%=id %>" readonly><br>
비밀번호:<input type="password" name="pass"><br>
수정할 이름:<input type="text" name="name" 
value="<%=mb.getName() %>"><br>
<input type="submit" value="회원수정">
</form>
</body>
</html>

