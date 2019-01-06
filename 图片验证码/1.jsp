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
	图片验证码：[和token一样]
		服务器创建验证码：
			创建一个随机字符串
			将字符串存到session域中
			将字符串转换成图片[通过第三方jar包]
			将图片设置到页面中
		浏览器访问页面：
			打开页面[页面中有验证码图片]
			用户根据图片输入验证码字符串
			提交给服务器
			服务器从请求参数中获取用户输入的验证码
			服务器从session域中获取验证码字符串
			比较[如果一致，可以成功提交]
			服务器session中的验证码使用后需要移除
	kaptcha使用步骤:
		1、导入jar包
		2、在web.xml中配置 Servlet
			com.google.code.kaptcha.servlet.KaptchaServlet
		3、访问KaptchaServlet就可以得到一张验证码图片
		[创建一个随机字符串
			将字符串存到session域中
			将字符串转换成图片
			将图片作为相应结果返回]
 -->
 	<img src="/Test_Kaptcha/code.jpg"/>
</body>
</html>