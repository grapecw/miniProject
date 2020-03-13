<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.List, java.util.ArrayList,vo.ProdVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Grayscale - Start Bootstrap Theme</title>

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
	

<style>
.prodimg {
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: all 0.3s ease-in-out; /* 부드러운 모션을 위해 추가*/
}

.prodimg:hover {
	transform: scale(1.2);
	-webkit-transform: scale(1.2);
	-moz-transform: scale(1.2);
	-ms-transform: scale(1.2);
	-o-transform: scale(1.2);
}

@charset "UTF-8";

@import
	url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

h1 {
	font-size: 3em;
	font-weight: 300;
	line-height: 1em;
	text-align: center;
	color: #4DC3FA;
	
}

h2 {
	font-size: 1em;
	font-weight: 300;
	text-align: center;
	display: block;
	line-height: 1em;
	padding-bottom: 2em;
	color: #FB667A;
}

h2 a {
	font-weight: 700;
	text-transform: uppercase;
	color: #FB667A;
	text-decoration: none;
}

.blue {
	color: #185875;
}

.yellow {
	color: #FFF842;
}

.container1 th h1 {
	line-height: 3.5rem;
	font-weight: bold;
	font-size: 1.1em;
	text-align: center;
	color: #185875;
}

.container1 td {
	font-weight: normal;
	font-size: 1em;
	-webkit-box-shadow: 0 2px 2px -2px #0E1119;
	-moz-box-shadow: 0 2px 2px -2px #0E1119;
	box-shadow: 0 2px 2px -2px #0E1119;
}

.container1 {
	text-align: center;
	overflow: hidden;
	width: 80%;
	margin: 0 auto;
	display: table;
	padding: 0 0 8em 0;
}

.container1 td, .container1 th {
	padding-bottom: 2%;
	padding-top: 2%;
	padding-left: 2%;
}

/* Background-color of the odd rows */
.container1 tr:nth-child(odd) {
	background-color: #323C50;
}

/* Background-color of the even rows */
.container1 tr:nth-child(even) {
	background-color: #2C3446;
}

.container1 th {
	background-color: #1F2739;
}

.container1 td:first-child {
	color: #FB667A;
}

.container1 td:nth-child(2) {
	color: wheat;
}

.container1 tr:hover {
	background-color: #464A52;
	-webkit-box-shadow: 0 6px 6px -6px #0E1119;
	-moz-box-shadow: 0 6px 6px -6px #0E1119;
	box-shadow: 0 6px 6px -6px #0E1119;
}

.container1 td:hover {
	background-color: #FFF842;
	color: #403E10;
	font-weight: bold;
	box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px,
		#7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
	transform: translate3d(6px, -6px, 0);
	transition-delay: 0s;
	transition-duration: 0.4s;
	transition-property: all;
	transition-timing-function: line;
}

@media ( max-width : 800px) {
	.container1 td:nth-child(4), .container1 th:nth-child(4) {
		display: none;
	}
}

#starAndOneLine {
	width: 80%;
	height: 100px;
	border: 1px solid #000;
}

#starPoint {
	width: 50%;
	float: left;
	box-sizing: border-box;
}

#oneLine {
	width: 50%;
	float: right;
	box-sizing: border-box;
	background: #0ff;
}

#prodboard {
	background: #f5f5f5;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 12px;
	line-height: 24px;
	margin: 30px auto;
	text-align: left;
	width: 800px;
}

#prodboard th {
	background: url(https://jackrugile.com/images/misc/noise-diagonal.png),
		linear-gradient(#777, #444);
	border-left: 1px solid #555;
	border-right: 1px solid #777;
	border-top: 1px solid #555;
	border-bottom: 1px solid #333;
	box-shadow: inset 0 1px 0 #999;
	color: #fff;
	font-weight: bold;
	padding: 10px 15px;
	position: relative;
	text-shadow: 0 1px 0 #000;
}

#prodboard  th:after {
	background: linear-gradient(rgba(255, 255, 255, 0),
		rgba(255, 255, 255, .08));
	content: '';
	display: block;
	height: 25%;
	left: 0;
	margin: 1px 0 0 0;
	position: absolute;
	top: 25%;
	width: 100%;
}

#prodboard th:first-child {
	border-left: 1px solid #777;
	box-shadow: inset 1px 1px 0 #999;
}

#prodboard th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}

#prodboard td {

	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #e8e8e8;
	padding: 5px 15px;
	position: relative;
	transition: all 300ms;
}

#prodboard td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}

#prodboard td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}

#prodboard tr {
	background: url(https://jackrugile.com/images/misc/noise-diagonal.png);
}

#prodboard tr:nth-child(odd) td {
	background: #f1f1f1
		url(https://jackrugile.com/images/misc/noise-diagonal.png);
}

#prodboard tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff;
}

#prodboard tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}

#prodboard tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}

/* #prodboard tbody:hover td {
	color: transparent;
	text-shadow: 0 0 3px #aaa;
}

#prodboard tbody:hover tr:hover td {
	color: #444;
	text-shadow: 0 1px 0 #fff;
} */


@import url(https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.2.1/css/material-wfont.css);

body {
  font-family: 'Roboto', Helvetica;
  color: #737373;
  font-weight: 300;
}

.container2 {
  width: 400px;
  background-color: #EFEFEF;
}

.inner {
  padding: 1em;
  background-color: white;
  overflow: hidden;
  position: relative;
  -webkit-border-radius: 4px; 
  -moz-border-radius: 4px; 
  border-radius: 4px; 
}

.rating {
  float: left;
  width: 45%;
  margin-right: 5%;
  text-align: center;
}

.rating-num {
  color: #333333;
  font-size: 72px;
  font-weight: 100;
  line-height: 1em; 
}

