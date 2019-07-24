<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>WebContent/js3_jQuery2/string3.jsp</h1>
<%
// 파라미터 id를 받아서
// 디비에 저장된 아이디 "kim"
// 파라미터 id가 "kim" 이면 "아이디 중복" 아니면 "사용가능한 아이디"
String id = request.getParameter("id");
if(id.equals("kim")){
	%>아이디 중복<%
}else{
	%> 사용가능한 아이디 <%
}
%>