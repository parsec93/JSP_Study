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
String language="korea";
// 쿠키값 가져오기
Cookie cookies[]=request.getCookies();
// 비어있지 않으면 for if 쿠키이름.equals("clang")
//  language변수 = 찾은 쿠키 값
if(cookies!=null){
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("clang")){
			language=cookies[i].getValue();
		}
	}
}
if(language.equals("korea")){
	%><h2>안녕하세요  이것은 쿠키 예제입니다.</h2><%
}else{
	%><h2>Hello,This is Cookie example.</h2><%
}
%>
<h1>jsp2/cookieForm.jsp</h1>
<form action="cookiePro.jsp" method="post" name="fr">
<input type="radio" name="lang" value="korea" <%if(language.equals("korea")){%>checked<%}%>>한국어 페이지 보기
<input type="radio" name="lang" value="english" <%if(language.equals("english")){%>checked<%}%>>영어 페이지 보기
<input type="submit" value="언어설정">
</form>
</body>
</html>

