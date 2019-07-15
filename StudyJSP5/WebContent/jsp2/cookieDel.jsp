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
// 쿠키값 클라이언트에서 가져오기
Cookie cookies[]=request.getCookies();
// 쿠키값이 있으면
// for if 쿠키값 찾기
// 찾은쿠키값 시간 0 설정 
// 클라이언트에 저장
if(cookies!=null){
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("cook")){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
	}
}
// "쿠키값삭제" 메시지 , 이동  cookieTest.jsp
%>
<script type="text/javascript">
alert("쿠키값삭제");
location.href="cookieTest.jsp";
</script>
<h1>jsp2/cookieDel.jsp</h1>
</body>
</html>





