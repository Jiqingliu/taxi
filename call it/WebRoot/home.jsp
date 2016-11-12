<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Home</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/booking/css/booking.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/camera.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
		<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery-migrate-1.2.1.js"></script>
		<script src="${pageContext.request.contextPath}/js/script.js"></script>
		<script src="${pageContext.request.contextPath}/js/superfish.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.ui.totop.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.equalheights.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.mobilemenu.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
		<script src="${pageContext.request.contextPath}/js/owl.carousel.js"></script>
		<script src="${pageContext.request.contextPath}/js/camera.js"></script>
		<!--[if (gt IE 9)|!(IE)]><!-->
		<script src="${pageContext.request.contextPath}/js/jquery.mobile.customized.min.js"></script>
		<!--<![endif]-->
		<script src="${pageContext.request.contextPath}/booking/js/booking.js"></script>
		<script>
			$(document).ready(function(){
				jQuery('#camera_wrap').camera({
					loader: false,
					pagination: false ,
					minHeight: '444',
					thumbnails: false,
					height: '28.28125%',
					caption: true,
					navigation: true,
					fx: 'mosaic'
				});
				$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
	</head>
	<body class="page1" id="top">
		<div class="main">
<!--==============================header=================================-->
			<header>
				<div class="menu_block ">
					<div class="container_12">
						<div class="grid_12">
							<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
									<li class="current"><a>Home</a></li>
									<li><a  href="${pageContext.request.contextPath}/index.jsp">Book</a></li>
									<li><a>History order</a></li>
									<li><a href="${pageContext.request.contextPath}/my call it.jsp">My call it</a></li>
								</ul>
							</nav>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="container_12">
					<div class="grid_12">
						<h1>
							<a href="index.html">
								<img src="${pageContext.request.contextPath}/images/logo.png" alt="Your Happy Family">
							</a>
						</h1>
					</div>
				</div>
				<div class="clear"></div>
			</header>
             <div class="copyrights">Collect from </div>
			<div class="slider_wrapper ">
				<div id="camera_wrap" class="">
					<div data-src="${pageContext.request.contextPath}/images/slide.jpg" ></div>
					<div data-src="${pageContext.request.contextPath}/images/slide1.jpg" ></div>
					<div data-src="${pageContext.request.contextPath}/images/slide2.jpg"></div>
				</div>
			</div>
			
			<div class="c_phone">
				<div class="container_12">
					<div class="grid_12">
						<div class="fa fa-phone"></div>+ 233 207 264 391
						<span>ORDER NOW! waiting for you!</span>
					</div>
					<div class="clear"></div>
				</div>
			</div>
<!--==============================Content=================================-->
			<div class="content">
				<div class="container_12">
					
					
					<div class="clear"></div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="f_phone"><span>Call Us:</span> +0834831819</div>
					<div class="socials">
						<a href="#" class="fa fa-twitter"></a>
						<a href="#" class="fa fa-facebook"></a>
						<a href="#" class="fa fa-google-plus"></a>
					</div>
					<div class="copy">
						<div class="st1">
						<div class="brand">Call I<span class="color1">T</span>axi </div>
						just call it.
						</div> 
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
	</body>
</html>