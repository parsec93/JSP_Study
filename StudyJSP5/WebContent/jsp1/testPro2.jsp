<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jsp1/testPro2.jsp</h3>
<%
//post방식일때 request 한글처리  getParameter하기전에 처리 
request.setCharacterEncoding("utf-8");

String name=request.getParameter("name");
String age=request.getParameter("age");

//Integer.parseInt(age) 문자숫자=> 정수형 변경
%>
이름:<%=name %><br>
나이:<%=age %><br>
나이+100:<%=age+100 %><br>
Integer.parseInt(나이)+100:
<%=Integer.parseInt(age)+100 %><br>
<%
int a=Integer.parseInt(age);
if(a>=20){
	out.println("성인입니다.");
}else{
	out.println("미성년입니다.");
}
%>
</body>
</html>

