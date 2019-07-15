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
// 세션:연결정보 저장,페이지 상관없이 값저장,서버에 저장,보안상 중요한 데이터 저장,로그인 인증
// 쿠키:특별기능 없음,페이지 상관없이 값저장,클라이언트에 저장,보안상 중요하지않은 데이터 저장,서버에 부하줄이기
// 쿠키 객체 생성
// Cookie cookie=new Cookie("이름",값)
// cookie.getName() 쿠키이름가져오기
// cookie.getValue() 쿠키이름가져오기
// cookie.setMaxAge(초)  쿠키저장유지 시간

//쿠키값 가져오기
String cookvalue="";
Cookie cookies[]=request.getCookies();
if(cookies!=null){
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("cook")){
			cookvalue=cookies[i].getValue();
		}
	}
}

%>
<h1>jsp2/cookieTest.jsp</h1>
쿠키값 : <%=cookvalue %><br>
<input type="button" value="쿠키값저장" 
onclick="location.href='cookieSet.jsp'">
<input type="button" value="쿠키값삭제" 
onclick="location.href='cookieDel.jsp'">
</body>
</html>



