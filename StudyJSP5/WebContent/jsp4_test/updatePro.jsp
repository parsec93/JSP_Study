<%@page import="java.sql.Timestamp"%>
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

	request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		Timestamp reg_date = new Timestamp(System.currentTimeMillis());

		Class.forName("com.mysql.jdbc.Driver");

		String dbUrl = "jdbc:mysql://localhost:3306/jspdb5";
		String dbUser = "jspid";
		String dbPass = "jsppass";
		Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);

		String sql = "select * from member where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);

		ResultSet rs = pstmt.executeQuery();

		if (rs.next()) {//id존재하면, 다음행이동 데이터가 있으면
			if (pass.equals(rs.getString("pass"))) {

				sql = "update member set name=?,age=?,gender=?,email=? where id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setString(2, age);
				pstmt.setString(3, gender);
				pstmt.setString(4, email);
				pstmt.setString(5, id);
				pstmt.executeUpdate();
				response.sendRedirect("main.jsp");
			} else {
	%>
	<script type="text/javascript">
		alert("비밀번호틀림");
		history.back();
	</script>
	<%
		}
		} else {
	%>
	<script type="text/javascript">
		alert("id없음");
		history.back();
	</script>
	<%
		}
	%>
</body>
</html>