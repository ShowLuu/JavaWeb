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

	<%@include file="head.txt" %>
  </head>
  
  
  <body>
    
             输入0~100的数：
    <form action="one.jsp">
    	<input type="text" name="num" value=""/>
    	<input type="submit" value="传送" name="submit">
    </form>
    
    <%
    	String num=request.getParameter("num");
    	if(num==null){
    		num="0";
    	}
    	try{
    		int n=Integer.parseInt(num);
    		if(n>0&&n<50){
    			%>
    				<jsp:forward page="two.jsp">
    					<jsp:param value="<%=n %>" name="num"/>
    				</jsp:forward>
    			<%
    		}else if(n>=50&&n<=100){
    			%>
    				<jsp:forward page="three.jsp">
    					<jsp:param value="<%=n %>" name="num"/>
    				</jsp:forward>
    			<%
    		}else if(n>100){
    			%>
    				<jsp:forward page="error.jsp">
    					<jsp:param value="<%=n %>" name="num"/>
    				</jsp:forward>
    			<%
    		}
    	}catch(Exception e){
    			%>
    				<jsp:forward page="error.jsp">
    					<jsp:param value="<%=e.toString() %>" name="message"/>
    				</jsp:forward>
    			<%
    	}
    %>
    
  </body>
</html>
