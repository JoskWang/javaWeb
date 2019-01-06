<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//session对象的创建：  JSESSIONID=id值 --服务器根据id值从Map中取对应的session对象
	//	session.getAttribute("number");
	System.out.println(session.isNew());//判断session对象是否为新创建的
	//获取Session对象的闲置时间     最后一次操作开始计时
	System.out.println(session.getMaxInactiveInterval());
	System.out.println(session.getId());//获取Session对象的id，JSESSIONID,每个session对象都有一个唯一的id
	//让session对象立即失效的方法
	//session.invalidate();
	//1、修改Session对象的有效时间
	//>0  单位秒
	//=0  默认情况  一次会话有效
	session.setMaxInactiveInterval(100);
	//2、修改servers/web.xml 配置文件设置Session对象的有效时间  session-config  针对整个工作空间
	//3、修改当前项目的 web.xml 设置Session对象的有效时间 针对当前项目
	//<0  禁用，session对象永久有效
	System.out.println(session.getMaxInactiveInterval());
	//session对象的有效时间和服务器是否重启关闭没关系
%>
<!--获取Session域中的数据  -->
 <%-- number:${sessionScope.number } --%>
</body>
</html>