package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LoginDao;

@WebServlet(name="login",urlPatterns="/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String code=req.getParameter("code");
		String message="";
		boolean flag=true;
		if(username.equals("")){
			message="请输入用户名";
			flag=false;
		}else if(password.equals("")){
			message="请输入密码";
			flag=false;
		}else if(code.equals("")){
			message="请输入验证码";
			flag=false;
		}
		String verificationCode=req.getSession().getAttribute("code").toString();
		if(!code.equals(verificationCode)){
			message="验证码输入错误";
			flag=false;
		}
		if(!flag){
			req.setAttribute("err", message);
			req.getRequestDispatcher("/login.jsp").forward(req, resp);
			return;
		}
		LoginDao dao=new LoginDao();
		boolean res=dao.checkUser(username, password);
		if(!res){
			req.setAttribute("err", "登陆失败");
			req.getRequestDispatcher("/login.jsp").forward(req, resp);
		}else{
			req.setAttribute("username", username);
			req.getRequestDispatcher("/success.jsp").forward(req, resp);
		}
	}

}
