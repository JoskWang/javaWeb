<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--
    	taglib指令：用来引入标签库
    		uri：指定要引入标签库的位置
    		prefix：要使用的标签库的前缀标签名[jsp:]
      -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	JSP技术
		jsp：
		EL
		JSTL
			使用步骤：
				1、导包
				2、使用：
					在要使用标签库的jsp页面中通过taglib指令引入文件
					核心标签库: c
					直接可以在页面中使用标签
  -->
  
  <!--1、 c:out  也是向页面输出内容 
  		 通常结合EL表达式使用
  		 value：属性值中使用el在域中取值
  		 default:如果value值为空，显示default中的值
  		 如果输出内容中有标签，自动会对标签进行转义
  		 escapeXml：是否自动转义标签，默认true转义
  -->
  <%
  	request.setAttribute("uname", "laosong");
  	request.setAttribute("code", "<script>alert('baotazhenheyao')</script>");
  %>
  <c:out value="${uname1 }" default="游客"></c:out><br/>
  ${uname1 }<br/>
   <c:out value="${code }" escapeXml="true"></c:out><br/>
 <%--  ${code }<br/> --%>
 
 <!--2、 c:set   向域中设置值,默认存到page域中
 			var:向域中存值的key
 			value：值
 			scope：指定域      page、request、session、application
   -->
   <hr/>
   <!-- 向域中存值 -->
   <c:set var="address" value="hongfukejiyuan1" scope="request"></c:set>
   <c:set var="address" value="hongfukejiyuan2" scope="page"></c:set>
   <c:set var="address" value="hongfukejiyuan3" scope="session"></c:set>
   <c:set var="address" value="hongfukejiyuan4" scope="application"></c:set>
   <!-- 取值 -->
  pageScope: ${pageScope.address }<br/>
  requestScope: ${requestScope.address }<br/>
  sessionScope: ${sessionScope.address }<br/>
  applicationScope: ${applicationScope.address }<br/>
 <!--3、 c:remove  移除域中的属性值，全域移除，遍历每个域移除所有的
 		 var: 要移除属性的key
 		scope:指定域移除
  -->
  <hr/>
  <c:remove var="address" scope="request"/>
   pageScope1: ${pageScope.address }<br/>
  requestScope1: ${requestScope.address }<br/>
  sessionScope1: ${sessionScope.address }<br/>
  applicationScope1: ${applicationScope.address }<br/>
</body>
</html>