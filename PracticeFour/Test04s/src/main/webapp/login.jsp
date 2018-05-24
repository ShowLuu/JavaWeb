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

<div align="center" style="color: red;">
	<%
		request.setCharacterEncoding("utf-8");
		String message=request.getParameter("message")==null?"":request.getParameter("message");
		response.setCharacterEncoding("utf-8");
	%>
	<%=message %>
</div>

<div>
	<form action="doLogin.jsp" method="post">
		<table align="center" cellpadding="1" border="1">
			<tr >
				<td>登录</td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="登录"></td>
				<td><input type="reset" value="重置"></td>
			</tr>
			
		</table>
	</form>
</div>

</body>
</html>