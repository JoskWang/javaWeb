package com.atguigu.cookie.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 */
public class CookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Cookie的默认有效时间是一次会话，浏览器默认接收到Cookie之后保存在运行内存中，如果关闭浏览器就清除
		//1、第一次访问服务器时创建Cookie   
		//一次可以设置多个Cookie
		Cookie cookie = new Cookie("username", "chenxiandong");
		//设置Cookie的有效时间
		/*
		 * setMaxAge  参数单位秒   username=chenxiandong; Expires=Wed, 13-Sep-2017 08:54:10 GMT
		 * 		参数：>0: 代表秒
		 * 			保存一周： 60*60*24*7
		 * 			=0: age=30; Expires=Thu, 01-Jan-1970 00:00:10 GMT 立即失效
		 * 				以后让持久化的Cookie立即失效，可以使用一个同名的立即失效的Cookie替换
		 * 			<0: 一次会话，和默认效果一样
		 */
		cookie.setMaxAge(60);
		Cookie cookie1 = new Cookie("age", "30");
		cookie1.setMaxAge(-10);//让浏览器保存Cookie的时间  
		
		//2、将Cookie设置到响应头中，交给浏览器    
		//在响应头中多了：Set-Cookie: username=chenxiandong，浏览器接收到这个Cookie会将Cookie存到内存中，下次再访问项目时会自动携带
		response.addCookie(cookie);
		response.addCookie(cookie1);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
