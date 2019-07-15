<%@page import="board.BoardBean"%>
<%@page import="java.util.List"%>
<%@page import="board.BoardDAO"%>
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
//BoardDAO bdao 객체생성
BoardDAO bdao=new BoardDAO();
// 게시판 전체 글 개수   select count(*) from board
// int count=  getBoardCount()
int count=bdao.getBoardCount();

// 한페이지에 보여줄 글개수
int pageSize=3;
// 현페이지 번호
String pageNum=request.getParameter("pageNum");
// 페이지번호가 없으면  "1" 설정
if(pageNum==null){
	pageNum="1";
}
int currentPage=Integer.parseInt(pageNum);
// 시작하는 행번호 구하기    -    *    +
// currentPage  pageSize 조합 => 시작하는 행번호 
//      1          10       => 0*10 +1=> 0 +1 => 1
//      2          10       => 1*10 +1=> 10+1 => 11
//      3          10       => 2*10 +1=> 20+1 => 21
int startRow=(currentPage-1)*pageSize+1 ;    

// 끝나는 행번호 구하기   1페이지 10 2페이지 20 3페이지 30
int endRow=currentPage*pageSize;

//List boardList  =  getBoardList(시작행,한화면에 보여줄 글개수) 메서드호출
//select * from board order by num desc limit 시작행-1,한화면에 보여줄 글개수
List boardList=null;
if(count!=0){
	boardList=bdao.getBoardList(startRow, pageSize);
}
%>
<h1>board/list.jsp</h1>
<h2>게시판 글목록 [게시판 전체 글수 : <%=count %>]</h2>
<h3><a href="writeForm.jsp">게시판 글쓰기</a></h3>
<table border="1">
<tr><td>글번호</td><td>제목</td><td>작성자</td>
    <td>날짜</td><td>조회수</td></tr>
    <%
    if(count!=0){
    for(int i=0;i<boardList.size();i++){
    	BoardBean bb=(BoardBean)boardList.get(i);
    	%>
 <tr><td><%=bb.getNum() %></td>
     <td><a href="content.jsp?num=<%=bb.getNum()%>&pageNum=<%=pageNum%>"><%=bb.getSubject() %></a></td>
     <td><%=bb.getName() %></td><td><%=bb.getDate() %></td>
     <td><%=bb.getReadcount() %></td></tr>   	
    	<%
    }
    }
    %>
    
</table>
<%
if(count!=0){
	// 전체 페이지 수 구하기   
	// 전체글개수 50 한화면에 보여줄 글개수 10 => 전체페이지수 5
	//         50     /      10        => 5  +0=> 5 
	//      51 ~ 59   /      10        => 5  +1=> 6
// 	int pageCount=전체글개수/한화면에 보여줄글개수+(조건?참:거짓);
	int pageCount=count/pageSize+(count%pageSize==0?0:1);
	// 한화면에 보여줄 페이지 개수 설정
	int pageBlock=3;
	// 한화면에 보여줄 시작페이지번호 구하기   -  /  *  +
	//  현페이지 번호 1~10 -> 1   11~20 -> 11
	//  currentPage   pageBlock   => 한화면에 보여줄 시작페이지번호
	//      1 ~ 10       10       => (현-1)/10*10 +1=>0*10 +1 =>0  +1=>1
	//      11 ~ 20      10       => (현-1)/10*10 +1=>1*10 +1 =>10 +1=>11
	//      21 ~ 30      10       => (현-1)/10*10 +1=>2*10 +1 =>20 +1=>21
	int startPage=(currentPage-1)/pageBlock*pageBlock+1;

	// 한화면에 보여줄 끝페이지번호 구하기  + -
	//    startPage      pageBlock => 1 + 10 -1=>10
	//    startPage      pageBlock => 11 + 10 -1=>20
	//    startPage      pageBlock => 21 + 10 -1=>30
	int endPage=startPage+pageBlock-1;	
	if(endPage > pageCount){
		endPage=pageCount;
	}
	
	//[이전]  -10  시작페이지번호   한화면에 보여줄 페이지수 비교
	if(startPage > pageBlock){
		%><a href="list.jsp?pageNum=<%=startPage-pageBlock%>">[이전]</a><%
	}
    // 1 2 3 4 ...10
    for(int i=startPage;i<=endPage;i++){
    	%><a href="list.jsp?pageNum=<%=i%>"><%=i%></a><%
    }
    // [다음] +10  끝페이지번호   전체페이지개수 비교
    if(endPage < pageCount){
    	%><a href="list.jsp?pageNum=<%=startPage+pageBlock%>">[다음]</a><%
    }
}
%>
<!--         1 2 3 4 .....10 [다음] -->
<!--  [이전] 11 12 13 14 15 .... 20 [다음] -->

</body>
</html>


