<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
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
	String username=request.getParameter("username");
	String pwd=request.getParameter("password");
	request.setCharacterEncoding("utf-8");
	System.out.print(username+"="+pwd);
	if(username==null){
		%>
			<jsp:forward page="register.jsp">
				<jsp:param value="username failed" name="message"/>
			</jsp:forward>
		<%
	}
	
	if(pwd==null){
		%>
			<jsp:forward page="register.jsp">
				<jsp:param value="password failed" name="message"/>
			</jsp:forward>
		<%
	}
	String driverClass="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/javaee";
	String user="root";
	String password="111111";
	Class.forName(driverClass);
	Connection con=DriverManager.getConnection(url, user, password);
	Statement sta=con.createStatement();
	Date date=new Date();
	SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String sql="insert into user value(null,'"+username+"','"+password+"','"+simpleDateFormat.format(date)+"')";
	System.out.print(sql);
	int count=sta.executeUpdate(sql);
	if(count==0){
		%>
		<jsp:forward page="register.jsp">
			<jsp:param value="register failed" name="message"/>
		</jsp:forward>
		<%
	}
		%>
			<jsp:forward page="login.jsp">
				<jsp:param value="register success,please login" name="message"/>
			</jsp:forward>
		<%
		
	
%>

</body>
</html>