<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	c:foreach   和java中的for循环一样
		
  -->
  <!-- 作用1：遍历一组数      遍历时包括头尾
  		应用：页码
  	begin:遍历起始索引  必须>=0
  	end:遍历结束索引
  	var: 每次遍历，系统自动会将正在遍历的索引存到page域中，key就是var的值，遍历执行完，系统会自动移除域中的值
  		foreach中var存的属性值作用域就在标签内
  	step:每次遍历时的步数
  -->
  <c:forEach begin="0" end="10" var="index" step="3">
  <!-- el取出域中存的值 -->
  	<a href="#">${index }</a>
  </c:forEach>
  <%
  	List list = new ArrayList();
  	list.add("12345");
  	list.add("22345");
  	list.add("32345");
  	list.add("42345");
  	pageContext.setAttribute("list", list);
  	Map map = new HashMap();
  	map.put("k1", "v1");
  	map.put("k2", "v2");
  	map.put("k3", "v3");
  	map.put("k4", "v4");
  	pageContext.setAttribute("map", map);
  %>
  <!--作用2：遍历List集合
  		类似增强for
  		items：要遍历的集合  集合EL取出集合
  		自动会遍历集合中的元素
  		var:每次遍历 系统就会将当前遍历的对象存到page域中
    -->
   <br/>
   <c:forEach items="${list }" var="item">
   	<span>hehe ${item }</span>
   </c:forEach> 
  <!--作用3：遍历map
  		items:要遍历的集合
  		var: 系统在每次遍历map的元素时会将当前正在遍历的键和值封装给一个对象 就是item，item有两个属性，key，value
  		varStatus: 系统每次遍历开始时都会将遍历的状态封装为一个对象就是vs，每次遍历都会对他的值进行修改
  				代表当前遍历的状态
    -->
    <c:forEach items="${map }" var="item" varStatus="vs">
    	<h4>${item }, ${item.key } , ${item.value }, ${vs },${vs.current },${vs.first },${vs.count },${vs.index }</h4>
    </c:forEach>
</body>
</html>