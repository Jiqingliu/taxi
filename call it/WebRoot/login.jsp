<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
  </head>
 <BODY>
  <form action="${pageContext.request.contextPath}/usermanage/user!doCheckUser" method="post">
  Username:<INPUT type=text maxLength=30 size=24 name=username><br/>
  Password:<INPUT type=password maxLength=30 size=24 name=userpassword><br/>
     <input type="submit" height=18 width=70 value="login"><br/>
     <a href="${pageContext.request.contextPath}/register.jsp">register</a>
  </form> 
  </BODY>
</html>
