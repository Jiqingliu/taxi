<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Home</title>
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico">
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/booking/css/booking.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/camera.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<script type="text/javascript">
var req = new XMLHttpRequest();
function ccbt(cartype)
	{
	var myDate = new Date();
var month=myDate.getMonth()+1;
var hour = myDate.getHours()+1;
document.getElementById('date').value = myDate.getFullYear()+"/"+month+"/"+myDate.getDate();
document.getElementById('hour').value = hour;
document.getElementById('min').value = myDate.getMinutes();
document.getElementById('time').value = myDate.getFullYear()+"/"+month+"/"+myDate.getDate()+" "+hour+":"+myDate.getMinutes();
	 document.getElementById('cartype').value = cartype
	 
	var myDate = new Date();
	var month=myDate.getMonth()+1
	 document.getElementById('ordertime').value = myDate.getFullYear()+"/"+month+"/"+myDate.getDate()+":"+myDate.getHours()+":"+myDate.getMinutes();
	 var url = "${pageContext.request.contextPath }/car/car!querybytype?cartype="+cartype;
	
	req.open("post",url,true);
	req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	 
	//设置回调函数
	req.onreadystatechange=callhospback;
	//发送请求send
	req.send(null);
	}
	function callhospback()
	{
	if (req.readyState == 4) 
		   {
				if(req.status==200)
				{
					if(req.responseText=='0')
					{
						document.getElementById("carno").innerHTML="sorry! no car free";
					}else
					{
						document.getElementById("carno").innerHTML=req.responseText;
						var carno=req.responseText;
						ccbt1(carno);
					}	
						
				}
          }
					
					
	}
	function ccbt1(carno)
	{
	 var url = "${pageContext.request.contextPath }/car/car!querybytype1?carno="+carno;
	req.open("post",url,true);
	req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	 
	//设置回调函数
	req.onreadystatechange=callhospback1;
	//发送请求send
	req.send(null);
	}
	function callhospback1()
	{
	
					if(req.responseText=='0')
					{
						document.getElementById("carinfo").value="sorry! no car free";
					}else
					{
					
						document.getElementById("carinfo").value=req.responseText;
					}	
	}
    </script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBefEdavsZmTM9WX3ZYNPZkNWufze7GHe4&signed_in=true&callback=initMap"
        async defer>
</script>
<script>
function checkgooglemap() {
var directionsService = new google.maps.DirectionsService;
var directionsDisplay = new google.maps.DirectionsRenderer;
var start = document.getElementById('from').value;
  var end = document.getElementById('to').value;
   var request = {
        origin: start,
        destination: end,
        travelMode: google.maps.DirectionsTravelMode.DRIVING
    };
  directionsService.route(request, function(response, status) {
    if (status === google.maps.DirectionsStatus.OK) {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 7,
    center: {lat: 41.85, lng: -87.65}
  });
  directionsDisplay.setMap(map);
  directionsDisplay.setDirections(response);
      var route = response.routes[0];
  var theLeg = route.legs[0];
  var distance = theLeg.distance.value;
  var time = theLeg.duration.value;
  
  document.getElementById('info').innerHTML="The distance between "+start+" and "+end+" is "+distance+" miles!"+" about "+Math.round(time/60)+" min.";
    
    var cartype = document.getElementById('cartype').value;
    var a = 100-${currentUser.discount}
    switch(cartype)
    {
case "mini":var price = distance/1000*3;
if (document.getElementById('hour').value<22&&document.getElementById('hour').value>6)
    {
    price = price*(100-${currentUser.discount})/100
     document.getElementById('price').innerHTML="you need about "+price+" Euro";
     document.getElementById('priceinfo').innerHTML=""+distance/1000+"km * 3euro/km *"+a+"% ("+${currentUser.discount}+" % off for your user type)";
    }else{
    price = price*1.1*(100-${currentUser.discount})/100
     document.getElementById('price').innerHTML="you need about "+price+" Euro";
     document.getElementById('priceinfo').innerHTML=""+distance/1000+"km * 3euro/km *"+a+"% ("+${currentUser.discount}+" % off for your user type) *110%(diver`s night work)";
    };
    break;
case "mid":var price = distance/1000*5;
if (document.getElementById('hour').value<22&&document.getElementById('hour').value>6)
    {
    price = price*(100-${currentUser.discount})/100
     document.getElementById('price').innerHTML="you need about "+price+" Euro";
     document.getElementById('priceinfo').innerHTML=""+distance/1000+"km * 3euro/km *"+a+"% ("+${currentUser.discount}+" % off for your user type)";
    }else{
    price = price*1.1*(100-${currentUser.discount})/100
     document.getElementById('price').innerHTML="you need about "+price+" Euro";
     document.getElementById('priceinfo').innerHTML=""+distance/1000+"km * 5euro/km *"+a+"% ("+${currentUser.discount}+" % off for your user type) *110%(diver`s night work)";
    }break;
case "big":var price = distance/1000*8;
if (document.getElementById('hour').value<22&&document.getElementById('hour').value>6)
    {
    price = price*(100-${currentUser.discount})/100
     document.getElementById('price').innerHTML="you need about "+price+" Euro";
     document.getElementById('priceinfo').innerHTML=""+distance/1000+"km * 3euro/km *"+a+"% ("+${currentUser.discount}+" % off for your user type)";
    }else{
    price = price*1.1*(100-${currentUser.discount})/100
     document.getElementById('price').innerHTML="you need about "+price+" Euro";
     document.getElementById('priceinfo').innerHTML=""+distance/1000+"km * 3euro/km *"+a+"% ("+${currentUser.discount}+" % off for your user type) *110%(diver`s night work)";
    }break;
} 
    }
    else {
      window.alert('sorry we can`t find this address ');
    }
  });
}
    </script>
