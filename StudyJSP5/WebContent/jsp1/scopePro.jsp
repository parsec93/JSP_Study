<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jsp1/scopePro.jsp</h3>
<%
// String id = request 파라미터 가져오기
String id=request.getParameter("id");
String pass=request.getParameter("pass");
//내장객체 값저장
pageContext.setAttribute("page", "pageContext Value");
request.setAttribute("req", "request Value");
session.setAttribute("ses", "session Value");
application.setAttribute("app", "application Value");
%>
아이디:<%=id %><br>
비밀번호:<%=pass %><br>
pageContext값:<%=pageContext.getAttribute("page") %><br>
request값:<%=request.getAttribute("req") %><br>
session값:<%=session.getAttribute("ses") %><br>
application값:<%=application.getAttribute("app") %><br>
<!-- http://localhost:8080/StudyJSP5/jsp1/scopePro.jsp?id=kim -->
<a href="scopeProPro.jsp?id=<%=id%>&pass=<%=pass%>">scopeProPro.jsp이동</a><br>
<script type="text/javascript">
//alert("scopeProPro.jsp로 이동");
<%-- location.href="scopeProPro.jsp?id=<%=id%>&pass=<%=pass%>"; --%>
</script>
<%
// response.sendRedirect("scopeProPro.jsp?id="+id+"&pass="+pass);
%>
<!-- 액션태그 : jsp문법 태그처럼 사용 -->
<!-- forward 이동방식  -->
<!-- 1. 주소줄 A주소보임 => 실행화면 B페이지보임   -->
<!-- 2. A페이지에 request정보를 가지고 있음 -->
<%-- <jsp:forward page="scopeProPro.jsp" /> --%>
<jsp:forward page="scopeProPro.jsp">
	<jsp:param name="age" value="15" />
</jsp:forward>
</body>
</html>




