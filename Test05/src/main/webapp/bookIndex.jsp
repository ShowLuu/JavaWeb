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

<form action="saveinfo.jsp" method="post">
	<table border="1">
		<tr><td>书号</td><td><input type="text" name="bId"></td></tr>
		<tr><td>书名</td><td><input type="text" name="bName"></td></tr>
		<tr><td>数量</td><td><input type="text" name="number"></td></tr>
		<tr><td>作者</td><td><input type="text" name="vr"></td></tr>
	</table>
		<input type="submit" value="保存">

</form>

</body>
</html>