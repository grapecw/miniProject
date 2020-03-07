<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.List, java.util.ArrayList,vo.ProdReviewVO"%>
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
					href="#signup"> <img src="/miniproject/resources/img/login.png"
						width="20px" height="20px"></a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#signup"> <img
						src="/miniproject/resources/img/logout.png" width="20px"
						height="20px"></a></li>
			</ul>
		</div>
	</div>
</nav>