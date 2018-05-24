<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>



<table align="center" cellpadding="1" border="1">
	<tr>
		<th>id</th>
		<th>用户名</th>
		<th>密码</th>
		<th>创建时间</th>
	</tr>
	
	<%
		try{
			String driverClass="com.mysql.jdbc.Driver";
			String url="jdbc:mysql://localhost:3306/javaee";
			String user="root";
			String password="111111";
			Class.forName(driverClass);	
			Connection con=DriverManager.getConnection(url, user, password);
			Statement sta=con.createStatement();
			String sql="select * from user";
			/* String insert="insert into user value(1,'张三','111')";
			String update="update user set password='222' where id=1 ";
			String delete="delete from user where id='1' "; */
			ResultSet rs=sta.executeQuery(sql);
			while(rs.next()){
				%>	
				<tr>
				<td><%=rs.getInt("id") %></td>
				<td><%=rs.getString("username") %></td>
				<td><%=rs.getString("password") %></td>
				<td><%=rs.getString("create_time")%></td>
				</tr>
				<%
			}
		}catch (Exception e){
			
		}
	%>
	
</table>

</body>
</html>