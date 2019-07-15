<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jstest/a.jsp</h1>
<!-- html 주석 -->
<%--jsp 주석 --%>
<%
//http://localhost:8080/StudyJSP5/jstest/
// a.jsp?
//se=ggg&add1=gggggg&add2=ggggggg&id=gggg&pass=gggg&pass1=gggg&email=&tel=gg&sel=2
// java, jsp 명령어  java주석
/*
여러줄 주석  java주석
*/

// request(내장객체) 기억장소 저장 : 요청정보를 저장하는 내장객체
// 내장객체.함수() 내장객체.변수
// request기억장소안에  저장되어 있는 태그이름(파라미터이름)=값 을 가져오기 함수
//request.getParameter("파라미터 이름,태그이름")
out.println("아이디 : " + request.getParameter("id")+"<br>");
String sid=request.getParameter("id");
String sel=request.getParameter("sel");
String s="";
if(sel.equals("1")){
	s="사원";
}
%>
아이디:<%=sid %><br>
회원분류:<%=sel %><br>
</body>
</html>





