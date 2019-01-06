package com.atguigu.cookie.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BServlet
 */
public class BServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1、创建Cookie
		Cookie cookie = new Cookie("username", "laosong");
		//3、Cookie默认有效路径是当前项目的根目录
		//设置Cookie的有效路径[浏览器访问哪个路径时会携带Cookie]
		//Set-Cookie:username=laosong; Path=/11_web_cookie_session/1.jsp
		//浏览器只有在访问path路径下的资源时才会携带Cookie
		cookie.setPath(request.getContextPath()+"/a");//path是给浏览器使用的，如果使用绝对路径，前端地址到8080
		
		//2、设置到响应头中
		response.addCookie(cookie);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
