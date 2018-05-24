<%-- <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.*"%> --%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,java.sql.*"%>
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
	System.out.print(username+"="+pwd);
	if(username==null){
		%>
			<jsp:forward page="login.jsp">
				<jsp:param value="username failed" name="message"/>
			</jsp:forward>
		<%
	}
	
	if(pwd==null){
		%>
			<jsp:forward page="login.jsp">
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
	String sql="select * from javaee.user where username='"+username+"' ";
	System.out.print(sql);
	ResultSet rs=sta.executeQuery(sql);
	while(rs.next()){
		Integer id=rs.getInt("id");
		String userId=id.toString();
		String name=rs.getString("username");
		String pwd2=rs.getString("password");
		String createTime=rs.getString("create_time");
		if(pwd2.equals(pwd)){
			%>
			<jsp:forward page="index.jsp">
				<jsp:param value="<%=userId %>" name="userId"/>
				<jsp:param value="<%=username %>" name="username"/>
				<jsp:param value="<%=createTime %>" name="createTime"/>
			</jsp:forward>
			<%
		}else{
			%>
			<jsp:forward page="register.jsp">
				<jsp:param value="user failed" name="message"/>
			</jsp:forward>
			<%
		}
	}
			%>
			<jsp:forward page="register.jsp">
				<jsp:param value="user failed" name="message"/>
			</jsp:forward>
			<%
%>

</body>
</html>