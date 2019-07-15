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
<h1>회원목록 List</h1>
<table border="1">	 
<tr><td>아이디(id)</td><td>비밀번호(pass)</td>
<td>이름(name)</td>
<td>나이(age)</td>
<td>성별(gender)</td>
<td>이메일(email)</td>
<td>가입날짜(reg_date)</td>
</tr>
<%String id=(String)session.getAttribute("id");

Class.forName("com.mysql.jdbc.Driver");

String dbUrl="jdbc:mysql://localhost:3306/jspdb5";
String dbUser="jspid";
String dbPass="jsppass";
Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPass);

String sql="select * from member";
PreparedStatement pstmt=con.prepareStatement(sql);

ResultSet rs=pstmt.executeQuery();

while(rs.next()){
	%>
	<tr>
	<td><%=rs.getString("id") %></td>
	<td><%=rs.getString("pass") %></td>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getString("age") %></td>
	<td><%=rs.getString("gender") %></td>
	<td><%=rs.getString("email") %></td>
	<td><%=rs.getString("reg_date") %></td>
	</tr>
	<% 
}
%>
</table>
<a href="main.jsp">메인으로 이동</a>
</body>
</html>