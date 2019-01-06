package com.atguigu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegistServlet
 */
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/*	模拟网络延迟
	 * 	try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		//1、获取请求参数中的Token
		String clientToken = request.getParameter("clientToken");
		//2、获取session域中的Token
		HttpSession session = request.getSession();
		String serverToken = (String) session.getAttribute("serverToken");
		//3、比较两个Token是否一致
		//4、使用完token之后，移除掉[客户端不可控制，我们移除session中的token]
		session.removeAttribute("serverToken");
		if(clientToken!=null&&serverToken!=null&&clientToken.equals(serverToken)){
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			//将用户保存到数据
			System.out.println(username+"--"+password+"成功插入到数据库中！！！");
			//转发到成功页面
			//request.getRequestDispatcher("/regist_success.jsp").forward(request, response);
			//使用重定向
			response.sendRedirect(request.getContextPath()+"/regist_success.jsp");
		}else{
			//重复提交，给出提示
			response.getWriter().write("why???");
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
