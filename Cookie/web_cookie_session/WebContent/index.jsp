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
	需求：
		index.jsp  首页，如果浏览器携带了用户名，那么页面显示用户名，并提供登录
		login.jsp  登录页面，如果浏览器携带了用户名，用户名栏显示出来
		LoginServlet  提供登录功能，如果账号密码正确，将账号作为Cookie让浏览器保存一周

  -->
  ${empty cookie.username.value?"游客":cookie.username.value } 你好，请<a href="login.jsp">登录</a>
</body>
</html>