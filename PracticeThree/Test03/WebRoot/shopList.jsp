<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shopLogin.jsp' starting page</title>
    
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
    
    
    <%-- <%
    	String username=request.getParameter("username");
    	session.setAttribute("username", username);
     %> --%>
    
   <form action="shopRes.jsp" method="post">
   		<table align="center" border="1" cellspacing="1" cellpadding="0" >
    		<tr>
    			<td align="center" colspan="2">商品列表</td>
    		</tr>
    		<tr>
    			<td width="100px">商品名</td>
    			<td><input type="text" name="goods"></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="提交"></td>
    			<td><input type="reset" value="重置"></td>
    		</tr>
    	</table>
   </form>
    
  </body>
</html>
