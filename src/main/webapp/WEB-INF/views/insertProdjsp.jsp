<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>글쓰기</title>

<%@include file="./grayscale.jsp"%>

</head>

<%@include file="./navbar.jsp"%>
<body id="page-top" class="masthead">
	
	<br>
	<br>
	<br>

	<div style="width: 60%; margin: auto;">
		<form method="post" action="/miniproject/insertProd" id="summernote_item">
			
		</form>
	</div>

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
	href="${pageContext.request.contextPath}/resources/css/grayscale.min.css">

</body>
</html>