<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	HTTP协议的缺点：
		通过http协议也就是浏览器向服务器发送请求时，服务器无法根据请求报文区分请求是不是来自于同一个客户端
		类似于商城之类的项目需要区分多次请求是不是同一个客户端
		
		Cookie技术：用来让服务器记住客户端身份的技术，属于前端技术
			使用步骤：
				1、客户端第一次访问服务器，服务器创建一个Cookie(),并将Cookie信息设置到响应报文中交给浏览器
				2、浏览器接收到Cookie的报文之后，自动将Cookie信息存到浏览器内存中
				3、如果浏览器再次访问服务器通过请求报文会自动携带Cookie交给服务器
				4、如果服务器需要修改数据，则读取请求报文中的Cookie进行修改，修改之后需要将修改过的Cookie设置到响应报文中交给浏览器
				....
				5、如果Cookie没有用了，服务器可以给出一个响应 让Cookie失效
		Cookie的作用：
			用来长时间保存用户名等信息
			广告的推广

		
 -->
 <!-- BServlet中设置Cookie，在1.jsp页面中读取 -->
 ${cookie.username.value }
</body>
</html>