<%@page import="member.MemberDAO"%>
<%@page import="member.MemberBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>member/insertPro.jsp</h1>
<%
// 한글처리
request.setCharacterEncoding("utf-8");
// id pass name  request에 저장된 파라미터 가져와서 변수 저장
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
// reg_date 현시스템 날짜시간 가져오기
Timestamp reg_date=new Timestamp(System.currentTimeMillis());

// 자바빈   패키지 member 파일이름 MemberBean  (MemberDTO)
// id,pass,name,reg_date
// MemberBean mb 객체생성
MemberBean mb=new MemberBean();
// mb 멤버변수 파라미터 값 저장
mb.setId(id);
mb.setPass(pass);
mb.setName(name);
mb.setReg_date(reg_date);

%>
<jsp:useBean id="mbb" class="member.MemberBean"/>
<jsp:setProperty property="*" name="mbb"/>
<%
//  디비작업하는 자바파일   패키지 member 파일이름 MemberDAO
//  디비작업하는 기능 메서드 만들기 insertMember(mb)  
//  MemberDAO 객체생성  insertMember(mb)  메서드호출
MemberDAO mdao=new MemberDAO();
mdao.insertMember(mb);


// "회원가입성공"  loginForm.jsp 
%>
<script type="text/javascript">
	alert("회원가입성공");
	location.href="loginForm.jsp";
</script>
</body>
</html>





