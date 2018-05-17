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
			String s=request.getParameter("message");
			out.println("<br>传递过来的是"+s);
		 %>
		 <img alt="" src="http://image.baidu.com/search/detail?ct=503316480&z=undefined&tn=baiduimagedetail&ipn=d&word=%E9%94%99%E8%AF%AF%E5%9B%BE%E7%89%87&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=undefined&cs=2411361639,837032230&os=30147563,3398813680&simid=68950706,849217018&pn=23&rn=1&di=53732566910&ln=1986&fr=&fmq=1526557225846_R&fm=&ic=undefined&s=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&is=0,0&istype=0&ist=&jit=&bdtype=0&spn=0&pi=0&gsm=0&hs=2&objurl=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01c49a568f0b4a32f8754c80388d73.jpg&rpstart=0&rpnum=0&adpicid=0"
		  width="100px" height="100px">
	</font>
  </body>
</html>
