<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.List, java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
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
					href="/miniproject/talkboard">Talk</a></li>

			<c:choose>
			
			<c:when test="${!empty sessionScope.login}">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="/miniproject/logout"> 
					<img src="/miniproject/resources/img/login.png" width="20px"
						height="20px"></a></li>
						<!-- 로그 아웃도 새로 고침 안하고 하소 싶으면 이것도 팝업창으로 하면 될듯. -->
			</c:when>
			<c:otherwise>
<!-- 			<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="/miniproject/login"> <img src="/miniproject/resources/img/login.png"
						width="20px" height="20px"></a></li> -->
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					onclick='window.open("/miniproject/login","_blank","height=800,width=500, status=yes,toolbar=no,menubar=no,location=no");return false'> 
					<img src="/miniproject/resources/img/logout.png"
						style ="width:20px; height:20px"></a></li>
			</c:otherwise>
			</c:choose>
			
			</ul>
		</div>
	</div>
</nav>

