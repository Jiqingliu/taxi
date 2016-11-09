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
  <frameset rows="20%,*">
  <frame src="${pageContext.request.contextPath }/top.jsp" name="top">
  <frameset cols="15%,*">
  <frame src="${pageContext.request.contextPath }/menu.jsp" name="left">
  <frame src="${pageContext.request.contextPath }/errororder.jsp" name="work">
  </frameset>
  </frameset>

</html>
