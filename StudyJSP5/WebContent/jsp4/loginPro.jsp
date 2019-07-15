<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp4/loginPro.jsp</h1>
<%
// id, pass 파라미터 가져와서 변수에 저장
String id=request.getParameter("id");
String pass=request.getParameter("pass");
// id pass 비교 일치하면
// 1단계 드라이버불러오기
Class.forName("com.mysql.jdbc.Driver");
// 2단계 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb5";
String dbUser="jspid";
String dbPass="jsppass";
Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPass);
// 3단계 sql(select 조건 id=?) 만들고 실행할 객체 생성
String sql="select * from member where id=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setString(1, id);
// 4단계 : 결과저장 <= sql  구문 실행 select
ResultSet rs=pstmt.executeQuery();
// 5단계 : select 결과를 비교 해서 일치여부 확인
if(rs.next()){ //true이면 id.equals(rs.getString("id"))
	//다음행 이동시 데이터가 있으면, id가 있으면
	out.println("id가 있으면 ");
	if(pass.equals(rs.getString("pass"))){
		out.println("비밀번호 일치 ");// 비밀번호 일치하면  세션값 생성  main.jsp 이동
		// 세션값 생성  "id",id
		session.setAttribute("id", id);
		// 이동  main.jsp
		response.sendRedirect("main.jsp");
	}else{
		out.println("비밀번호 틀림 ");// "비밀번호 틀림" 뒤로이동
		%>
		<script type="text/javascript">
			alert("비밀번호 틀림");
			history.back();
		</script>
		<%
	}
}else{
	out.println("id가 없으면 ");//다음행 이동시 데이터가 없으면, id가 없으면 
	// "아이디없음"  뒤로이동
	%>
	<script type="text/javascript">
		alert("아이디없음");
		history.back();
	</script>
	<%
}
%>
</body>
</html>



