<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'one.jsp' starting page</title>
    
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
    <font size="2" color="red">this is error.jsp</font>
	<font size="3">
		<%
			String n=request.getParameter("num");
			if(!n.equals("")){
				out.println("<br>传递过来的是"+n);
			}else{
				String s=request.getParameter("message");
				out.println("<br>传递过来的是"+s);
			}
		 %>
		 <img alt="" src="error.jpg"
		  width="100px" height="100px">
	</font>
  </body>
</html>
