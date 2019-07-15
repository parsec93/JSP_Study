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
// 세션값 가져와서 변수에 저장
String id=(String)session.getAttribute("id");
// 1단계 드라이버로더
Class.forName("com.mysql.jdbc.Driver");
// 2단계 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb5";
String dbUser="jspid";
String dbPass="jsppass";
Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPass);
// 3단계 sql(select) 만들고 실행할 객체 생성
String sql="select * from member where id=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);
// 4단계 : 결과저장 <= sql  구문 실행 select
ResultSet rs=pstmt.executeQuery();
// 5단계 : select 결과를 화면출력
rs.next(); // rs위치 다음행 이동
%>
<h1>jsp4/updateForm.jsp</h1>
<h1>회원수정</h1>
<form action="updatePro.jsp" method="post" name="fr">
아이디:<input type="text" name="id" value="<%=id %>" readonly><br>
비밀번호:<input type="password" name="pass"><br>
수정할 이름:<input type="text" name="name" 
value="<%=rs.getString("name") %>"><br>
<input type="submit" value="회원수정">
</form>
</body>
</html>

