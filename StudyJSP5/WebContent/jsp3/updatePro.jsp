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
<h1>jsp3/updatePro.jsp</h1>
<%
//request 한글처리
request.setCharacterEncoding("utf-8");
// num name  request에 저장된 파라미터 값 가져오기
// String num= request.getParameter("num");
int num= Integer.parseInt(request.getParameter("num"));
String name=request.getParameter("name");

//1단계 : 설치한 JDBC 프로그램에서 디비연결할 드라이버 불러오기
//: com폴더 mysql폴더 jdbc폴더 Driver.class
Class.forName("com.mysql.jdbc.Driver");
// 2단계 : 불러온 드라이버를 이용해서 디비연결 
// (디비주소,디비접속아이디,디비접속비밀번호)=> 연결정보 저장
String dbUrl="jdbc:mysql://localhost:3306/jspdb5";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPass);
//3단계 : 연결정보를 이용해서 sql(insert)문을 만들고 실행할수 있는 객체 생성
//       Statement, PreparedStatement, CallableStatement
// String sql="update student set name='홍길동' where num=1;";
String sql="update student set name=? where num=?;";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, name);//첫번째물음표,값
pstmt.setInt(2, num); //두번째 물음표,값

//4단계 : sql 구문 실행 (insert,update,delete)
pstmt.executeUpdate();
%>
학생수정성공<%=pstmt %>
</body>
</html>