<%@page import="java.sql.PreparedStatement"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// json 만들어주는 프로그램 설치 

// 1단계 : 드라이버 로더
Class.forName("com.mysql.jdbc.Driver");

// 2단계 : 디비연결
String dbUrl = "jdbc:mysql://localhost:3306/jspdb5";
String dbUser = "jspid";
String dbPass = "jsppass";
Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
// 3단계 : sql 객체생성
String sql = "select * from member";
PreparedStatement pstmt = con.prepareStatement(sql);
// 4단계 : 실행 => rs 저장
ResultSet rs = pstmt.executeQuery(); 
// 5단계 : rs 첫행으로 이동했을 때 데이터가 있으면 
// 	           자바빈을 생성해서  => JSONObject 
// 		 Bean의 멤버변수에다가 rs의 열 데이터를 저장.
//	     ArrayList 배열 한칸에 저장.   => JSONArray
JSONArray arr = new JSONArray();

while(rs.next()){
	JSONObject mb = new JSONObject();
	
	// rs열 데이터 저장
	mb.put("id",rs.getString("id"));
	mb.put("pass",rs.getString("pass"));
	mb.put("name",rs.getString("name"));
	
	arr.add(mb);
	
}
%>
<%=arr%>