<script type="text/javascript">
           function timechange()
{
var d = document.getElementById('date').value;
var h = document.getElementById('hour').value;
var m = document.getElementById('min').value;
document.getElementById('time').value = d+" "+h+":"+m;

}
</script>
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
									<li><a>Home</a></li>
									<li class="current"><a  href="${pageContext.request.contextPath}/index.jsp">Book</a></li>
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
			<div class="container_12">
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="${pageContext.request.contextPath}/images/icon1.png" alt="">
								<div class="extra_wrapper">Fast&amp;
									<div class="color1">Safe</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="${pageContext.request.contextPath}/images/icon2.png" alt="">
								<div class="extra_wrapper">Best
									<div class="color1">Prices</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="${pageContext.request.contextPath}/images/icon3.png" alt="">
								<div class="extra_wrapper">Package
									<div class="color1">Delivery</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
<!--==============================Content=================================-->
			<div class="content">
				<div class="container_12">
					<div class="grid_5">
						<h3>Booking Form</h3>
						<form name="orderform" action="${pageContext.request.contextPath}/order/order!add" method="post">
    Custmor name:${currentUser.name}<br/>
    Car_type:
    <input type="radio"  name="car_type" value="mini" onclick="ccbt(this.value)" checked="checked"><span>mini</span>
    <input type="radio"  name="car_type" onclick="ccbt(this.value)" value="mid" ><span>mid</span>
    <input type="radio"  name="car_type" onclick="ccbt(this.value)" value="big"><span>big</span><br>
    from:<input type="text" name="from" id="from" style="width: 100%;height: 31px;float:left;background: #fefefe;box-sizing: border-box;-webkit-appearance: none;-moz-box-sizing: border-box;-webkit-box-sizing: border-box; color: #878787;font: 14px/20px 'Open Sans', sans-serif;border: 1px solid #f0efef;padding: 5px 18px 7px;" /><br>
    to:<input type="text" name="to" id="to" onblur="checkgooglemap()" style="width: 100%;height: 31px;float:left;background: #fefefe;box-sizing: border-box;-webkit-appearance: none;-moz-box-sizing: border-box;-webkit-box-sizing: border-box; color: #878787;font: 14px/20px 'Open Sans', sans-serif;border: 1px solid #f0efef;padding: 5px 18px 7px;"/><br>
     <input type="hidden" name="time" id="time"/><br> 
    time:<input type="text" id="date" size=7 onblur="timechange()"/>
    <input type="text" id="hour" size=1 onblur="timechange()"/>:
    <input type="text" id="min" size=1 onblur="timechange()"/>
    <input type="hidden" name="userid" id="userid" value="${currentUser.userid}"/><br/>
    <input type="hidden" name="ordertime" id="ordertime" /><br>
    <input type="submit" height=18 width=70 value="submit"/><br> 
    Car_no:<span id="carno"></span><br>
    Car_infomation:<br>
    <textarea id="carinfo" rows="10" cols="30">
</textarea>
						</form>
						<input type="hidden" id="cartype" >

					</div>
					<div class="grid_6 prefix_1">
						<div id="map"  style="width:500px;height:380px;"></div><br/>
<p id="info"></p>
<p id="price" style="color:blue;font-size:25px;font-weight:bold;"></p>
<p id="priceinfo"></p>
						</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="f_phone"><span>Call Us:</span> + 0834831819</div>
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