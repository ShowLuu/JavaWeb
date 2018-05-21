<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'result.jsp' starting page</title>
    
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
    结果分析： <br>
    你的分数是：
    <%
    	int result=0;
    	String s1=request.getParameter("1")==null?"":request.getParameter("1");
    	String s2=request.getParameter("2")==null?"":request.getParameter("2");
    	String s3=request.getParameter("3")==null?"":request.getParameter("3");
    	String s4=request.getParameter("4")==null?"":request.getParameter("4");
    	String s5=request.getParameter("5")==null?"":request.getParameter("5");
    	String s6=request.getParameter("6")==null?"":request.getParameter("6");
    	String s7=request.getParameter("7")==null?"":request.getParameter("7");
    	String s8=request.getParameter("8")==null?"":request.getParameter("8");
    	String s9=request.getParameter("9")==null?"":request.getParameter("9");
    	String s10=request.getParameter("10")==null?"":request.getParameter("10");
    	
    	if(s1.equals("A")){
    		result+=20;
    	}
    	if(s2.equals("B")){
    		result+=20;
    	}
    	if(s3.equals("C")){
    		result+=20;
    	}
    	if(s4.equals("A")){
    		result+=20;
    	}
    	if(s5.equals("B")){
    		result+=20;
    	}
    	if(s6.equals("A")){
    		result+=20;
    	}
    	if(s7.equals("B")){
    		result+=20;
    	}
    	if(s8.equals("C")){
    		result+=20;
    	}
    	if(s9.equals("D")){
    		result+=20;
    	}
    	if(s10.equals("E")){
    		result+=20;
    	}
     %>
     
     <%=result %>
     <br>
     <%=request.getParts() %><br>
     <%=request.getCharacterEncoding() %><br>
     <%=request.getLocalAddr() %><br>
     <%=request.getQueryString() %><br>
     <%=request.getAttributeNames() %><br>
     <%=request.getAuthType() %><br>
     <%=request.getPathTranslated() %><br>
     <%=request.getLocalPort() %><br>
     <%=request.getRemoteUser() %><br>
     <%=request.getServerName() %><br>
     <%=request.getRequestedSessionId() %><br>
     <%=request.getRequestURI() %><br>
  </body>
</html>
