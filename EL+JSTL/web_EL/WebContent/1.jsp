<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.atguigu.bean.GirlFriend"%>
<%@page import="com.atguigu.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	EL:  重点
		jsp脚本片段和jsp表达式使用时会影响页面结构
		jsp2.0技术之后
		EL表达式代替jsp表达式，用来向页面输出内容
		El只能操作域中的值，操作的值必须要先存到域中
		EL表达式不推荐直接调用方法
		JSTL标签替代jsp脚本片段
			以后不推荐使用jsp表达式和脚本片段了
			只能在jsp中使用，在jsp页面中所有位置都可以用
			1、el默认作用：根据表达式从域中取值输出到页面
				取值方式，从最小域开始取值，如果取到返回停止查找[全域查询]
				基本类型的值：直接根据key取
					指定域查询：
						pageScope、requestScope、sessionScope、applicationScope
				引用类型的值：直接根据key取
						获取引用类型值的基本类型的属性:对象.属性名[就是get方法后面的属性名]
						获取引用类型的引用类型属性：
							只要有属性(提供了get方法)，一直可以通过.获取属性值
				Map: 
					map中通过键查询对应的值：	${map.key}	
						如果key中有特殊字符 ${map['key']}	
				List:
					${list[index]}
			2、EL表达式支持简单的数学运算
				+ - * / %   ==   !=
				默认都是数学计算
				
  --%>
  	<%-- ${el表达式 } --%>
  	<%
  		//在域中存值
  		request.setAttribute("username", "laowang");
  		application.setAttribute("username", "applaowang");
  		pageContext.setAttribute("username", "pagecontextlaowang");
  		session.setAttribute("username", "sessionlaowang");
  		//在域中存一个对象
  		User user = new User("tianjie",20);
  		user.setGf(new GirlFriend(500,"塑料"));
  		
  		request.setAttribute("user", user);
  		
  		
  		Map map = new HashMap();
  		map.put("t1", "val1");
  		map.put("t2", "val2");
  		map.put("t2-1", "val2-1");
  		map.put("t2-2", "val2-2");
  		map.put("t3", "val3");
  		// User-Agent
  		pageContext.setAttribute("map", map);
  		
  		List list = new ArrayList();
  		list.add("hehe");
  		list.add("hehe1");
  		list.add("hehe2");
  		list.add(10);
  		
  		request.setAttribute("list", list);
  	%>
  	${pageScope.username }<br/>
  	${requestScope.username }<br/>
  	${sessionScope.username }<br/>
  	${applicationScope.username }<br/>
  	<h3>取出域中引用类型数据，读取属性值</h3>
  	<!-- tomcat7.0后新特性可以在el中调用方法
  		之前 不可以调用方法
  		对象名.属性名 相当于根据属性名查找对应的get方法得到返回属性值
  	 -->
  	${user.name }<br/>
  	${user.gf.price }<br/>
  	<h3>使用EL在域中查询map中的值</h3>	
  	${pageScope.map }<br/>
  	${map.t1 }<br/>
  	${map.t2 }<br/>
  	${map['t2-1'] }<br/>
  	<h3>使用EL在域中查询List中的值</h3>	
  	${list[2]}
  	<h3>使用EL在域中取出值进行计算</h3>
  	${list[3]*2 }	<br/>
  	${map.t1 == "haha" }	
</body>
</html>