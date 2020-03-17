<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!-- <html lang="en"> -->

<head>
<style>
* {
  box-sizing: border-box;
}
.wrap{
  width: 87%;
  margin: auto;
  padding: 0 10px;
  background-color: rgba(255,255,255,0.9);
  overflow: hidden;
  box-shadow: 0 0 5px #eee;
}

img{
  /* max-width: 100%;
  height: auto; */
  width : 250px;
  height : 250px;
  
}
.icon {
width : 20px;
height : 20px;
}

h1, h2, h3, h4, h5, h6 { letter-spacing: 0.05em; font-weight: 400; }

h1{text-align:center;}

.row{

}

.more:link, .more:visited {
  transition-duration: 0.2s;    
  transition-timing-function: ease-out;
}

[class*='col-']{
  float:left;   
}

.col-1-3{
  width: 33.33%;
  padding: 20px;
}
  
.col-2-3{
  width: 66.66%; 
  padding: 20px;
}

.col-1-4{
  width: 25%; 
  padding: 10px;

}

.show{
  width: 100%;
  height: 100%;
  float: left;
  border: 1px solid rgba(0,0,0,0.04);
  overflow: hidden;
  position: relative;
  text-align: center;
  cursor: default;
  background: #fff;
  display: block;
  border-radius: 4px;
}


.aspect{
  position: relative;
  padding-bottom: 120%;
  height: 0;
  overflow: hidden;
}

.show .mask{
  width: 100%;
  height: 100%;
  position: absolute;
  overflow: hidden;
  top: 0;
  left: 0
}

.show-first a.more {
  display: inline-block;
  text-decoration: none;
  padding: 7px 14px; 
  background: #FFF;
  color: #222;
  text-transform: uppercase;
  box-shadow: 0 0 1px #000;
  position: relative;
  border: 1px solid #999;

}

.show-first a.more:hover {
  box-shadow: 0 0 5px #000;
}

.show-first p{
  letter-spacing: 0.15em;
  color: #f4f4f4;
  font-size: 20px; 
}

.show-first img {
  transition: all 0.2s linear;
}

.show-first .mask {
  opacity: 0;
  background-color: rgba(0,0,0, 0.4);
  transition: all 0.4s ease-in-out;
}
.show-first h2 {
  color: #f2f2f2;
  margin-top: 10%;
  opacity: 0;
  transition: all 0.2s ease-in-out;
  background: rgba(0,0,0,0.7);
}
.show-first p {
  opacity: 0;
  transition: all 0.2s linear;
}
.show-first a.info{
  opacity: 0;
  transition: all 0.2s ease-in-out;
}

.show-first:hover img {
  transform: scale(1.2);
}
.show-first:hover .mask {
  opacity: 1;
}
.show-first:hover h2,
.show-first:hover p,
.show-first:hover a.info {
  opacity: 1;
}
.show-first:hover p {
  transition-delay: 0.1s;
}
.show-first:hover a.info {
  transition-delay: 0.2s;
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
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"">
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

  <%@include file="./navbar.jsp"%>
  <!-- Header -->
<!-- <header > -->
<section id="partout" style="margin-top : 200px;">

<div class="wrap">
	<div class="col-1-4">
    	<div class="show show-first">
      	<img src="/miniproject/resources/img/GRAM1.jpg" width="300px" height="300px" />
      
	      <div class="mask">
        	<h2>LG Gram</h2>
        	<p class="price">LG Gram 17인치</p>
        	<a href="#" class="more">More info</a>
      	</div>
    	</div>
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