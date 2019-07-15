<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jsp1/scopeForm.jsp</h3>
<%
// 영역                    영역객체                속성유효범위
// page          pageContext    현페이지만 유지
// request       request        요청정보처리되는 동안 유지 
// session       session        세션(접속정보)이 유지되는 동안 유지
// application   application    웹애플리케이션서버 실행되고 있는 동안
%>
<form action="scopePro.jsp" method="get" name="fr">
아이디:<input type="text" name="id"><br>
비밀번호:<input type="password" name="pass"><br>
<input type="submit" value="전송">
</form>
</body>
</html>




