<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="board.BoardDAO"%>
<%@page import="board.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>board/fwritePro.jsp</h1>
<%
// 한글처리
// request.setCharacterEncoding("utf-8");
// 파일업로드 cos.jar 설치 
// MultipartRequest 클래스 파일 사용 객체생성
// MultipartRequest multi=
// new MultipartRequest(request,업로드할 폴더경로,파일크기,한글처리,동일파일이름 변경);
// 업로드 할 폴더 만들기   WebContent  - upload
String uploadPath=request.getRealPath("/upload");
System.out.println("업로드폴더경로 : "+uploadPath);
int maxSize=5*1024*1024; //5M
MultipartRequest multi=
new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());

// 파라미터 가져와서 변수에 저장
String name=multi.getParameter("name");
String pass=multi.getParameter("pass");
String subject=multi.getParameter("subject");
String content=multi.getParameter("content");
String file=multi.getFilesystemName("file");
// 패키지 board 자바파일 BoardBean 만들기
// BoardBean bb 객체생성 
// BoardBean 변수 <- 파라미터 저장
BoardBean bb=new BoardBean();
bb.setName(name);
bb.setPass(pass);
bb.setSubject(subject);
bb.setContent(content);
bb.setFile(file);

// 패키지 board 자바파일 BoardDAO 만들기
// BoardDAO bdao 객체생성
BoardDAO bdao=new BoardDAO();
// insertBoard(bb) 메서드 만들고 호출
bdao.insertBoard(bb);
// list.jsp 이동
response.sendRedirect("list.jsp");
%>
</body>
</html>







