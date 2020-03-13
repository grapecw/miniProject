<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- include libraries(jQuery, bootstrap) -->
<!-- core CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- include summernote css/js-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script
	src="${pageContext.request.contextPath}/resources/js/summernote-ko-KR.js"></script>
<title>글쓰기</title>

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
	href="${pageContext.request.contextPath}/resources/css/grayscale.min.css">

<style type="text/css">
* {
	font-size: 1.25rem;
	font-family: Nunito;
}
p {
  display: block;
/*   margin-top: 1em; */
  margin-bottom: 1em;
  margin-left: 0;
  margin-right: 0;
}

@charset "UTF-8";

.rating {
	margin: 50px auto;
	width: 400px;
}

.rating>* {
	float: right;
}

@
-webkit-keyframes pulse { 50% {
	color: #5e5e5e;
	text-shadow: 0 0 15px #777777;
}

}
@
keyframes pulse { 50% {
	color: #5e5e5e;
	text-shadow: 0 0 15px #777777;
}

}
.rating label {
	height: 40px;
	width: 20%;
	display: block;
	position: relative;
	cursor: pointer;
}

.rating label:nth-of-type(5):after {
	-webkit-animation-delay: 0.25s;
	animation-delay: 0.25s;
}

.rating label:nth-of-type(4):after {
	-webkit-animation-delay: 0.2s;
	animation-delay: 0.2s;
}

.rating label:nth-of-type(3):after {
	-webkit-animation-delay: 0.15s;
	animation-delay: 0.15s;
}

.rating label:nth-of-type(2):after {
	-webkit-animation-delay: 0.1s;
	animation-delay: 0.1s;
}

.rating label:nth-of-type(1):after {
	-webkit-animation-delay: 0.05s;
	animation-delay: 0.05s;
}

.rating label:after {
	-webkit-transition: all 0.4s ease-out;
	transition: all 0.4s ease-out;
	-webkit-font-smoothing: antialiased;
	position: absolute;
	content: "☆";
	color: #444;
	top: 0;
	left: 0;
	width: 10%;
	height: 100%;
	text-align: center;
	font-size: 20px;
	-webkit-animation: 1s pulse ease;
	animation: 1s pulse ease;
}

.rating label:hover:after {
	color: #5e5e5e;
	text-shadow: 0 0 15px #5e5e5e;
}

.rating input {
	display: none;
}

.rating input:checked+label:after, .rating input:checked ~ label:after {
	content: "★";
	color: #F9BF3B;
	text-shadow: 0 0 20px #F9BF3B;
}
@import url(https://fonts.googleapis.com/css?family=Montserrat:400,700);

html{    background:url(http://thekitemap.com/images/feedback-img.jpg) no-repeat;
  background-size: cover;
  height:100%;
}

#feedback-page{
	text-align:center;
}

#form-main{
	width:100%;
	float:left;
	padding-top:0px;
}

#form-div {
	background-color:rgba(72,72,72,0.4);
	padding-left:35px;
	padding-right:35px;
	padding-top:35px;
	padding-bottom:50px;
	width: 450px;
	float: left;
	left: 50%;
	position: absolute;
  margin-top:30px;
	margin-left: -260px;
  -moz-border-radius: 7px;
  -webkit-border-radius: 7px;
}

.feedback-input {
	color:#3c3c3c;
	font-family: Helvetica, Arial, sans-serif;
  font-weight:500;
	font-size: 18px;
	border-radius: 0;
	line-height: 22px;
	background-color: #fbfbfb;
	padding: 10px 10px 10px 10px;
	margin-bottom: 10px;
	width:100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
  border: 3px solid rgba(0,0,0,0);
}

.feedback-input:focus{
	background: #fff;
	box-shadow: 0;
	border: 3px solid #3498db;
	color: #3498db;
	outline: none;
  	padding: 10px 10px 10px 10px;
}

.focused{
	color:#30aed6;
	border:#30aed6 solid 3px;
}

/* Icons ---------------------------------- */
#name{
	
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

#name:focus{
	
	background-size: 30px 30px;
	background-position: 8px 5px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

#email{
	
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

#email:focus{
	
	background-size: 30px 30px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

#comment{
	
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

textarea {
    width: 100%;
    height: 150px;
    line-height: 150%;
    resize:vertical;
}

