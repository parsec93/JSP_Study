<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jstl/jstl_fmt.jsp</h1>
<fmt:requestEncoding value="utf-8"/>
<fmt:setLocale value="en_US"/>
<fmt:formatNumber value="50000" type="currency"/>
<fmt:formatNumber value="0.15" type="percent"/>
<fmt:formatNumber value="500567300" pattern="###,###,###"/>
<jsp:useBean id="date" class="java.util.Date"/>
<fmt:formatDate value="${date }" type="date"/><br>
<fmt:formatDate value="${date }" type="time"/><br>
<fmt:formatDate value="${date }" type="both"/><br>

</body>
</html>