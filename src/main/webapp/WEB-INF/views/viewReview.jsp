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

</head>

<body id="page-top" class="masthead">

	<%@include file="./navbar.jsp"%>

	<!-- About Section -->
	<section style="margin-bottom: 160px;">
		<div class="container">
			<div class="row">
				<div id="about" class="about-section text-center col-lg-8 mx-auto ">
					<p style="color: white; text-align: left; margin-left: 50px;"">${ prodvo.pname }</p>
					<br>
					<h2 class="text-white mb-4" style="margin: auto;">${item.viewTitle}</h2>
					<p
						style="color: white; text-align: right; margin-right: 50px; font-size: 0.8rem;"">${item.nickName }
						<br>${item.viewDate }
					</p>
					<br>
					<hr style="margin: 0px; background-color: white;">
					<div style="padding: 50px; padding-top: 10px;">
						${item.viewContenxt }</div>
					<!-- <p class="text-white-50">Grayscale is a free Bootstrap theme created by Start Bootstrap. It can be yours right now, simply download the template on
					<a href="http://startbootstrap.com/template-overviews/grayscale/">the preview page</a>. The theme is open source, and you can use it for any purpose, personal or commercial.</p> -->
					<hr style="margin: 0px; background-color: white;">
					<%-- <div style="padding: 50px; padding-top: 10px;">
						<p>
							${item.oneline }
						</p>
					</div> --%>
					<br><br>
					<c:forEach begin="0" end="4" step="1" varStatus="status">
    					<c:choose>
         					<c:when test = "${status.index < item.viewStar}">
								<img alt="" src="/miniproject/resources/img/star_on.png" style="width : 23px; height : 23px">
         					</c:when>
         					<c:otherwise>
         						<img alt="" src="/miniproject/resources/img/star.png" style="width : 23px; height :23px">
         					</c:otherwise> 
      					</c:choose> 
					</c:forEach>
					<br>
					<br>

					<c:if test="${!empty sessionScope.login}">
						<c:if test="${sessionScope.login.IDCord == item.idCord}">
						<button onclick="location.href='/miniproject/viewReview/update?reViewID=${item.reViewID }'"> 수정 </button>
						<button onclick="location.href='/miniproject/viewReview/delete?reViewID=${item.reViewID }'"> 삭제 </button>
						<%-- <table style="margin: auto;">
						<tr>
							<td>
								<form method="post" action="/miniproject/viewReview/update">
									<input type="hidden" name="vo" value="${item} ">
									<button> 수정 </button>
								</form>
							</td>
							<td>
								<button onclick="location.href='/miniproject/viewReview/delete?reViewID=${item.reViewID }'"> 삭제 </button>
							</td>
						</tr>
						</table> --%>
						</c:if> 
					</c:if>
				</div>
			</div>
		</div>
	</section>

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