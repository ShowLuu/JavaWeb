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
    <font size="2" color="blue">this is two.jsp</font>
	<font size="3">
		<%
			String s=request.getParameter("num");
			out.println("<br>传递过来的是"+s);
		 %>
		 <img alt="" src="https://image.baidu.com/search/detail?ct=503316480&z=undefined&tn=baiduimagedetail&ipn=d&word=%E9%A3%8E%E6%99%AF&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=undefined&cs=534858419,2528258774&os=2997905726,31191082&simid=2000029632,915424135&pn=1&rn=1&di=22047608020&ln=1988&fr=&fmq=1526557160719_R&fm=&ic=undefined&s=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&is=0,0&istype=0&ist=&jit=&bdtype=13&spn=0&pi=0&gsm=0&hs=2&objurl=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4a36acaf2edda3ccd53548ea0be93901203f9223.jpg&rpstart=0&rpnum=0&adpicid=0" 
		 width="<%=s %>" height="<%=s %>">
	</font>
  </body>
</html>
