package com.atguigu.cookie.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 */
public class SessionServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//域对象：在servlet+jsp中共享数据
		//1、获取Session对象 [创建时机：
		//servlet中在调用request.getSession()之后创建
		//jsp中：访问页面时就会创建Session对象]
		HttpSession session = request.getSession();
		//2、在session中存数据  
		session.setAttribute("number", "9527");
		//session的获取，通过request对象获取
		/**
		 * servlet中：request.getSession()
		 * 		jsp中：直接可以使用，在对应的Servlet中相当于已经调用request.getSession()
		 */
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
