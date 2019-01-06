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
	掌握：
		1、session对象的创建机制
		2、session对象的作用
	在session中存普通数据可以共享[String...]
		Cookie保存在浏览器中[默认在内存中，浏览器关闭没有，如果设置时间保存在文件中，浏览器重启仍然存在]
		Session对象保存在服务器中[保存在服务器内存中，服务器重启仍有，证明服务器重启或关闭会将session对象保存到本地硬盘中]
			session对象的销毁时间：半小时 清除，没有了
			session对象的自动钝化时间：默认5分钟 如果session对象超过一定时间没有使用会被自动钝化到SESSIONS.ser中，用户再次操作时会自动活化
				
			钝化：	服务器在关闭时会将session对象序列化保存到本地：SESSIONS.ser[session对象中存的内容也需要实现序列化接口]
			活化：	服务器再开始时会将SESSIONS.ser反序列化加载到服务器内存中，session又可以使用了
 -->
 	uname:${sessionScope.uname }<br/>
 	user:${user }<br/>
</body>
</html>