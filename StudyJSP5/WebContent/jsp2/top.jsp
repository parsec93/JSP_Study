<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>jsp2/top.jsp 위메뉴 페이지</h1>
<%
// String id= id파라미터 가져오기
String id=request.getParameter("id");
%>
<h3><%=id %>님 로그인 하셨습니다.</h3>
