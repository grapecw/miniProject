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
#listoneform {
	margin-top: 150px;
	padding-top: 50px;
	text-align: center;
	margin-left: 250px;
	margin-right: 80px;
	width: 830px;
	background-color: #343a40;
}

#update_table {
	margin-bottom: 0px;
}

table-td {
	padding: 0px;
}

#commentform {
	text-align: center;
}

#columnview {
	text-align: center;
}

#comment_insert {
	margin-left: auto;
	margin-right: auto;
}

#board3 {
	 padding-bottom: 50px;
}

#commentInsertspan {
	vertical-align: middle;
	padding-top:10px;
}
</style>
<!-- core CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom fonts for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"">
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/grayscale.css">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>


<%@include file="./navbar.jsp"%>

</head>

<body class="masthead">

	<!-- 게시글 상세 보기 페이지 -->
	<div id="listoneform">
		<div class="listonediv" id="board3">
			<form method="post" action="/miniproject/talk/update" id="columnview"
				style="display: none; height: 500px">
			<input type="hidden" name="id" value="${column.id}">
			<table class="table table-dark " id="update_table">
			<tr>
				<th>작성자</th>
				<td><input id="columnwriter" style="width: 723px;"
							name="writer" placeholder="이름을 입력해주세요" value="${column.writer }"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input id="columntitle" style="width: 723px;"
							name="title" placeholder="제목을 입력해주세요" value="${column.title }"></td>
			<tr>
			<th>내용</th>
			<td><textarea id="columncontents" id="contents" rows="15"
								cols="100" name="content" placeholder="내용을 입력해주세요">${column.content }</textarea></td>
			</tr>
			</table>

			<input type="hidden" name="format" value="update"> 
			
			<c:choose>
			
			<c:when test="${!empty sessionScope.login}">
				
			</c:when>
			<c:otherwise>
			
			</c:otherwise>
			</c:choose>
			
			
			<input type="button" value="목록으로"	onclick="location.href='/miniproject/talk'">
			</form>
<br><br>

<!-- Reply Form {s} -->
<div class="my-3 p-3 bg-white rounded shadow-sm" style="width:750px;text-align:center; margin-left:45px;">
    <div class="container">
        <label for="content">Comment</label>
        <div class="commentInsertForm">
            <div id="comment_insert">
              
               <input type="hidden" name="boardID" value="${column.id}"/>
               <textarea rows="2" class="form-control" id="comm_content" name="commentInsertForm" placeholder="내용을 입력하세요." ></textarea>
               <button class="btn" type="button" name="commentInsertBtn" onclick="replybutton();">등록</button>
       
             </div>
        </div>
    </div>
    <br>
 <!--Reply List {s}  -->
	<div class="container">
		<label for="content">Comment List</label>
       	<div class="border-bottom pb-2 mb-0" style="text-align: center;">
       		<div id="relist"></div>

       	</div>
    </div>
	</div>
</div>
</div>
		

	<script>
		/* //글 상세보기 출력	 */
	window.onload = function () {
		var id = <%=request.getParameter("talkid")%>;
		if ( id != null) {
			document.getElementById("columnview").style.display = 'block';
		}
		commentList();
	}
		
	/* 댓글 버튼 구현 , 서버로 전달 */
	
	function replybutton(){
		var replycontent = document.getElementById('comm_content').value;
		console.log("replycontent"+replycontent);
		var xhr = new XMLHttpRequest();
 		xhr.onload = function(event) {
 			if (xhr.status == 200) {
 				var str = xhr.responseText;
 				if(str == "success"){
 					//alert("댓글 등록 성공");
 					commentList();
 				} 

 			}else {
					alert("로그인 해주세요");
				}
 		};
 		var temp = "/miniproject/comment/insert?content="+replycontent + "&boardID=" + ${column.id};
 		xhr.open('GET', temp, true);
 		//xhr.open('POST', '/miniproject/comment/insert', true);
 		//xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
 		xhr.send(replycontent);
 	};

 	function commentList(){
 		//alert("commentList");
 		var request = new XMLHttpRequest();
		var formdata = new FormData();
		
		formdata.enctype='multipart/form-data';
		formdata.method='post';
		formdata.action='/miniproject/comment/list';
		
		//formdata.append('boardID',${column.id});
		formdata.append('boardID',0);
		request.open('GET', '/miniproject/comment/list?boardID='+${column.id}, true);
		request.send(formdata);

		request.onload = function(event) {
			if (request.status == 200) {
				var str = request.responseText;
				var reviewList = JSON.parse(str);
				console.log(reviewList);
				var target = document.getElementById("relist");
				target.innerHTML = "";
				if(reviewList.length !=0){
					for(var i in reviewList){	
						target.innerHTML += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
					target.innerHTML += "<td width=100>" + '작성자'+reviewList[i].writer + "</td> <br>";
					target.innerHTML += "<td width=100>" + '작성일'+reviewList[i].writedate + "</td> <br>";
					target.innerHTML += "<td width=100>" + '내용'+ reviewList[i].content + "</td> ";
													
					}
				}else{
					alert("댓글이 하나도 없어요");
				}
				}	
				
			
		}
 	}

	</script>

</body>
</html>