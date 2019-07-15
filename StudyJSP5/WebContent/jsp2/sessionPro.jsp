<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp2/sessionPro.jsp</h1>
<%
// id,pass 파라미터 값 가져와서 변수에 저장=>출력
String id=request.getParameter("id");
String pass=request.getParameter("pass");
%>
폼에서 가져온 아이디 : <%=id %><br>
폼에서 가져온 비밀번호 : <%=pass %><br>
<%
//디비에 저장된 아이디,비밀번호
String dbId="kim";
String dbPass="p123";
%>
디비에 저장된 아이디 : <%=dbId %><br>
디비에 저장된 비밀번호 : <%=dbPass %><br>
<%
// 폼에 입력한 아이디와 디비에 저장된 아이디 비교=> 모두일치 세션값 생성 "id",id변수
if(id.equals(dbId)){
	out.println("아이디 일치");
	//비밀번호 비교
	if(pass.equals(dbPass)){
		out.println("비밀번호일치");
		// 세션값 생성
		session.setAttribute("id", id);
		// 이동 sessionMain.jsp
		%>
		<script type="text/javascript">
			alert("sessionMain.jsp이동");
			location.href="sessionMain.jsp";
		</script>
		<%
// 		response.sendRedirect("sessionMain.jsp");
	}else{
		out.println("비밀번호틀림");
	}
}else{
	out.println("아이디 틀림");
}
%>
</body>
</html>




