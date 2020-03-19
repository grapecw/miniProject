<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.List, java.util.ArrayList, vo.TalkVO, dao.PagingControl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  
#listtable{
margin-left: 200px;
margin-right: 80px;
margin-top:200px;
text-align:center;
width:930px;
}
#page{
color: white;
}
table{
 width:500px;
 hight:30px;
 font-size: 15px;
}
/* 
.button {
  display: inline-block;
  vertical-align: top;
  height: 48px;
  line-height: 46px;
  padding: 0 25px;
  font-family: inherit;
  font-size: 15px;
  color: #bbb;
  text-align: center;
  text-decoration: none;
  text-shadow: 0 0 2px rgba(0, 0, 0, 0.7);
  background-color: #303030;
  background-clip: padding-box;
  border: 1px solid;
  border-color: #202020 #1a1a1a #111;
  border-radius: 25px;
  background-image: -webkit-linear-gradient(top, #3d3d3d, #272727);
  background-image: -moz-linear-gradient(top, #3d3d3d, #272727);
  background-image: -o-linear-gradient(top, #3d3d3d, #272727);
  background-image: linear-gradient(to bottom, #3d3d3d, #272727);
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.09), 0 1px 3px rgba(0, 0, 0, 0.3);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.09), 0 1px 3px rgba(0, 0, 0, 0.3);
}
.button:hover {
  background-color: #363636;
  background-image: -webkit-linear-gradient(top, #404040, #2a2a2a);
  background-image: -moz-linear-gradient(top, #404040, #2a2a2a);
  background-image: -o-linear-gradient(top, #404040, #2a2a2a);
  background-image: linear-gradient(to bottom, #404040, #2a2a2a);
} */
     
</style>
  <!-- core CSS -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

  <!-- Custom fonts for this template -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"">
  <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/grayscale.min.css">


  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body class="masthead">

<%@include file="./navbar.jsp" %>

</head>
<body>
<div class="container" id="listtable">
	<div class="boardlist" id="board1">

    <!-- 게시판 기본 -->
    <table class="table table-dark table-hover">
       <thead>
        <tr>
			<th width="10%">NO</th>
			<th width="40%">제목</th>
			<th width="20%">작성자</th>
			<th width="20%">작성일</th>
			<th width="10%">조회수</th>
        </tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${requestScope.list }">
			<tr>
				<td>${item.id}</td>
				<td id="title" onclick="location.href='/miniproject/talk/listOne?talkid=${item.id}'">${item.title}</td>
				<td onclick="location.href='/miniproject/talk/writer?searchkeyword=${item.writer}'">${item.writer}</td>
				<td>${item.writedate}</td>
				<td>${item.cnt}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	
	<div id="page">
	
	<%
	PagingControl paging = (PagingControl)session.getAttribute("paging");
	%>
	
	<% if(paging.isPreData( )) { %>
		<span onclick="location.href='/miniproject/talk?pagenum=<%=paging.getPageStart( ) - 1%>'">◀</span>
	<%} %>
	
	<% for(int i=paging.getPageStart( );i<paging.getPageEnd( )+1;i++) {%>
		<span onclick="location.href='/miniproject/talk?pagenum=<%=i%>'"> <%= i %> </span>
	<% } %>
	
	<% if(paging.isNextData( )) {
		
		%>
		<span onclick="location.href='/miniproject/talk?pagenum=<%=paging.getPageEnd( )+1%>'">▶</span>
	<%} %>
	</div>
	<div>
	<span style="float:right">
	<button  onclick="location.href='/miniproject/talk/insert'">글쓰기</button> </span>
	<form method = "GET" action = "/miniproject/talk/search" id ="keysearch">
		<select name="searchtype">
        	<option>글쓴이</option>
        	<option>제목</option>
        	<option>내용</option>
    	</select>
    	<input type="text" name="searchkeyword">
    	<input type="submit" value="검색"> 
    	</form>
	
    	
	
	</div>
	</div>	<script>
	
	function displayDiv(type) {
		if(type == 1){
			if(document.getElementById("columnview").style.display = 'block') {
				document.getElementById("columnview").style.display = 'none';
				document.getElementById("colwrite").style.display = 'block';
			}
			else {
				document.getElementById("colwrite").style.display = 'block';
			}
		}
		else if (type == 0) {
			document.getElementById("colwrite").style.display = 'none';
			document.getElementById("columnview").style.display = 'none';
		}
		
	}
	
	window.onload = function () {
		var id = <%=request.getParameter("talkid")%>;
		if ( id != null) {
			document.getElementById("columnview").style.display = 'block';
		}
	}
	</script>

</body>
</html>