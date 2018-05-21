<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jisuanqi.jsp' starting page</title>
    
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
    
    <form action="" method="post">
    	请输入数值，进行计算<br>
	    <input type="text"  name="first" style="width: 50px" >
	    <select name="op">
	    	<option value="+" selected>+</option>
	    	<option value="-" >-</option>
	    	<option value="*" >*</option>
	    	<option value="/" >/</option>
	    </select>
	    <input type="text" name="second" style="width: 50px" >
	    <input type="submit" value="计算">
    </form>
    
    <br>
    <%
    	String first=request.getParameter("first")==null?"0.0":request.getParameter("first");
    	String op=request.getParameter("op")==null?"+":request.getParameter("op");
    	String second=request.getParameter("second")==null?"0.0":request.getParameter("second");
    	double res=0.0;
    	double a=0.0;
    	double b=0.0;
    	/* try{ */
    		a=Double.parseDouble(first);
	    	b=Double.parseDouble(second);
	    	if(op.equals("+")){
	    		res=a+b;
	    	}else if(op.equals("-")){
	    		res=a-b;
	    	}else if(op.equals("*")){
	    		res=a*b;
	    	}else if(op.equals("/")&&b!=0.0){
		    	res=a/b;
		    	out.print("除数不能为0");
	    	}
    	/* }catch(Exception e){
    		out.print(e.toString());
    	} */
    	
     %>
    <br>
    结果：<%=a %><%=op %><%=b %>=<%=res %>
    
  </body>
</html>
