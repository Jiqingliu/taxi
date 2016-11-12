<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>login</title>
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/form.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/TMForm.js"></script>
		<script>
			$(document).ready(function(){
				$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
		
	</head>
	<body class="" id="top">
		<div class="main">
<!--==============================header=================================-->
			<header>
				<div class="menu_block ">
					<div class="container_12">
						<div class="grid_12">
							<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
									<li><a>Home</a></li>
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
								<img src="images/logo.png" alt="Your Happy Family">
							</a>
						</h1>
					</div>
				</div>
				<div class="clear"></div>
			</header>
<!--==============================Content=================================-->
			<div class="content">
				<div class="container_12">
					
					<div class="grid_6 prefix_1">
						<h3>Welcome to use call it taxi</h3>
						<form action="${pageContext.request.contextPath}/usermanage/user!doCheckUser" method="post">
							
                         Username:<INPUT type=text maxLength=30 size=24 name=username style="	width: 100%;
	height: 31px;
	float:left;
	background: #fefefe;
	box-sizing: border-box;
	-webkit-appearance: none;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box; 
	color: #878787;
    font: 14px/20px 'Open Sans', sans-serif;
    border: 1px solid #f0efef;
    padding: 5px 18px 7px;"><br/>
                         Password:<INPUT type=password maxLength=30 size=24 name=userpassword style="	width: 100%;
	height: 31px;
	float:left;
	background: #fefefe;
	box-sizing: border-box;
	-webkit-appearance: none;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box; 
	color: #878787;
    font: 14px/20px 'Open Sans', sans-serif;
    border: 1px solid #f0efef;
    padding: 5px 18px 7px;"><br/>						
								<INPUT type="submit" height=30 width=100 value="login">
						</form>
						<p>if you don`t have a account, click <a href="${pageContext.request.contextPath}/register.jsp">here</a> to register.</p>
					</div>
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
