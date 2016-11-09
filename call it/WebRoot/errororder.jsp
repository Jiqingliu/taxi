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
       
        function myfun()
    {
        document.getElementById('ordertime').value =Date();
    }
    var req = new XMLHttpRequest();
   
    function ccbt(cartype)
	{
	
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
  alert("the distance between "+start+" and "+end+" is "+distance+" miles!"+" about "+Math.round(time/60)+"min");
    } else {
      window.alert('Directions request failed due to ' + status);
    }
  });
}


    </script>
  </head>
  
  <body>
  
    <form name="orderform" action="${pageContext.request.contextPath}/order/order!add" method="post">
    <input type="hidden" name="userid" id="userid" value="${currentUser.userid}"/><br/>
    Custmor name:${currentUser.name}<br/>
    car_type:<input type="radio"  name="car_type" value="mini" onclick="ccbt(this.value)" checked="checked">small
    	<input type="radio"  name="car_type" onclick="ccbt(this.value)" value="mid" >mid
    	<input type="radio"  name="car_type" onclick="ccbt(this.value)" value="big">big<br/>  
    from:<input type="text" name="from" id="from" onblur="check()"/><br> 
    to:<input type="text" name="to" id="to" onblur="check()"/><br/>
    time:<input type="text" name="time" id="time"/><br> 
    <input type="hidden" name="ordertime" id="ordertime" /><br>
    <input type="submit" height=18 width=70 value="submit"/><br> 
    Car_no:<input type="text"  id="carno" name="carno" readOnly="readonly"/><br>
    Car_infomation:<br>
    <textarea id="carinfo" rows="10" cols="30">
</textarea>
<br>
    </form>

<div id="map"  style="position:absolute;left:350px;top:0px;width:500px;height:380px;"></div>
  </body>
</html>