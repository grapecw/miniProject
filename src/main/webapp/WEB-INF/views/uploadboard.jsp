<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.List, java.util.ArrayList, vo.ProdVO, vo.PagingControl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=PT+Sans&display=swap" rel="stylesheet">
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
	margin : 0px;
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
	padding-top: 1.5%;
	padding-left: 1.5%;
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
	color : #ffcc66;
	float: right;
	box-sizing: border-box;
	background: #234794;
}

#prodboard {
	/* background: #f5f5f5; */
	/* border-collapse: separate; */
	box-shadow: inset 0 1px 0 #fff;
	font-size: 12px;
	line-height: 24px;
	margin: 30px auto;
	text-align: left;
	width: 800px;
	background-color: antiquewhite;
}

#prodboard th {
	background: url(https://jackrugile.com/images/misc/noise-diagonal.png),
		linear-gradient(#333399, #666699);
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

p{
  text-align: center;
  font-size:2rem;
  color:#cccccc;
}
.trans--grow{
  -webkit-transition: width 1s ease-out; /* For Safari 3.1 to 6.0 */
  transition: width 1s  ease-out;
  width : 0%;
}
.grow{
  width:100%;
}
.hr1{
  margin-left:0;
}
.hr2{
  margin-right:0;
}
hr{
  margin-top: 20px;
  padding: 2px 0;
  border: none;
  background-color: rgb(250, 150, 0);
  letter-spacing: 5px;
}
.paging {
	font-family: 'PT Sans', sans-serif;
	color : white;
}

</style>
<body id="page-top" class="masthead">

	<%@include file="./navbar.jsp"%>

	<section id="projects" class="projects-section">
		<article
			style="text-align: center; vertical-align: middle; width: 80%; margin: auto; color: black">
			<%-- 
			<%
			ProdReviewVO posting = (ProdReviewVO)request.getAttribute("posting");
			%>
			
			<%= posting.getViewTitle() %>
			--%>
  				<p style="font-weight: bold;"> ${ requestScope.prod.pname } </p>
			<hr class="trans--grow hr2">
<%-- 			<hr>
			 <p style="color:wheat;font-size:55px;text-align:Left; margin-left:50px;">${ requestScope.prod.PName }</p>
			<hr> --%>
			<br>
			<div id="imgarea">
			<c:forEach begin="1" end="4" step="1" varStatus="status">
    			<a href="/miniproject/resources/img/${ requestScope.prod.prodID }_${status.index}.jpg" data-lightbox="image-1"
					data-title="${ requestScope.prod.prodID }">
					<img class="prodimg" src="/miniproject/resources/img/${ requestScope.prod.prodID }_${status.index}.jpg" style="width: 20%">
				</a> 
			</c:forEach>
				
<!-- 				<a href="/miniproject/resources/img/1.png" data-lightbox="image-1"
					data-title="My caption"><img class="prodimg"
					src="/miniproject/resources/img/1.png" style="width: 20%"></a> <a
					href="/miniproject/resources/img/1.png" data-lightbox="image-1"
					data-title="My caption"><img class="prodimg"
					src="/miniproject/resources/img/1.png" style="width: 20%"></a> -->
			</div>
<%-- 			${ requestScope.prod.prodID }
			${ requestScope.prod.PName } --%>
			<br>
			<% ProdVO vo = (ProdVO)request.getAttribute("prod"); %>
			<div id="spectable">
				<table class="container1">
					<thead>
						<tr style = "line-height: 3.5rem;">
							<th style="padding-right: 7px;"><h1>Function</h1></th>
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
      <span class="rating-num"><fmt:formatNumber value="${ staravg }" pattern=".0"/></span>
      <div class="rating-stars">
        <span><i class="active icon icon-material-star-rate"></i></span>
        <span><i class="active icon-star"></i></span>
        <span><i class="active icon-star"></i></span>
        <span><i class="active icon-star"></i></span>
        <span><i class="icon-star"></i></span>
      </div>
      <div class="rating-users">
        <i class="icon-user"></i> ${ starcount } total
      </div>
    </div>
    
    <div class="histo">
      <div class="five histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 5           </span>
        <span class="bar-block">
          <span id="bar-five" class="bar">
            <span>  ${ starlist[4] }</span>&nbsp;
          </span> 
        </span>
      </div>
      
      <div class="four histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 4           </span>
        <span class="bar-block">
          <span id="bar-four" class="bar">
            <span>  ${ starlist[3] }</span>&nbsp;
          </span> 
        </span>
      </div> 
      
      <div class="three histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 3           </span>
        <span class="bar-block">
          <span id="bar-three" class="bar">
            <span>  ${ starlist[2] }</span>&nbsp;
          </span> 
        </span>
      </div>
      
      <div class="two histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 2           </span>
        <span class="bar-block">
          <span id="bar-two" class="bar">
            <span>  ${ starlist[1] }</span>&nbsp;
          </span> 
        </span>
      </div>
      
      <div class="one histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 1           </span>
        <span class="bar-block">
          <span id="bar-one" class="bar">
              <span>  ${ starlist[0] }</span>&nbsp;
          </span> 
        </span>
      </div>
    </div>
  </div>
</div></div>
				
				<div id="oneLine" style="height: 167px;">
				<table style = "width : 100% ; height : 100%"><tr><td><%= vo.getPplain() %></td></tr></table></div>
				
			</div>
			<br>
			<br>
<!-- 			<button onclick="searchStar()">star</button> -->
			<div>
				<table id="prodboard">
					<thead>
						<tr style="text-align:center">
							<th colspan="2">제목</th>
							<th>닉네임</th>
							<th>업로드 날짜</th>
						</tr>
					</thead>
					<tbody id = "reviewView">
						<c:forEach var="item" items="${requestScope.list }">
						<tr>
							<td width="10%" style="text-align:center">${item.reViewID}</td>
							<%-- <td onclick="location.href='/miniproject/viewReview?reViewID=${item.reViewID}&Pname=${ requestScope.prod.PName }'" width="55%">${item.viewTitle}</td> --%>
							<td onclick="location.href='/miniproject/viewReview?reViewID=${item.reViewID}&prodID=${ prodID }'" width="55%">${item.viewTitle}</td>
							<td style="text-align:center" width="15%">${item.nickName}</td>
							<td style="text-align:center" width="20%">${item.viewDate}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<div class="paging">
					<%
						PagingControl paging = (PagingControl)request.getAttribute("paging");
					%>
					<% if(paging.isPreData( )) { %>
						<span onclick="location.href='/miniproject/uploadboard/${ requestScope.prod.prodID }?pagenum=<%=paging.getPageStart( ) - 1%>'">◀</span>
					<%} %>
	
					<% for(int i=paging.getPageStart( );i<paging.getPageEnd( )+1;i++) {%>
						<span onclick="location.href='/miniproject/uploadboard/${ requestScope.prod.prodID }?pagenum=<%=i%>'"> <%= i %> </span>
					<% } %>
	
					<% if(paging.isNextData( )) {%>
						<span onclick="location.href='/miniproject/uploadboard/${ requestScope.prod.prodID }?pagenum=<%=paging.getPageEnd( )+1%>'">▶</span>
					<%} %>
				</div>
				
				<select id="star" onchange="searchStar(this.value)">
						<option value="0">모든 별점 찾기</option>
						<option value="5">최고 : ★★★★★  ( ${ starlist[4] } )</option>
						<option value="4">좋음 : ★★★★☆ ( ${ starlist[3] } )</option>
						<option value="3">괜찮 : ★★★☆☆ ( ${ starlist[2] } )</option>
						<option value="2">별로 : ★★☆☆☆ ( ${ starlist[1] } )</option>
						<option value="1">나쁨 : ★☆☆☆☆  ( ${ starlist[0] } )</option>
		    		</select> 
				
				<c:if test="${!empty sessionScope.login}">
				<form method = "get" action = "/miniproject/write" id="colwrite" style= "margin-top: 30px;">
					<input type="hidden" name="prodID" value="${ requestScope.prod.prodID }">
					<input type="submit" value="글쓰기" > 
				</form>
				</c:if>
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
	 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js" ></script>
	 <script>
	 
	 	function searchStar(e){
	 		var togo = null;
	 		togo = "/miniproject/uploadboard/${ requestScope.prod.prodID }/search?viewstar="+e;
	 		
	 		/* console.log(e); */
			var replycontent = document.getElementById('reviewView')
			/* console.log(replycontent); */
			var xhr = new XMLHttpRequest();
	 		xhr.onload = function(event) {
	 			if (xhr.status == 200) {
	 				var str = xhr.responseText;
	 				var data = JSON.parse(str);
	 				/* console.log(data.length); */
	 				replycontent.innerHTML="";
					for (var i =0 ;i < data.length; i++) {
						/* console.log(data[i]); */
						replycontent.innerHTML += "<tr>" +
												"<td width='10%' style='text-align:center'>" + data[i].reViewID + "</td>" +
												"<td onclick=\"location.href='/miniproject/viewReview?reViewID="+data[i].reViewID+"&prodID=${ prodID }'\" width='55%''>"+ data[i].viewTitle+"</td>" +
												"<td style=\"text-align:center\" width=\"15%\">"+data[i].nickName+"</td>"+
												"<td style=\"text-align:center\" width=\"20%\">"+data[i].viewDate+"</td>"+
												"</tr>"
					}
	 				/* var target = document.getElementById('replyList');
	 				target.innerHTML = str; */
	 			}
	 		};
	 		xhr.open('GET', togo, true);
	 		xhr.send();
	 	};
	 
	 </script>
</body>
</html>