<%@page import="bean.BeanTest2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp5/beanPro2.jsp</h1>
<%
//id, num 파라미터 가져와서 변수에 저장
String id=request.getParameter("id");
int num=Integer.parseInt(request.getParameter("num"));
//자바빈 - 자바파일 회원정보를 저장할 공간(바구니)만들어서 저장
//패키지 bean  파일이름 BeanTest2
// BeanTest2파일안에 id,num 변수에 파라미터값 을 저장
BeanTest2 bt2=new BeanTest2();
bt2.setId(id);
bt2.setNum(num);

// BeanTest2파일안에 id,num 변수 출력
out.print("BeanTest2 id변수:"+bt2.getId());
out.print("BeanTest2 num변수:"+bt2.getNum());
// 디비작업 호출
%>
<br>
<jsp:useBean id="bt22" class="bean.BeanTest2"/>
<jsp:setProperty property="*" name="bt22"/>
useBean액션태그 이용 BeanTest2 id변수:
<jsp:getProperty property="id" name="bt22"/>
useBean액션태그 이용 BeanTest2 num변수:
<jsp:getProperty property="num" name="bt22"/>
</body>
</html>


