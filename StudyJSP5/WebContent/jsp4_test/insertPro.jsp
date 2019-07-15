<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
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
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
int age=Integer.parseInt(request.getParameter("age"));  
String gender=request.getParameter("gender");
String email=request.getParameter("email");
Timestamp reg_date= new Timestamp(System.currentTimeMillis());

Class.forName("com.mysql.jdbc.Driver");

String dbUrl="jdbc:mysql://localhost:3306/jspdb5";
String dbUser="root";
String dbPass="1234";
Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);

String sql="insert into member(id,pass,name,age,gender,email,reg_date) values(?,?,?,?,?,?,?)";

PreparedStatement pstmt = con.prepareStatement(sql);

pstmt.setString(1, id);
pstmt.setString(2, pass);
pstmt.setString(3, name);
pstmt.setInt(4, age);
pstmt.setString(5, gender);
pstmt.setString(6, email);
pstmt.setTimestamp(7, reg_date);


pstmt.executeUpdate();
%>
<script type="text/javascript">
alert("회원 가입 성공!!");
location.href="loginForm.jsp";
</script>
</body>
</html>