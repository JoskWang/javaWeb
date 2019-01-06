<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	EL表达式提供了一个运算符：
		empty：认为空字符串和长度为0的集合都是空
				运算结果就是true
  -->
  <%
  	request.setAttribute("name", "");
  	request.setAttribute("name1",null);
  	
  	request.setAttribute("list", new ArrayList());
  	List list = null;
  	request.setAttribute("list1", list);
  
  %>
  <h3>使用==判断是否为空</h3>
  <!-- 取出name的值，判断是否为空，再将运算结果输出 -->
  ${requestScope.name==null }<br/> <!-- false  -->
  ${requestScope.name1==null }<br/> <!-- true  -->
  ${requestScope.list==null }<br/> <!-- false  -->
  ${requestScope.list1==null }<br/> <!-- true  -->
    <h3>使用empty判断是否为空</h3>
  ${empty requestScope.name  }<br/> <!-- true  -->
  ${empty requestScope.name1 }<br/> <!-- true  -->
  ${empty requestScope.list }<br/> <!-- ture  -->
  ${empty requestScope.list1 }<br/> <!-- true  -->
    
</body>
</html>