<%@page import="board.BoardDAO"%>
<%@page import="board.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>board/writePro.jsp</h1>
<%
// 한글처리
request.setCharacterEncoding("utf-8");
// 파라미터 가져와서 변수에 저장
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String subject=request.getParameter("subject");
String content=request.getParameter("content");
// 패키지 board 자바파일 BoardBean 만들기
// BoardBean bb 객체생성 
// BoardBean 변수 <- 파라미터 저장
BoardBean bb=new BoardBean();
bb.setName(name);
bb.setPass(pass);
bb.setSubject(subject);
bb.setContent(content);

// 패키지 board 자바파일 BoardDAO 만들기
// BoardDAO bdao 객체생성
BoardDAO bdao=new BoardDAO();
// insertBoard(bb) 메서드 만들고 호출
bdao.insertBoard(bb);
// list.jsp 이동
response.sendRedirect("list.jsp");
%>
</body>
</html>







