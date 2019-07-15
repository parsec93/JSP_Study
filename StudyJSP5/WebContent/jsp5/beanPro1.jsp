<%@page import="bean.BeanTest1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp5/beanPro1.jsp</h1>
<%
//한글처리
request.setCharacterEncoding("utf-8");
// name 파라미터 가져와서 변수에 저장
String name=request.getParameter("name");
// 자바빈 - 자바파일 회원정보를 저장할 공간(바구니)만들어서 저장
// 패키지 bean  파일이름 BeanTest1
// BeanTest1파일안에 name변수에 파라미터값 을 저장
//String s=new String("문자열");
BeanTest1 bt1=new BeanTest1();
//bt1.name=name;
bt1.setName(name);

out.println("BeanTest1 name변수:"+bt1.getName() );

// 자바파일 객체생성 하고 insert메서드(회원정보)호출 

// 1,2,3sql ? name,4  
//=> 자바 MemberDAO insert메서드(1,2,3sql ? name,4)
%>
</body>
</html>




