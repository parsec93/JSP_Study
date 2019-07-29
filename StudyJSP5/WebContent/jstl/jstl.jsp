<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// JSTL Jsp Standard Tag Library
// http://tomcat.apache.org/
// download - TagLibs
// WebContent - Web_INF - lib - 

%>
<h1>jstl/jstl.jsp</h1>
변수 설정 : <c:set var="vname" value="hello jstl" />
변수 출력 : <c:out value="${vname }" /> <br>
변수 삭제 : <c:remove var="vname"/><br>
변수 삭제 후 출력 : <c:out value="${vname }"/> <br>

<c:catch var="err">
	<%=10/0 %>
</c:catch>
에러 메시지 : <c:out value="${err }"/>

<c:if test="${5 < 10 }">
	<h3>5는 10보다 작다</h3>
</c:if>

<c:choose>
	<c:when test="${5+10 == 50 }">
		<h3>5+10은 50이다</h3>
	</c:when>
	<c:otherwise>
		<h3>5+10은 50이 아니다</h3>
	</c:otherwise>
</c:choose>

<c:forEach var="i" begin="1" end="10" step="2">
	<b>${i }</b>&nbsp;
</c:forEach>
<c:forEach var="mb" items="${memberList }">
	${mb.id },${mb.pass }, ${mb.name }
</c:forEach>
<br>
<c:forTokens var="i" items="a,b,c,d,e,f" delims=",">
	<b>${i }</b>&nbsp;
</c:forTokens>
<br>

<c:set var="namedata" value="홍길동;이길동;김길동"/>
<c:forTokens var ="i" items="${namedata }" delims=";">
	<b>${i }</b>
</c:forTokens>






</body>
</html>