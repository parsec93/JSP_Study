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
// 세션값이 없으면  loginForm.jsp 이동
if(id==null){
	response.sendRedirect("loginForm.jsp");
}
%>
<h1>jsp4/main.jsp</h1>
<%=id %>님이 로그인 하셨습니다.
<input type="button" value="로그아웃" 
 onclick="location.href='logout.jsp'"><br>
<a href="info.jsp">회원정보조회</a><br>
<a href="updateForm.jsp">회원정보수정</a><br>
<a href="deleteForm.jsp">회원정보삭제</a><br>
<%
// 세션값이 존재하면  
// 세션값이 "admin" 같으면 
if(id!=null){
	if(id.equals("admin")){
		%>
<a href="list.jsp">회원목록</a><br>		
		<%
	}
}
%>
</body>
</html>




