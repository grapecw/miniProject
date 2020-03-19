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

#insertform{
margin-top:150px;
padding-top:50px;
text-align:center;
margin-left: 250px;
margin-right: 80px;
text-align:center;
width:830px;
background-color:#343a40;
}

#insert_table{
margin-bottom:0px;
}
table-td{
padding:0px;
}
 
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
	
<!-- 게시글 작성 -->
<div id="insertform">
<div class="boardlist" id="board2">

	<c:choose>
			
			<c:when test="${!empty sessionScope.login}">
	<form method="post" action="/miniproject/talk/insert2" id="colwrite" style="height:580px;">
	<table class="table table-dark " id= "insert_table">
   	 <tr>
    	<th>작성자</th>
    	<td><textarea id="columnwriter"  rows="1" cols="100" name="writer" 
    		placeholder="이름을 입력해주세요"></textarea></td>
  		</tr>
  		<tr>
    	<th>제목</th>
    	<td><textarea id="columntitle" rows="1" cols="100" name="title" placeholder="제목을 입력해주세요"></textarea></td>
  		<tr>
    	<th>내용</th>
    	<td><textarea id="columncontents" id="contents" rows="15" cols="100" name="content" placeholder="내용을 입력해주세요"></textarea></td>
  	</tr>
	</table>  
	
	<input type="hidden" name="format" value="insert">
	<input type="submit" value="저장"> 
	<input	type="reset" value="재작성">
	<button><a href="/miniproject/talk">목록</a></button>

	</form>
	
	
			</c:when>
			<c:otherwise>

				<script>
				
					alert("로그인 해주세요.");
					
					
					window.location.href='/miniproject/talk';
					
				</script>
			</c:otherwise>
			</c:choose>
</div>
</div> 

	

	
</body>
</html>