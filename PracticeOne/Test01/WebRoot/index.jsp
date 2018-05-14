<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
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
  
  <%
  	Date date=new Date();
  	
  	SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  	String time=format.format(date);
   %>
   

   
   
  
  <body>
    This is my JSP page. <br>
    
       当前时间：<%= time %>
       
  <%
  	int hour=date.getHours();
  	if(hour>6&&hour<=12){
  		out.print("早上好");
  	}else if(hour>12&&hour<=18){
  	    out.print("下午好");
  	}else if(hour>=18&&hour<=42){
  	    out.print("晚上好");
  	}else if(hour>0&&hour<=6){
  	    out.print("午夜好");
  	}
   %>
   
   <br>
   99乘法表
   <br>
    <%
   		for(int i=1;i<=9;i++){
   			for(int j=1;j<=i;j++){
   				if((i==3||i==4)&&j==3){
   					out.print(" ");
   				}
   				out.println(i+"*"+j+"="+i);
   			}
   			%><br><%
   		}
    %>
    <br>
   99乘法表
   <br>
    <%
   		for(int i=9;i>=1;i--){
   			for(int j=i;j>=1;j--){
   				if((i==2&&j==1)||(i==3&&j==2)){
   					out.print(" ");
   				}
   				out.println(i+"*"+j+"="+i*j);
   			}
   			%><br><%
   		}
    %>
    
  </body>
</html>
