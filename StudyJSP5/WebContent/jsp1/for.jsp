<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jsp1/for.jsp</h3>
arr[0]=java<br>
arr[1]=jsp<br>
arr[2]=html<br>
arr[3]=oracle<br>
<%
out.println("a="+a);
//배열변수 arr 선언  저장된 값 "java" "jsp" "html" "oracle"
String arr[]={"java", "jsp", "html" ,"oracle"};
String arr2[]=new String[]{"java", "jsp", "html" ,"oracle"};
String arr3[]=new String[4];
arr3[0]="java";
arr3[1]="jsp";
arr3[2]="html";
arr3[3]="oracle";

for(int i=0;i < arr.length;i++){
	out.println("arr["+i+"]="+arr[i]+"<br>");
}
for(int i=0;i < arr.length;i++){
	%>
	arr[<%=i %>]=<%=arr[i] %><br>
	<%
}
%>
<table border="1">
<tr><td>번호</td><td>과목</td></tr>
<tr><td>0</td><td>java</td></tr>
<tr><td>1</td><td>jsp</td></tr>
<tr><td>2</td><td>html</td></tr>
<tr><td>3</td><td>oracle</td></tr>
</table>
<table border="1">
<tr><td>번호</td><td>과목</td></tr>
<%
for(int i=0;i<arr.length;i++){
	%>
	<tr><td>arr[<%=i %>]</td><td><%=arr[i] %></td></tr>
	<%
}
%>
</table>
<%!
int a=10;//전페이지 영역에서 사용하는 전역변수 선언
//메서드() 선언
%>


</body>
</html>