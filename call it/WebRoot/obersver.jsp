<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <div>
        <label>用户名称：<input type="text" id="pba" placeholder="请输入用户名称" /></label><br /><br />
        <label>生成邮箱：<input type="text" id="oba" readonly /></label>
        <label>生成ID：<input type="text" id="obb" readonly /></label>
    </div>

    <script type="text/javascript">
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

        oba.update = function(state){
            this.obj.value = state+"@w3c.com";
        }
        obb.update = function(state){
            this.obj.value = "ID-"+state;
        }

        pba.obj.addEventListener('keyup',function(){
            pba.setState(this.value);
        });
        
    </script>
</body>
</html>
