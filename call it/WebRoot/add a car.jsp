<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <form name="carform" action="${pageContext.request.contextPath}/car/car!querybytype" method="post">
    carno:<input type="text" name="carno" id="carno"/><br/>
    cartype:<input type="text" name="cartype" id="cartype"/><br/>
    d  n:<input type="text" name="divername" id="divername"/><br/>
    d phon:<input type="text" name="diverphone" id="diverphone"/><br/>
    price:<input type="text" name="price" id="carno"/><br/>
    
    <input type="submit" height=18 width=70 value="submit"/>
    </form>
  </body>
</html>
