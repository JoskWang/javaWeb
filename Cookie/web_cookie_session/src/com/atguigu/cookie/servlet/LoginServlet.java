package com.atguigu.cookie.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if("admin".equals(username)&& "123456".equals(password)){
			//登录成功，保存用户名
			Cookie cookie = new Cookie("username", username);
			//设置有效时间
			cookie.setMaxAge(60*60*24*7);
			//设置到响应头中
			response.addCookie(cookie);
			//跳转到首页
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}else{
			//登录失败，跳转到login.jsp
			response.sendRedirect(request.getContextPath()+"/login.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
