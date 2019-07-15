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
<h1>jsp4/insertPro.jsp</h1>
<%
// 한글처리
request.setCharacterEncoding("utf-8");
// id pass name  request에 저장된 파라미터 가져와서 변수 저장
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
// reg_date 현시스템 날짜시간 가져오기
Timestamp reg_date=new Timestamp(System.currentTimeMillis());

// 1단계 드라이버 불러오기
Class.forName("com.mysql.jdbc.Driver");
// 2단계 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb5";
String dbUser="jspid";
String dbPass="jsppass";
Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPass);
// 3단계 sql(insert) 만들고 실행할 객체 생성 
String sql="insert into member(id,pass,name,reg_date) values(?,?,?,?)";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id); //첫번째 물음표,값
pstmt.setString(2, pass);//두번째물음표,값
pstmt.setString(3, name);//세번째물음표,값
pstmt.setTimestamp(4,reg_date);
// 4단계 sql 실행
pstmt.executeUpdate();

// "회원가입성공"  loginForm.jsp 
%>
<script type="text/javascript">
	alert("회원가입성공");
	location.href="loginForm.jsp";
</script>
</body>
</html>





