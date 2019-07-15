<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp2/cookiePro.jsp</h1>
<%
//  String lang= lang 파라미터 가져오기
String lang=request.getParameter("lang");

// 쿠키값 생성   "clang",파라미터값
Cookie cookie=new Cookie("clang",lang);
cookie.setMaxAge(60*60);
response.addCookie(cookie);

// "쿠키값 생성" 이동 cookieForm.jsp 
%>
<script type="text/javascript">
alert("쿠키값 생성");
location.href="cookieForm.jsp";
</script>
</body>
</html>




