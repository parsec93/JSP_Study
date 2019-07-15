<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include  file="col.jspf" %>
<%@ include  file="color.aaa" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="<%=col5%>">
<!-- include 액션태그 -->
<h1>jsp2/includeMain.jsp</h1>
<table border="1">
<tr><td colspan="2" height="100">
    <jsp:include page="top.jsp">
    	<jsp:param name="id" value="kim" />
    </jsp:include>
    </td></tr>
<tr><td width="100" height="600">
    <jsp:include page="left.jsp" /></td>
    <td width="600">본문</td></tr>
<tr><td colspan="2" height="100">
    <jsp:include page="bottom.jsp" /></td></tr>
</table>
</body>
</html>




