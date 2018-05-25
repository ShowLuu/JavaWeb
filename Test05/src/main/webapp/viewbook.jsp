<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="book" class="com.bookshop.order.BookBean" scope="session"></jsp:useBean>
<table border="1">
<tr><td>书号</td><td><jsp:getProperty name="book" property="bId"/></td></tr>
<tr><td>书名</td><td><jsp:getProperty name="book" property="bName"/></td></tr>
<tr><td>数量</td><td><jsp:getProperty name="book" property="number"/></td></tr>
<tr><td>作者</td><td><jsp:getProperty name="book" property="vr"/></td></tr>
</table>

</body>
</html>