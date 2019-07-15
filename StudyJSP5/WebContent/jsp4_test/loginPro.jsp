<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
String id = request.getParameter("id");
String pass = request.getParameter("pass");

Class.forName("com.mysql.jdbc.Driver");

String dbUrl="jdbc:mysql://localhost:3306/jspdb5";
String dbUser="jspid";
String dbPass="jsppass";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);

String sql="select * from member where id=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs=pstmt.executeQuery();

if(rs.next()){
	out.println("id가 있으면");
	if(pass.equals(rs.getString("pass"))){
		out.println("비밀번호 일치");
		
		session.setAttribute("id", id);
		
		response.sendRedirect("main.jsp");
		
	}else{
		out.println("비밀번호 틀림");
	%>
	<script type="text/javascript">
	alert("아이디가 틀립니다. 다시 입력하세요");
	history.back();
	</script>
	<% 
	%>
	<script type="text/javascript">
	alert("아이디 없음");
	history.back();
	</script>
	<% 
	}
}
%>
</body>
</html>