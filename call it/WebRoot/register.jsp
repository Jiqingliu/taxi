<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<!-- java script标记最好放置到head中 -->
<script type="text/javascript">
function checkForm()
{
      //在java script 中，定义变量关键字是var
      //在java script 中，所有的变量都是弱类型
      var username = document.getElementById("username");
      
      if(username.value=="")
      {
          alert("you must have a username");
          return false;
      }
      
                  var userpassword = document.getElementById("userpassword");
      
      if(userpassword.value.length<6)
      {
          alert("passwoed must 6 more");
          return false;
      }
      
     userform.submit();
}


</script>
  </head>
  
  <body>
    <form name="userform" action="${pageContext.request.contextPath}/usermanage/user!add" method="post">
    username:<input type="text" name="username" id="username"/><br/>
    password:<input type="password" name="userpassword" id="userpassword"/><br>
    email:<input type="text" name="email" id="email"/><br>
    name:<input type="text" name="name" id="name"/><br/>
    phone:<input type="text" name="phone" id="phone"/><br>
    <input type="button" onclick="checkForm();" value="submit"/>
    </form>
  </body>
</html>
