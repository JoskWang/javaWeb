<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--
	Servlet  中查询数据获取集合
	jsp中 在页面中显示数据
  -->
	<!-- 获取数据遍历显示 ,每次遍历创建一行-->
	<!--判断如果有数据则遍历显示，如果没有给出提示  -->
	<c:choose>
		<c:when test="${!empty requestScope.list }">
			<table width="80%">
				<tr>
					<td>id</td>
					<td>账号</td>
					<td>密码</td>
					<td>邮箱</td>
				</tr>
				<c:forEach items="${requestScope.list }" var="user">
					<tr>
						<td>${user.id }</td>
						<td>${user.username }</td>
						<td>${user.password }</td>
						<td>${user.email }</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			<h3 align="center">没有查询到员工信息!!</h3>
		</c:otherwise>

	</c:choose>


</body>
</html>