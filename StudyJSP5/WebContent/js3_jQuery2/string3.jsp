<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>WebContent/js3_jQuery2/string3.jsp</h1>
<%
String id = request.getParameter("id");

if(id.equals("kim")){
	out.println("아이디 중복");
}else{
	out.println("사용가능한 아이디");
}
%>