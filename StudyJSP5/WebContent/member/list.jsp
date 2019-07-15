<%@page import="member.MemberDAO"%>
<%@page import="member.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// 자바 API 배열형태의 컬렉션 자료형   List
// String a[]=new String[10]
// List list=new ArrayList();	
// list.add("일번 아이디 비밀번호 이름 가입일");
// list.add("이번 아이디 비밀번호 이름 가입일");
// list.add(3+"번 아이디 비밀번호 이름 가입일");
// out.println("배열(컬렉션)의 크기 :"+list.size()+"<br>");
// for(int i=0;i<list.size();i++){
// 	out.println(list.get(i)+"<br>");
// }

// List memberList=new ArrayList();
// //한사람의 정보 id,pass,name
// MemberBean mb1=new MemberBean();
// mb1.setId("kim");
// mb1.setPass("1111");
// mb1.setName("김길동");
// //배열 한칸에 저장
// memberList.add(mb1);

// //한사람의 정보 id,pass,name
// MemberBean mb2=new MemberBean();
// mb2.setId("lee");
// mb2.setPass("2222");
// mb2.setName("이길동");
// //배열 한칸에 저장
// memberList.add(mb2);

// //한사람의 정보 id,pass,name
// MemberBean mb3=new MemberBean();
// mb3.setId("admin");
// mb3.setPass("3333");
// mb3.setName("관리자");
// //배열 한칸에 저장
// memberList.add(mb3);

// out.println("배열(컬렉션)의 member개수 :"+memberList.size()+"명<br>");

// for(int i=0;i<memberList.size();i++){
// 	MemberBean mb=(MemberBean)memberList.get(i);
// out.println(mb.getId()+","+mb.getPass()+","+mb.getName()+"<br>");
// }





//세션값 가져와서 변수에 저장
String id=(String)session.getAttribute("id");
// 세션값이 없으면  loginForm.jsp 이동
// if(id==null){
// 	response.sendRedirect("loginForm.jsp");
// }else if(!id.equals("admin")){
// 	response.sendRedirect("main.jsp");
// }

//MemberDAO mdao 객체생성
MemberDAO mdao=new MemberDAO();
//List memberList  =  getMemberList() 메서드호출
List memberList=mdao.getMemberList();
%>
<h1>member/list.jsp</h1>
<h1>회원목록</h1>
<table border="1">
<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입날짜</td></tr>
<%
for(int i=0;i<memberList.size();i++){
	MemberBean mb = (MemberBean)memberList.get(i);
%>
<tr><td><%=mb.getId() %></td><td><%=mb.getPass() %></td>
<td><%=mb.getName() %></td><td><%=mb.getReg_date() %></td></tr>
<%	
}
%>
</table>
</body>
</html>
