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
	jsp9大隐含对象
		pageContext，session，application
		request： 
			request.getHeadr()   获取请求头
			request.getAttribute()  获取域中存的属性值
			request.getParameter()  获取表单提交的参数
	EL表达式针对jsp的9对对象重新做了封装
		EL表达式读取不到内容时什么都不显示
		EL只能读取，没有设置功能
		提供了11个内置对象，不包含jsp的9个
		》1、pageContext  [和jsp的一样 ， 可以获取jsp的其他8个隐含对象]
				作用： 获取request对象，拼接url地址
		》2~5、pageScope/requestScope/sessionScope/applicationScope
				Map<String,Object>
			代表：各自域中存的属性和属性值
			作用：获取自己域中存的属性值
		》6、param
				Map<String,String>
			代表：请求参数
			作用：获取请求参数
				获取一个键对应一个值的参数
		》7、paramValues
				Map<String,String[]>
			代表：
			作用：获取请求参数
		》8、header
				Map<String,String>
			代表：请求头
			作用：获取请求头的值
		》9、headerValues
				Map<String,String[]>
			代表：请求头
		》10、cookie
				Map<String,Cookie>
			代表：cookie
			作用：获取cookie
		》11、initParam
			代表：servlet的在配置文件中的初始化参数
			作用:
  -->
  ${pageContext.request.serverName }
  ${pageContext.request.serverPort }
  ${pageContext.request.contextPath }
  <h4>获取request请求参数</h4>
  ${param.username }
  ${param.age }
  <br/>
  ${paramValues.hobby[1] }
  <br/>
  <h4>获取request请求头</h4>
  ${header['User-Agent'] }
</body>
</html>