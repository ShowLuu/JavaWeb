<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'result.jsp' starting page</title>
    
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
    考试啦. <br>
    <form action="resultCheck.jsp" method="post">
    	1.你帅不帅：<br>
    	<input type="radio" name="1" value="A">A.帅
    	<input type="radio" name="1" value="B">B.一般
    	<input type="radio" name="1" value="C">C.不帅
    	<br>
    	2.你帅不帅：<br>
    	<input type="radio" name="2" value="A">A.帅
    	<input type="radio" name="2" value="B">B.一般
    	<input type="radio" name="2" value="C">C.不帅
    	<br>
    	3.你帅不帅：<br>
    	<input type="radio" name="3" value="A">A.帅
    	<input type="radio" name="3" value="B">B.一般
    	<input type="radio" name="3" value="C">C.不帅
    	<br>
    	4.你帅不帅：<br>
    	<input type="radio" name="4" value="A">A.帅
    	<input type="radio" name="4" value="B">B.一般
    	<input type="radio" name="4" value="C">C.不帅
    	<br>
    	5.你的性别：<br>
    	<input type="radio" name="5" value="A">A.男
    	<input type="radio" name="5" value="B">B.女
    	<br>
    	6.你的爱好：<br>
    	<input type="checkbox" name="6" value="A">A.影视
    	<input type="checkbox" name="7" value="B">B.阅读
    	<input type="checkbox" name="8" value="C">C.运动
    	<input type="checkbox" name="9" value="D">D.购物
    	<input type="checkbox" name="10" value="E">E.游戏
    	<br>
    	<input type="submit" value="提交">
    </form>
    
     <!-- <form action="resultCheck.jsp" method="post">
    	1.你帅不帅：<br>
    	<input type="radio" name="1" value="A">A.帅<br>
    	<input type="radio" name="1" value="B">B.一般<br>
    	<input type="radio" name="1" value="C">C.不帅<br>
    	2.你帅不帅：<br>
    	<input type="radio" name="2" value="A">A.帅<br>
    	<input type="radio" name="2" value="B">B.一般<br>
    	<input type="radio" name="2" value="C">C.不帅<br>
    	3.你帅不帅：<br>
    	<input type="radio" name="3" value="A">A.帅<br>
    	<input type="radio" name="3" value="B">B.一般<br>
    	<input type="radio" name="3" value="C">C.不帅<br>
    	4.你帅不帅：<br>
    	<input type="radio" name="4" value="A">A.帅<br>
    	<input type="radio" name="4" value="B">B.一般<br>
    	<input type="radio" name="4" value="C">C.不帅<br>
    	<br>
    	<input type="submit" value="提交">
    </form> -->
    
  </body>
</html>