.rating-stars {
  font-size: 20px;
  color: #E3E3E3;
  margin-bottom: .5em;
}
.rating-stars .active {
  color: #737373;
}

.rating-users {
  font-size: 14px;
}

.histo {
  float: left;
  width: 50%;
  font-size: 13px;
}

.histo-star {
  float: left;
  padding: 3px;

}

.histo-rate {
  width: 100%;
  display: block;
  clear: both;
}

.bar-block {
  margin-left: 5px;
  color: black;
  display: block;
  float: left;
  width: 75%;
  position: relative;
}

.bar {
  padding: 4px;
  display: block;
}

#bar-five {
  width: 0;
  background-color: #9FC05A;
}

#bar-four {
  width: 0;
  background-color: #ADD633;
}

#bar-three {
  width: 0;
  background-color: #FFD834;
}

#bar-two {
  width: 0;
  background-color: #FFB234;
}

#bar-one {
  width: 0;
  background-color: #FF8B5A;
}



</style>
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

	<section id="projects" class="projects-section">
		<article
			style="text-align: center; vertical-align: middle; width: 80%; margin: auto; color: black">
			<%-- 
			<%
			ProdReviewVO posting = (ProdReviewVO)request.getAttribute("posting");
			%>
			
			<%= posting.getViewTitle() %>
			--%>
			<hr>
			
			<div id="imgarea">
				<a href="/miniproject/resources/img/1.png" data-lightbox="image-1"
					data-title="My caption"><img class="prodimg"
					src="/miniproject/resources/img/1.png" style="width: 20%"></a> <a
					href="/miniproject/resources/img/1.png" data-lightbox="image-1"
					data-title="My caption"><img class="prodimg"
					src="/miniproject/resources/img/1.png" style="width: 20%"></a> <a
					href="/miniproject/resources/img/1.png" data-lightbox="image-1"
					data-title="My caption"><img class="prodimg"
					src="/miniproject/resources/img/1.png" style="width: 20%"></a>
			</div>
			${ requestScope.prod.prodID }
			${ requestScope.prod.PName }
			<% ProdVO vo = (ProdVO)request.getAttribute("prod"); %>
			<div id="spectable">
				제품 사향
				<table class="container1">
					<thead>
						<tr style = "line-height: 3.5rem;">
							<th><h1>Function</h1></th>
							<th><h1>Detail</h1></th>
						</tr>
					</thead>
					<tbody>
						<% if(vo.getPspec1()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec1().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						 <% if(vo.getPspec2()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec2().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						
						<% if(vo.getPspec3()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec3().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						
						<% if(vo.getPspec4()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec4().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						
						<% if(vo.getPspec5()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec5().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						
						<% if(vo.getPspec6()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec6().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						
						<% if(vo.getPspec7()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec7().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						
						<% if(vo.getPspec8()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec8().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						
						<% if(vo.getPspec9()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec9().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						
						<% if(vo.getPspec10()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec10().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						
						<% if(vo.getPspec11()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec11().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						
						<% if(vo.getPspec12()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec12().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						<% if(vo.getPspec13()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec13().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
						<% if(vo.getPspec14()!= null) { %>
							<tr>
							<% String[] spec1 = vo.getPspec14().split("%"); %>
								<td><%= spec1[0] %></td>
								<td><%= spec1[1] %></td>
							</tr>
						<% } %>
					</tbody>
				</table>
			</div>
			<div id="starAndOneLine" style="margin: auto;">
				<div id="starPoint"><div class="container2">
  <div class="inner">
    <div class="rating">
      <span class="rating-num">4.8</span>
      <div class="rating-stars">
        <span><i class="active icon icon-material-star-rate"></i></span>
        <span><i class="active icon-star"></i></span>
        <span><i class="active icon-star"></i></span>
        <span><i class="active icon-star"></i></span>
        <span><i class="icon-star"></i></span>
      </div>
      <div class="rating-users">
        <i class="icon-user"></i> 1,014,004 total
      </div>
    </div>
    
    <div class="histo">
      <div class="five histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 5           </span>
        <span class="bar-block">
          <span id="bar-five" class="bar">
            <span>566,784</span>&nbsp;
          </span> 
        </span>
      </div>
      
      <div class="four histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 4           </span>
        <span class="bar-block">
          <span id="bar-four" class="bar">
            <span>171,298</span>&nbsp;
          </span> 
        </span>
      </div> 
      
      <div class="three histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 3           </span>
        <span class="bar-block">
          <span id="bar-three" class="bar">
            <span>94,940</span>&nbsp;
          </span> 
        </span>
      </div>
      
      <div class="two histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 2           </span>
        <span class="bar-block">
          <span id="bar-two" class="bar">
            <span>44,525</span>&nbsp;
          </span> 
        </span>
      </div>
      
      <div class="one histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 1           </span>
        <span class="bar-block">
          <span id="bar-one" class="bar">
            <span>136,457</span>&nbsp;
          </span> 
        </span>
      </div>
    </div>
  </div>
</div></div>
				
				<div id="oneLine" style="height: 167px;"><%= vo.getPPlain() %></div>
				
			</div>

			<div>
				<table id="prodboard">
					<thead>
						<tr>
							<th>제목</th>
							<th>닉네임</th>
							<th>업로드 날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${requestScope.list }">
						<tr>
							<td onclick="location.href='/miniproject/viewReview?reViewID=${item.reViewID}&Pname=${ requestScope.prod.PName }'">${item.viewTitle}</td>
							<td>${item.nickName}</td>
							<td>${item.viewDate}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<form method = "get" action = "/miniproject/write" id="colwrite">
					<input type="hidden" name="prodID" value="${ requestScope.prod.prodID }">
					<input type="submit" value="글쓰기" > 
				</form>
			</div>
		</article>
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
</body>
</html>