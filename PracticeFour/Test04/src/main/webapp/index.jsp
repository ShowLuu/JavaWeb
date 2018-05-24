<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<%
	String userId=request.getParameter("userId");
	String username=request.getParameter("username");
	String createTime=request.getParameter("createTime");
	Object num=application.getAttribute("count")==null?"0":application.getAttribute("count");
	String number=num.toString();
	System.out.print(num+"="+number);
	Integer loginCount=Integer.parseInt(number)+1;
	application.setAttribute("count", loginCount);
	request.setCharacterEncoding("utf-8");
%>

第<%=userId%>个用户，<%=username %>登陆------<%=createTime %>
<br>
共登录了<%=loginCount %>次

</body>
</html>