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
			<div class="row">
				<div id="about" class="about-section col-lg-8 mx-auto "
					style="padding-top: 50px; margin: auto">
					<form method="post" action="/miniproject/write1"
						id="summernote_item" style = "margin-bottom: 1em; font-size: 1.25rem;">
						<input type="text" name="viewTitle" class="form-control"
							id="subject" placeholder="제목" required /> <br>
						<textarea id="summernote" name="ViewContenxt"></textarea>
						<br>
						<input type="text" name="oneline" class="form-control"
							id="subject" placeholder="한줄평" required />
						<div class="rating" style="max-width: 115px;">
							<input type="radio" name="ViewStar" value=1 id="r1"> <label
								for="r1"></label> <input type="radio" name="ViewStar" value=2
								id="r2"> <label for="r2"></label> <input type="radio"
								name="ViewStar" value=3 id="r3"> <label for="r3"></label>

							<input type="radio" name="ViewStar" value=4 id="r4"> <label
								for="r4"></label> <input type="radio" name="ViewStar" value=5
								id="r5"> <label for="r5"></label>
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