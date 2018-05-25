<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <script type="text/javascript">
	function getRandImage() {
	alert(1);
		document.getElementById("randImage").src = "${pageContext.request.contextPath}/checkCode?r="
				+ new Date();
	}
</script>

  </head>
  
  <body>
  
  <p style="color: red" align="center">
  	<%
  		if(request.getAttribute("err")!=null){
  			out.print(request.getAttribute("err")+"<br>");
  		}
  	 %>
  </p>
  
 	<p align="center">请输入用户名和密码</p>
 	<form action="login" method="post">
 		<table align="center">
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;&nbsp码：</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td>验证码：</td>
				<td><input type='text' name='code' size='6' maxlength="6"
					value="" /> 
					<a href="login.jsp" onclick='getRandImage()'>
					<img alt="看不清,换一张" name="randImage" id="randImage" src="${pageContext.request.contextPath}/checkCode" width="60"
						height="20" border="1" align="absmiddle" /></a>
						<a href="login.jsp" onclick='getRandImage();'>
						<span style="font-size: 12px; color: blue">换一张</span></a>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="登陆">
					<input type="reset" value="注册">
				</td>
			</tr>
		</table>
 	</form>
  </body>
</html>
