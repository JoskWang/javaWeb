<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--
		一下三个标签组成if-else if-else 语句
		c:choose if-else语句的开始
			内部只能有when或者c:otherwise两个
			可以有多个when语句
			如果有多个语句，条件大的写到下面
			多个语句是互斥关系，只会执行一个
			otherwise语句可以没有，如果有写到最下面
			c:when  test:when语句的执行条件，只能接收布尔值    if或 else if  
			c:otherwise   else
			
		判断参数提交的分数，根据分数输出不同的内容	
	  -->
	<c:choose>
		<c:when test="${param.score==100 }">
			<!-- 这里可以写注释 -->
			<h3>完美！！！</h3>
		</c:when>
		<c:when test="${param.score>=80 }">
			<h3>漂亮！！！</h3>
		</c:when>
		<c:when test="${param.score>=60 }">
			<h3>及格万岁！！！</h3>
		</c:when>
		<c:otherwise>
			<h3>恭喜！！！</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>