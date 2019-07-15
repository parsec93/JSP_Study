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
// 세션값이 없으면  loginForm.jsp 이동
if(id==null){
	response.sendRedirect("loginForm.jsp");
}else if(!id.equals("admin")){
	response.sendRedirect("main.jsp");
}

// 1단계 드라이버불러오기
Class.forName("com.mysql.jdbc.Driver");
// 2단계 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb5";
String dbUser="jspid";
String dbPass="jsppass";
Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPass);
// 3단계 sql(select) 만들고 실행할 객체 생성
String sql="select * from member";
PreparedStatement pstmt=con.prepareStatement(sql);
// 4단계 : 결과저장 <= sql  구문 실행 select
ResultSet rs=pstmt.executeQuery();
// 5단계 : select 결과를 while문을 이용해서 출력
%>
<h1>jsp4/list.jsp</h1>
<h1>회원목록</h1>
<table border="1">
<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입날짜</td></tr>
<%
while(rs.next()){
%>
<tr><td><%=rs.getString("id") %></td><td><%=rs.getString("pass") %></td>
<td><%=rs.getString("name") %></td><td><%=rs.getString("reg_date") %></td></tr>
<%	
}
%>
</table>
</body>
</html>
