<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!-- <html lang="en"> -->

<head>
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background: #353540;
} 

.l-container {
  display: grid;
  grid-template-columns: 200px 200px 200px 200px;
  grid-gap: 30px;
  width: 100%;
  max-width: 1200px;
  padding: 30px;
  
}
/* @media screen and (max-width: 760px) {
  .l-container {
    grid-template-columns: repeat(2, 1fr);
  }
}
 */
.b-game-card {
  position: relative;
  z-index: 1;
  width: 100%;
  padding-bottom: 150%;
  perspective: 1000px;
}
.b-game-card__cover {
  position: absolute;
  z-index: 1;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  overflow: hidden;
  background-image: linear-gradient(120deg, #f6d365 0%, #fda085 100%);
  background-size: cover;
  perspective-origin: 50% 50%;
  transform-style: preserve-3d;
  transform-origin: top center;
  will-change: transform;
  transform: skewX(0.001deg);
  transition: transform 0.35s ease-in-out;
}
.b-game-card__cover::after {
  display: block;
  content: "";
  position: absolute;
  z-index: 100;
  top: 0;
  left: 0;
  width: 100%;
  height: 120%;
  background: linear-gradient(226deg, rgba(255, 255, 255, 0.4) 0%, rgba(255, 255, 255, 0.4) 35%, rgba(255, 255, 255, 0.2) 42%, rgba(255, 255, 255, 0) 60%);
  transform: translateY(-20%);
  will-change: transform;
  transition: transform 0.65s cubic-bezier(0.18, 0.9, 0.58, 1);
}
.b-game-card:hover .b-game-card__cover {
  transform: rotateX(7deg) translateY(-6px);
}
.b-game-card:hover .b-game-card__cover::after {
  transform: translateY(0%);
}
.b-game-card::before {
  display: block;
  content: "";
  position: absolute;
  top: 5%;
  left: 5%;
  width: 90%;
  height: 90%;
  background: rgba(0, 0, 0, 0.5);
  box-shadow: 0 6px 12px 12px rgba(0, 0, 0, 0.4);
  will-change: opacity;
  transform-origin: top center;
  transform: skewX(0.001deg);
  transition: transform 0.35s ease-in-out, opacity 0.5s ease-in-out;
}
.b-game-card:hover::before {
  opacity: 0.6;
  transform: rotateX(7deg) translateY(-6px) scale(1.05);
}


</style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>mini project</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.css">

<!-- Custom fonts for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css">
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/grayscale.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/lightbox.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/agency.css"
	rel="stylesheet">

</head>

<body id="page-top" class="masthead">

  <!-- Navigation -->

	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="/miniproject">logo-home
				button</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/miniproject/notebookMenu">Notebook</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/miniproject/tabletMenu">Tablet</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/miniproject/phoneMenu">Phone</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/miniproject/elseMenu">Else</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#signup"> <img
							src="/miniproject/resources/img/login.png" width="20px"
							height="20px"></a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#signup"> <img
							src="/miniproject/resources/img/logout.png" width="20px"
							height="20px"></a></li>

				</ul>
			</div>
		</div>
	</nav>

  <!-- Header -->
<!-- <header > -->
<section id="partout" style="margin-top : 200px;">
<div class="l-container">
  <div class="b-game-card" onclick="location.href='/miniproject/phoneSAMSUNG';">
    <div class="b-game-card__cover" style="background-image: url(/miniproject/resources/img/SAMSUNGLOGO2.png);" ></div>
  </div>
  <div class="b-game-card" onclick="location.href='/miniproject/phoneLG';">
    <div class="b-game-card__cover" style="background-image: url(/miniproject/resources/img/LGLOGO.png);"></div>
  </div>
  <div class="b-game-card" onclick="location.href='/miniproject/phoneAPPLE';">
    <div class="b-game-card__cover" style="background-image: url(/miniproject/resources/img/APPLELOGO.png);"></div>
  </div>
  <div class="b-game-card" onclick="location.href='/miniproject/phoneHUAWEI';">
    <div class="b-game-card__cover" style="background-image: url(/miniproject/resources/img/HUAWEILOGO.png);"></div>
  </div>
  <div class="b-game-card" onclick="location.href='/miniproject/phoneXIAOMI';">
    <div class="b-game-card__cover" style="background-image: url(/miniproject/resources/img/XIAOMILOGO.png);"></div>
  </div>
  <div class="b-game-card" onclick="location.href='/miniproject/phoneSONY';">
    <div class="b-game-card__cover" style="background-image: url(/miniproject/resources/img/SONYLOGO.jpg);"></div>
  </div>
  <div class="b-game-card" onclick="location.href='/miniproject/phoneGOOGLE';">
    <div class="b-game-card__cover" style="background-image: url(/miniproject/resources/img/GOOGLELOGO.jpg);"></div>
  </div>
  <div class="b-game-card">
    <div class="b-game-card__cover" style="background-image: url(https://andrewhawkes.github.io/codepen-assets/steam-game-cards/game_2.jpg);"></div>
  </div>
</div>
</section>
<!-- </header> -->

	<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

	<!-- Plugin JavaScript -->
	<script
		src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>
	<!-- Custom scripts for this template -->
	<script src="<c:url value="/resources/js/lightbox.js" />"></script>
	<script src="<c:url value="/resources/js/grayscale.js" />"></script>
	<script src="<c:url value="/resources/js/agency.js" />"></script>
</body>


</html>