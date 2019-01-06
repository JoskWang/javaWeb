<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var button = document.getElementById("sendBtn");
		button.onclick = function(){
			//alert("hehe");
			//按钮点击之后设置不可用[此操作或取消标签的默认行为]
			this.disabled = true;
			//手动提交
			this.parentNode.submit();
		};
	};
</script>
</head>
<body>
<!--
	表单的重复提交：
		1、注册成功之后转发到注册成功页面，如果直接刷新浏览器，会重复提交数据给Servlet处理并且插入到数据库中
			坏处：多次将相同数据插入到数据库，造成冗余数据过多
			解决：转发地址栏地址没改变，刷新仍然将请求交给Servlet处理，Servlet多次处理请求
				使用重定向
		2、网络延时,多次点击提交按钮，会多次提交请求给Servlet，多次将数据保存到数据库
			解决：按钮只让点一次[点击一次禁用按钮]
		3、点击浏览器的回退按钮，浏览器会使用缓存，而且之前填写的信息仍然存在，再次点击提交仍然可以将数据提交给服务器
			解决：session
				Token[令牌]
				》浏览器第一次访问服务器：服务器在regist.jsp页面中创建一个UUID，分别放到表单中，放到session域中存起来
				》用户提交注册请求时：
						服务器会从请求参数中获取UUID，再从session中获取UUID
						进行匹配，如果匹配成功代表可以注册
						如果匹配失败代表重复提交
			

  -->
  <%
  		//1、创建UUID   token
  		String token = UUID.randomUUID().toString();
  		//2、将token存到session域中[服务器端]
  		session.setAttribute("serverToken", token);
  		//3、在form表单中设置一个隐藏域存放token
  
  %>
	<form action="${pageContext.request.contextPath }/RegistServlet" method="post">
		<input type="hidden" name="clientToken" value="${serverToken }"/>
			用户名：<input type="text" name="username"/> 
			密码：<input type="password" name="password"/>
			<input type="submit" value="注册" id="sendBtn"/>
		</form>
</body>
</html>