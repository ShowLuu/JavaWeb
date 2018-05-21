<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
    This is my JSP page. <br>
    
    <%
    	String username=request.getParameter("username");
    	String password=request.getParameter("password");
    	if(username.equals("lilian")&&password.equals("lilian")){
    		%>
    			<jsp:forward page="success.jsp">
    				<jsp:param value="<%=username %>" name="username"/>
    				<jsp:param value="<%=password %>" name="psssword"/>
    			</jsp:forward>
    		<%
       	}else{
       		%>
    			<jsp:forward page="fail.jsp">
    				<jsp:param value="<%=username %>" name="username"/>
    				<jsp:param value="<%=password %>" name="psssword"/>
    			</jsp:forward>
    		<%
       	}
     %>
  </body>
</html>
