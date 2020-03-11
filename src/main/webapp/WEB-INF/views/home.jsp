<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <html lang="en"> -->

<head>
<title>mini project</title>
<%@include file="./grayscale.jsp"%>
</head>

<body id="page-top">

	<%@include file="./navbar.jsp"%>

	<!-- Header -->
	<header class="masthead">
		<div class="container d-flex h-100 align-items-center">
			<div class="mx-auto text-center">
				<!--  <h1 class="mx-auto my-0 text-uppercase">Get IT reView Together</h1> -->



				<svg width="700pt" height="100pt" xmlns="http://www.w3.org/2000/svg">
	<defs>
	<style>
@import url('https://fonts.googleapis.com/css?family=Gugi:400');
</style>	
    <linearGradient id="gradient" x1="0%" y1="0%" x2="0%" y2="100%">
    <stop stop-color="white" offset="0%" />
    <stop stop-color="gray" offset="100%" />
    </linearGradient>
	</defs>
<text x="30" y="120" fill="url(#gradient)" font-size="80"
						font-family="'Gugi', serif">
	<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->Get IT reView Together
</text>
</svg>

				<h2 class="text-white-50 mx-auto mt-2 mb-5">당신의 IT 제품 구매를 위한
					모두의 리뷰</h2>
				<a href="#about" class="btn btn-primary js-scroll-trigger">Get
					Started</a>
			</div>
		</div>
	</header>

</body>

</html>
