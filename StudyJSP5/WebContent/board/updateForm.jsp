<%@page import="board.BoardBean"%>
<%@page import="board.BoardDAO"%>
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
//int num =   num 파라미터 가져오기
int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
// 수정하기 전에 글 내용 가져오기
// BoardDAO bdao 객체생성
BoardDAO bdao=new BoardDAO();
//BoardBean bb  =  getBoard(num) 메서드호출
BoardBean bb=bdao.getBoard(num);
%>
<h1>board/updateForm.jsp</h1>
<h2>게시판 글수정</h2>
<form action="updatePro.jsp?pageNum=<%=pageNum %>" method="post">
<input type="hidden" name="num" value="<%=num%>">
<table border="1">
<tr><td>글쓴이</td><td><input type="text" name="name" value="<%=bb.getName()%>"></td></tr>
<tr><td>비밀번호</td><td><input type="password" name="pass"></td></tr>
<tr><td>제목</td><td><input type="text" name="subject" value="<%=bb.getSubject()%>"></td></tr>
<tr><td>글내용</td>
<td><textarea name="content" rows="10" cols="20"><%=bb.getContent() %></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="글수정"></td></tr>
</table>
</form>
</body>
</html>