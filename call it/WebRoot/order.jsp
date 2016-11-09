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
 //发布者
        function Publisher(obj){
            this.observers = [];
            var state = obj.value;     //让该内容不能直接访问

            //新增两个对于state的操作 获取/更新
            this.getState=function(){
                return state;
            }
            this.setState=function(value){
                state = value;
                this.notice();
            }
            this.obj = obj;

        }
        Publisher.prototype.addOb=function(observer){
            var flag = false;
            for (var i = this.observers.length - 1; i >= 0; i--) {
                if(this.observers[i]===observer){
                    flag=true;                
                }
            };
            if(!flag){
                this.observers.push(observer);
            }
            return this;
        }
        Publisher.prototype.removeOb=function(observer){
            var observers = this.observers;
            for (var i = 0; i < observers.length; i++) {
                if(observers[i]===observer){
                    observers.splice(i,1);
                }
            };
            return this;
        }
        Publisher.prototype.notice=function(){
            var observers = this.observers;
            for (var i = 0; i < observers.length; i++) {
                    observers[i].update(this.getState());
            };
        }

        //订阅者
        function Subscribe(obj){
            this.obj = obj;
            this.update = function(data){
                this.obj.value = data;
            };
        }

        //实际应用
        var oba = new Subscribe(document.querySelector("#oba")),
            obb = new Subscribe(document.querySelector("#obb"));

        var pba = new Publisher(document.querySelector("#pba"));

        pba.addOb(oba);
        pba.addOb(obb);
        
        var cartype = document.getElementById("car_type").value;
        var url = "${pageContext.request.contextPath }/car/car!querybytype?cartype="+cartype;
        
	    req.open("post",url,true);
	    req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	    
        oba.update = function(state){

	if(req.responseText=='0')
					{
						this.obj.value="sorry! no car free";
					}else
					{
						this.obj.value = req.responseText.carno;
					}
            
        }
        obb.update = function(state){
            if(req.responseText=='0')
					{
						this.obj.value="";
					}else
					{
						this.obj.value = req.responseText.carinfo;
					}
        }
        }

        pba.obj.addEventListener('keyup',function(){
            pba.setState(this.value);
        });
    </script>
  </head>
  
  <body>
    <form name="orderform" action="${pageContext.request.contextPath}/order/order!add" method="post">
    <input type="hidden" name="userid" id="userid" value="${currentUser.userid}"/><br/>
    Custmor name:${currentUser.name}<br/>
    car_type:<input type="radio"  name="car_type" value="mini" onclick="ccbt(this.value)" checked="checked">small
    	<input type="radio"  name="car_type" onclick="ccbt(this.value)" value="mid" >mid
    	<input type="radio"  name="car_type" onclick="ccbt(this.value)" value="big">big<br/>  
    from:<input type="text" name="from" id="from"/><br> 
    to:<input type="text" name="to" id="to"/><br/>
    time:<input type="text" name="time" id="time"/><br> 
    <input type="hidden" name="ordertime" id="ordertime" /><br>
    <input type="submit" height=18 width=70 value="submit"/><br>
    Car_no:<input type="text"  id="oba" name="ona" readOnly="readonly"/><br>
    Car_infomation:<br>
    <textarea id="obb" rows="10" cols="30">
</textarea><br>
    </form>

  </body>
</html>