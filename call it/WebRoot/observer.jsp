<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	     
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
						document.getElementById("carno").value="sorry! no car free";
					}else
					{
						document.getElementById("carno").value=req.responseText;
						ccbt1();
					}	
						
				}
          }
					
					
	}
	function ccbt1()
	{
	var carno = document.getElementById("carno").value;
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
        async defer></script>
   <script>
function check() {
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
  </head>
  
  <body>
    <form name="orderform" action="${pageContext.request.contextPath}/order/order!add" method="post">
    <input type="hidden" name="userid" id="userid" value="${currentUser.userid}"/><br/>
    Custmor name:${currentUser.name}<br/>
    car_type:<input type="radio"  name="car_type" value="mini" onclick="ccbt(this.value)" checked="checked">mini
    	<input type="radio"  name="car_type" onclick="ccbt(this.value)" value="mid" >mid
    	<input type="radio"  name="car_type" onclick="ccbt(this.value)" value="big">big<br/>  
    from:<input type="text" name="from" id="from" /><br> 
    to:<input type="text" name="to" id="to" onblur="check()"/><br/>
     
    time:<input type="text" id="date" size=7 onblur="timechange()"/>
    <input type="text" id="hour" size=1 onblur="timechange()"/>:
    <input type="text" id="min" size=1 onblur="timechange()"/>
    <input type="hidden" name="time" id="time"/><br> 
    
    <input type="hidden" name="ordertime" id="ordertime" /><br>
    <input type="submit" height=18 width=70 value="submit"/><br> 
    Car_no:<input type="text"  id="carno" name="carno" readOnly="readonly"/><br>
    Car_infomation:<br>
    <textarea id="carinfo" rows="10" cols="30">
</textarea>
<br>
    </form>
<input type="hidden" id="cartype" >
<div id="map"  style="position:absolute;left:350px;top:0px;width:500px;height:380px;"></div>
<h2 id="info"></h2>
<h1 id="price"></h1>
<span id="priceinfo"></span>
  </body>
</html>