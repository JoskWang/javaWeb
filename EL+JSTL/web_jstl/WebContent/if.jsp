<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	c:if 标签  就是java中的if语句
		test: if语句的执行条件,决定标签内部的内容是否执行
		需要控制显示的标签等写到标签内
		需求：判断参数中是否携带用户名，如果有则显示用户名，如果没有显示游客
		
		每个if标签都是一个单独的if语句，每次都会进行判断
		我们可以通过条件控制内容的互斥显示
  -->
  <c:if test="${empty param.username }">
  <!-- 如果用户名为空  会执行标签语句 -->
  	<h3>游客你好，请登录!!!</h3>
  </c:if>
  <c:if test="${!empty param.username }">
  <!-- 如果用户名不为空  会执行标签语句 -->
  	<h3>欢迎 <span style="color:red">${param.username }</span></h3>
  </c:if>
</body>
</html>