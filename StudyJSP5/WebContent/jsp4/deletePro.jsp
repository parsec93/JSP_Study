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
<h1>jsp4/deletePro.jsp</h1>
<%
// request 한글처리
request.setCharacterEncoding("utf-8");
//id, pass, name 파라미터 가져와서 변수에 저장
String id=request.getParameter("id");
String pass=request.getParameter("pass");
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
if(rs.next()){//id존재하면, 다음행이동 데이터가 있으면
	if(pass.equals(rs.getString("pass"))){
		//비밀번호 맞음 // 3단계 sql(delete) 4단계 실행  main.jsp이동
		sql="delete from member where id=?";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		//세션값 초기화
		session.invalidate();
		response.sendRedirect("main.jsp");
	}else{
		//비밀번호 틀림,  뒤로이동
		%>
		<script type="text/javascript">
			alert("비밀번호틀림");
			history.back();
		</script>
		<%
	}
}else{
	// id없음, 뒤로이동
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