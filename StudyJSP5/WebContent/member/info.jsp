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
//세션값 가져와서 변수에 저장
String id=(String)session.getAttribute("id");
// MemberDAO mdao 객체생성
MemberDAO mdao=new MemberDAO();
// 세션값인 id를 메서드에 넘겨서 디비에서 
// 회원정보 전체(id,pass,name,reg_date)를 한 곳에 담아서 리턴
// 리턴한 결과값 저장 변수 = getMember(메서드에서 처리하는 값)
MemberBean mb=mdao.getMember(id);
%>
<h1>member/info.jsp</h1>
<h1>회원정보조회</h1>
아이디:<%=mb.getId() %><br>
비밀번호:<%=mb.getPass() %><br>
이름:<%=mb.getName() %><br>
가입날짜:<%=mb.getReg_date() %><br>
<a href="main.jsp">메인으로 이동</a>
</body>
</html>





