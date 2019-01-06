package com.atguigu.cookie.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 */
public class AServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1、获取所有的Cookie
		Cookie[] cookies = request.getCookies();
		// 2、遍历 之前需要判断Cookie是不是空
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				// 3、获取Cookie的键和值，Cookie没有根据键获取值的方法
				System.out.println(cookie.getName());
				System.out.println(cookie.getValue());
				//4、修改Cookie：遍历时根据key找到需要修改的Cookie
				if("username".equals(cookie.getName())){
					//找到想要修改的Cookie进行操作
					cookie.setValue("laowang");
					//5、修改之后需要将Cookie再交给浏览器
					response.addCookie(cookie);
					//修改Cookie只是使用了一个同名的Cookie替换之前的旧的Cookie
				}
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
