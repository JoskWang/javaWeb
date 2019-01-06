package com.atguigu.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atguigu.bean.User;

/**
 * Servlet implementation class ListServlet
 */
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//模拟获取数据
		List<User> list = new ArrayList<User>();
		for (int i = 0; i < 20; i++) {
			list.add(new User(i, "hehe"+i, "haha", "hh@12.com"));
		}
		//将数据存到域中
		request.setAttribute("list", list);
		//转到到list.jsp页面遍历显示数据
		request.getRequestDispatcher("/list.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
