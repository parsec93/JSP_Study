<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jsp1/testPro3.jsp</h3>
<%
//request.getParameter 사용전에  한글처리
request.setCharacterEncoding("utf-8");

//request : 서버에서 기억장소 자동을생성 요청정보 저장 내장객체(기억장소)
//request.getParameter("파라미터이름,태그이름") => String 형
String name=request.getParameter("name");
String num=request.getParameter("num");
String gen=request.getParameter("gen");
//String hob=request.getParameter("hob");
String hob[]=request.getParameterValues("hob");
String intro=request.getParameter("intro");
String hak=request.getParameter("hak");
%>
이름:<%=name %><br>
숫자:<%=Integer.parseInt(num)+100 %><br>
성별:<%=gen %><br>
<%-- 취미선택(배열)개수:<%=hob.length %><br> --%>
취미:<%
// hob 비어있지 않으면=>null이 아니면
if(hob != null){
	for(int i=0;i < hob.length;i++){
		//out.println(hob[i]);
		%>
		<%=hob[i] %>
		<%
	}
}
 %><br>
자기소개:<%=intro %><br>
학년:<%=hak %><br>
</body>
</html>





