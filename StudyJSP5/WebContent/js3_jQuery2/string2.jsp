<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>WebContent/js3_jQuery2/string2.jsp</h1>
<%
String name = request.getParameter("name");
String age = request.getParameter("age");
%>
이름 : <%=name%>, 나이 : <%=age%>