<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="vo.ProdReviewVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- <html lang="en"> -->

<head>
<title>mini project</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.css">

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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/lightbox.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,900,900i"
	rel="stylesheet">
<style type="text/css">
.col-lg-8 p {
	color: #808080;
	margin-top: 0.5rem;
	margin-bottom: 0.5rem;
	text-align: left;
}

.col-lg-8 h2 {
	font-size: 2rem;
	max-width: 80%;
}

.col-lg-8 img {
	max-width: 100%;
}

.dropdown {
	display: inline-block;
	position: relative;
}

.dd-button {
	display: inline-block;
	border: 1px solid gray;
	border-radius: 4px;
	padding: 10px 30px 10px 20px;
	background-color: #ffffff;
	cursor: pointer;
	white-space: nowrap;
}

.dd-button:after {
	content: '';
	position: absolute;
	top: 50%;
	right: 15px;
	transform: translateY(-50%);
	width: 0;
	height: 0;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-top: 5px solid black;
}

.dd-button:hover {
	background-color: #eeeeee;
}

.dd-input {
	display: none;
}

.dd-menu {
	position: absolute;
	top: 100%;
	border: 1px solid #ccc;
	border-radius: 4px;
	padding: 0;
	margin: 2px 0 0 0;
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.1);
	background-color: #ffffff;
	list-style-type: none;
}

.dd-input+.dd-menu {
	display: none;
}

.dd-input:checked+.dd-menu {
	display: block;
}

.dd-menu li {
	padding: 10px 20px;
	cursor: pointer;
	white-space: nowrap;
}

.dd-menu li:hover {
	background-color: #f6f6f6;
}

.dd-menu li a {
	display: block;
	margin: -10px -20px;
	padding: 10px 20px;
}

.dd-menu li.divider {
	padding: 0;
	border-bottom: 1px solid #cccccc;
}
</style>

<!-- 
<style>
	#button {
  display: inline-block;
  background-color: #FF9800;
  width: 50px;
  height: 50px;
  text-align: center;
  border-radius: 4px;
  position: fixed;
  bottom: 30px;
  right: 30px;
  transition: background-color .3s, 
    opacity .5s, visibility .5s;
  opacity: 0;
  visibility: hidden;
  z-index: 1000;
}
#button::after {
  content: "\f077";
  font-family: FontAwesome;
  font-weight: normal;
  font-style: normal;
  font-size: 2em;
  line-height: 50px;
  color: #fff;
}
#button:hover {
  cursor: pointer;
  background-color: #333;
}
#button:active {
  background-color: #555;
}
#button.show {
  opacity: 1;
  visibility: visible;
}

/* Styles for the content section */

.content {
	clear: both;
  width: 90%;
  margin: 50px auto;
  font-family: 'Merriweather', serif;
  font-size: 17px;
  color: #6c767a;
  line-height: 1.9;
  border-style: solid;
    border-width: 1px;
}
@media (min-width: 500px) {
  .content {
    width: 43%;
  }
  #button {
    margin: 30px;
  }
}
.content h1 {
  margin-bottom: -10px;
  color: #03a9f4;
  line-height: 1.5;
}
.content h3 {
  font-style: italic;
  color: #96a2a7;
}

</style>
 -->
</head>

<body id="page-top" class="masthead">

	<%@include file="./navbar.jsp"%>

	<!-- About Section -->
	<section id="about" class="about-section text-center">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<p style="color: white; text-align: left; margin-left: 50px;"">mx
						master</p>
					<br>
					<h2 class="text-white mb-4" style="margin: auto;">${item.viewTitle}</h2>
					<p
						style="color: white; text-align: right; margin-right: 50px; font-size: 0.8rem;"">${item.nickName }<br>2020년
						8월 21일
					</p>
					<hr style="margin: 0px; background-color: white;">
					<div style="padding: 50px; padding-top: 10px;">
						${item.viewContenxt }</div>
					<!-- <p class="text-white-50">Grayscale is a free Bootstrap theme created by Start Bootstrap. It can be yours right now, simply download the template on
					<a href="http://startbootstrap.com/template-overviews/grayscale/">the preview page</a>. The theme is open source, and you can use it for any purpose, personal or commercial.</p> -->
				</div>
			</div>
			<label class="dropdown">

				<div class="dd-button">Dropdown</div> <input type="checkbox"
				class="dd-input" id="test">

				<ul class="dd-menu">
					<li>Action</li>
					<li>Another action</li>
					<li>Something else here</li>
					<li class="divider"></li>
					<li><a href="http://rane.io">Link to Rane.io</a></li>
				</ul>

			</label>
		</div>
	</section>


	<!-- 
	<section id="projects" class="projects-section">
	
		<a id="button"></a>
		
		<div class="content">
			<h3>${item.viewTitle}</h3>
  			<h2>${item.nickName }</h2>
  			
  			${item.viewContenxt }
			
		</div>
	</section>
	 -->





	<!-- Footer -->
	<footer class="bg-black small text-center text-white-50">
		<div class="container">Copyright &copy; Your Website 2019</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

	<!-- Plugin JavaScript -->
	<script
		src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>
	<!-- Custom scripts for this template -->
	<script src="<c:url value="/resources/js/lightbox.js" />"></script>
	<script src="<c:url value="/resources/js/grayscale.js" />"></script>
	<script>
		var btn = $('#button');

		$(window).scroll(function() {
			if ($(window).scrollTop() > 300) {
				btn.addClass('show');
			} else {
				btn.removeClass('show');
			}
		});

		btn.on('click', function(e) {
			e.preventDefault();
			$('html, body').animate({
				scrollTop : 0
			}, '300');
		});
	</script>
</body>
</html>