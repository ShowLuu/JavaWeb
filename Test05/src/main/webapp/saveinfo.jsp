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
<jsp:setProperty property="*" name="book"/>
<a href="viewbook.jsp">产查看信息</a>

</body>
</html>