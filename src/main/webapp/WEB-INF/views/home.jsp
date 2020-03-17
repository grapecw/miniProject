<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <html lang="en"> -->

<head>
<style>
h1.typing-text-effect {
	text-align: center;
}

.oculto {
	display: none !important;
	font-family: 'Gugi', serif;
}

html .content, body .content {
	text-align: center;
	top: 50%;
	left: 50%;
	position: relative;
	transform: translate(-50%, -50%);
	font-size: 28px;
	color: #cccccc;
}

html .content span, body .content span {
	width: 30px;
	display: inline-block;
}
</style>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>mini project</title>
<%@include file="./grayscale.jsp"%>
</head>

<body id="page-top" class="masthead">

	<%@include file="./navbar.jsp"%>

	<section id="partout" style="margin-top: 200px;">
		<div style="height:208px; width:900px;margin:auto;">
		<h1 class="typing-text-effect" style="max-width:100%">
			<span class="oculto">Get IT reView Together</span><span class="texto"></span><span
				class="guion">_</span>
		</h1>
		</div>
		<br>
		<br>
		<div class="content">
			<div class="random">
				<span class="nbr ltr">0</span> <span class="nbr ltr">0</span> <span
					class="nbr ltr">0</span> <span class="nbr ltr">0</span> <span
					class="nbr ltr">0</span> <span class="nbr ltr">0</span> <span
					class="nbr ltr">0</span> <span class="nbr ltr">0</span> <span
					class="nbr ltr">0</span> <span class="nbr ltr">0</span> <span
					class="nbr ltr">0</span> <span class="nbr ltr">0</span> <span
					class="nbr ltr">0</span> <span class="nbr ltr">0</span> <span
					class="nbr ltr">0</span> <span class="nbr ltr">0</span> <span
					class="nbr ltr">0</span>
			</div>
		</div>


	</section>

	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/typingtext.js"></script>
	<script>
		$(document).ready(
				function() {
					var texto = $('h1.typing-text-effect span.oculto').text();
					var texto_dividido = texto.split('');
					var numerar_texto = texto_dividido.length;
					var i = 0;
					var funcion_intervalos = function() {
						if (i < numerar_texto) {
							var texto_nuevo = $(
									'h1.typing-text-effect span.texto').html();
							$('h1.typing-text-effect span.texto').html(
									texto_nuevo + texto_dividido[i]);
						} else {
							clearInterval(interval);
						}
						i++;
					}
					var interval = setInterval(funcion_intervalos, 200);
					var opacidad = true;
					setInterval(function() {
						if (opacidad == false) {
							$('h1.typing-text-effect span.guion').css({
								opacity : "10"
							});
							opacidad = true;
						} else {
							$('h1.typing-text-effect span.guion').css({
								opacity : "0"
							});
							opacidad = false;

						}
					}, 500);
				});
	</script>

	<script>
		$(document)
				.ready(
						function() {

							let $randomnbr = $('.nbr')
							let $timer = 30
							let $it
							let $data = 0
							let index
							let change
							let letters = [ "당", "신", "의 ", "I", "T", "제",
									"품 ", "구", "매", "를 ", "위", "한 ", "모", "두",
									"의 ", "리", "뷰" ]

							$randomnbr.each(function() {

								change = Math.round(Math.random() * 100)
								$(this).attr('data-change', change)

							})

							function random() {
								return Math.round(Math.random() * 9)
							}

							function select() {
								return Math.round(Math.random()
										* $randomnbr.length + 1)
							}

							function value() {
								$('.nbr:nth-child(' + select() + ')').html(
										'' + random() + '')
								$('.nbr:nth-child(' + select() + ')').attr(
										'data-number', $data)
								$data++

								$randomnbr
										.each(function() {
											if (parseInt($(this).attr(
													'data-number')) > parseInt($(
													this).attr('data-change'))) {
												index = $('.ltr').index(this)
												$(this).html(letters[index])
												$(this).removeClass('nbr')
											}
										})
							}

							$it = setInterval(value, $timer)

						})
	</script>


	<!-- Header -->
	<!--  <header >
    <div class="container d-flex h-100 align-items-center">
      <div class="mx-auto text-center">
        <h1 class="mx-auto my-0 text-uppercase">Get IT reView Together</h1>



<svg width="700pt" height="100pt" xmlns="http://www.w3.org/2000/svg">
	<defs>
	<style>
	
	@import url('https://fonts.googleapis.com/css?family=Gugi:400');
	</style>	
    <linearGradient id="gradient" x1="0%" y1="0%" x2="0%" y2="100%">
    <stop stop-color="white" offset="0%"/>
    <stop stop-color="gray" offset="100%"/>
    </linearGradient>
	</defs>
<text x="30" y="120" fill="url(#gradient)" font-size="80" font-family= "'Gugi', serif">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Get IT reView Together
</text>
</svg>
       
        <h2 class="text-white-50 mx-auto mt-2 mb-5">당신의 IT 제품 구매를 위한 모두의 리뷰</h2>
        <a href="#about" class="btn btn-primary js-scroll-trigger">Get Started</a>
      </div>
    </div>
  </header> -->

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
