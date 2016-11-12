<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>register</title>
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
							<a>
								<img src="${pageContext.request.contextPath}/images/logo.png" alt="Your Happy Family">
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
						<h3>thank you for registering call it taxi!</h3>
						<form name="userform" action="${pageContext.request.contextPath}/usermanage/user!add" method="post">
    username:<input type="text" name="username" id="username" style="width: 100%;height: 31px;float:left;background: #fefefe;box-sizing: border-box;-webkit-appearance: none;-moz-box-sizing: border-box;-webkit-box-sizing: border-box; color: #878787;font: 14px/20px 'Open Sans', sans-serif;border: 1px solid #f0efef;padding: 5px 18px 7px;"/><br/>
    password:<input type="password" name="userpassword" id="userpassword" style="width: 100%;height: 31px;float:left;background: #fefefe;box-sizing: border-box;-webkit-appearance: none;-moz-box-sizing: border-box;-webkit-box-sizing: border-box; color: #878787;font: 14px/20px 'Open Sans', sans-serif;border: 1px solid #f0efef;padding: 5px 18px 7px;"/><br>
    email:<input type="text" name="email" id="email" style="width: 100%;height: 31px;float:left;background: #fefefe;box-sizing: border-box;-webkit-appearance: none;-moz-box-sizing: border-box;-webkit-box-sizing: border-box; color: #878787;font: 14px/20px 'Open Sans', sans-serif;border: 1px solid #f0efef;padding: 5px 18px 7px;"/><br>
    name:<input type="text" name="name" id="name" style="width: 100%;height: 31px;float:left;background: #fefefe;box-sizing: border-box;-webkit-appearance: none;-moz-box-sizing: border-box;-webkit-box-sizing: border-box; color: #878787;font: 14px/20px 'Open Sans', sans-serif;border: 1px solid #f0efef;padding: 5px 18px 7px;"/><br/>
    phone:<input type="text" name="phone" id="phone" style="width: 100%;height: 31px;float:left;background: #fefefe;box-sizing: border-box;-webkit-appearance: none;-moz-box-sizing: border-box;-webkit-box-sizing: border-box; color: #878787;font: 14px/20px 'Open Sans', sans-serif;border: 1px solid #f0efef;padding: 5px 18px 7px;"/><br>
    categroy:<input type="radio" name="categroy" id="categroy" value="worker"/>worker
    <input type="radio" name="categroy" id="categroy" value="student"/>student
    <input type="button" onclick="checkForm();" value="submit"/>
    </form>
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
