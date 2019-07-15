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
//int num =  num 파라미터 가져오기
int num= Integer.parseInt(request.getParameter("num"));
//1단계 : 설치한 JDBC 프로그램에서 디비연결할 드라이버 불러오기
//: com폴더 mysql폴더 jdbc폴더 Driver.class
Class.forName("com.mysql.jdbc.Driver");
// 2단계 : 불러온 드라이버를 이용해서 디비연결 
// (디비주소,디비접속아이디,디비접속비밀번호)=> 연결정보 저장
String dbUrl="jdbc:mysql://localhost:3306/jspdb5";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPass);
//3단계 : 연결정보를 이용해서 sql(select)문을 만들고 실행할수 있는 객체 생성
//       Statement, PreparedStatement, CallableStatement
String sql="select * from student where num=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setInt(1, num);
//4단계 : 결과저장 <= sql  구문 실행 select
ResultSet rs=pstmt.executeQuery();
//5단계 : select 결과를 화면출력
// rs.next();

// if(rs.next()){
// out.println(rs.getInt("num")+","+rs.getString("name")+"<br>");
// }
%>
<h1>jsp3/selectPro.jsp</h1>
<table border="1">
<tr><td>번호(num)</td><td>이름(name)</td></tr>
<%
if(rs.next()){
	%>
<tr><td><%=rs.getInt("num") %></td>
    <td><%=rs.getString("name") %></td></tr>	
	<%
}
%>
</table>
</body>
</html>



