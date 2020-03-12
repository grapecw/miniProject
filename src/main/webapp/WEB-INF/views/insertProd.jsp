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
			<input type="text" name="prodID" class="form-control" id="subject" placeholder="제품 id" required/> <br>
			<input type="text" name="manufacturer" class="form-control" id="subject" placeholder="제조사"/> <br>
			<input type="text" name="PType" class="form-control" id="subject" placeholder="제품 타입" required/> <br>
			<input type="text" name="PName" class="form-control" id="subject" placeholder="제품 이름" required/> <br>
			<textarea name="PPlain" placeholder="제품 설명"></textarea><br>
			<textarea name="Pspec1" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec2" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec3" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec4" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec5" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec6" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec7" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec8" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec9" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec10" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec11" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec12" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec13" placeholder="제품 스펙"></textarea><br>
			<textarea name="Pspec14" placeholder="제품 스펙"></textarea><br>
			
			<input type="submit" value="네"> 
			
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