input:hover, textarea:hover,
input:focus, textarea:focus {
	background-color:white;
}

#button-blue{
	font-family: 'Montserrat', Arial, Helvetica, sans-serif;
	float:left;
	width: 100%;
	border: #fbfbfb solid 4px;
	cursor:pointer;
	background-color: #3498db;
	color:white;
	font-size:24px;
	padding-top:22px;
	padding-bottom:22px;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	transition: all 0.3s;
  margin-top:-4px;
  font-weight:700;
}

#button-blue:hover{
	background-color: rgba(0,0,0,0);
	color: #0493bd;
}
	
.submit:hover {
	color: #3498db;
}
	
.ease {
	width: 0px;
	height: 74px;
	background-color: #fbfbfb;
	-webkit-transition: .3s ease;
	-moz-transition: .3s ease;
	-o-transition: .3s ease;
	-ms-transition: .3s ease;
	transition: .3s ease;
}

.submit:hover .ease{
  width:100%;
  background-color:white;
}

@media only screen and (max-width: 580px) {
	#form-div{
		left: 3%;
		margin-right: 3%;
		width: 88%;
		margin-left: 0;
		padding-left: 3%;
		padding-right: 3%;
	}
}

body {
	background-color: #111;
}
</style>

<script>
	$(document).ready(function() {
		$('#summernote').summernote({
			placeholder : 'content',
			height : 300,
			minHeight : null,
			maxHeight : null,
			focus : true,
			lang : 'ko-KR',
			callbacks : {
				onImageUpload : function(files, editor, welEditable) {
					for (var i = files.length - 1; i >= 0; i--) {
						sendFile(files[i], this);
					}
				}
			}

		});
	});
</script>
<%@include file="./navbar.jsp"%>
</head>
<body id="page-top" class="masthead">

	<br>
	<br>
	<br>
	<section style="padding: 30px; margin: 20px">
		<div class="container">
			<div id="form-main" class="row">
				<div id="form-div about" class="about-section col-lg-8 mx-auto "
					style="padding-top: 50px; margin: auto">
					<form method="post" action="/miniproject/write1"
						id="summernote_item" style = "margin-bottom: 1em; font-size: 1.25rem;">
						 <input name="viewTitle" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" 
						 placeholder="제목" required/>
			<!-- 			<input type="제목" name="viewTitle" class="form-control"
							id="subject" placeholder="제목" required /> <br> -->
						<textarea id="summernote" name="ViewContenxt"></textarea>
						<br>
						<input name="oneline" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" 
						 placeholder="한줄 평" required/>
						<div class="rating" style="max-width: 115px;">
							<input type="radio" name="ViewStar" value=1 id="r1"> 
							<label for="r1"></label> 
							<input type="radio" name="ViewStar" value=2 id="r2"> 
							<label for="r2"></label> 
							<input type="radio" name="ViewStar" value=3 id="r3"> 
							<label for="r3"></label>
							<input type="radio" name="ViewStar" value=4 id="r4">
							<label for="r4"></label> 
							<input type="radio" name="ViewStar" value=5 id="r5"> 
							<label for="r5"></label>
						</div>
						<input type="hidden" name="prodID" value="${ requestScope.prodID }">
						<br>
						<br>
						<br>
						
						<input id="subBtn" type="button" value="글 작성"
							style="float: right;" onclick="goWrite(this.form)" />
					</form>
				</div>
			</div>
		</div>
	</section>

	<script>
		function goWrite(frm) {
			var title = frm.viewTitle.value;
			var content = frm.ViewContenxt.value;

			if (title.trim() == '') {
				alert("제목을 입력해주세요");
				return false;
			}
			if (content.trim() == '') {
				alert("내용을 입력해주세요");
				return false;
			}
			frm.submit();
		}
		function sendFile(file, el) {
			var form_data = new FormData();
			form_data.append('file', file);
			$
					.ajax({
						data : form_data,
						type : "POST",
						url : '/miniproject/image ',
						cache : false,
						contentType : false,
						enctype : 'multipart/form-data',
						processData : false,
						success : function(url) {
							console.log(url);
							$(el).summernote('editor.insertImage', url);
							$('#imageBoard > ul')
									.append(
											'<li><img src="'+url+'" width="480" height="auto"/></li>');
						}
					});
		}
	</script>

</body>
</html>