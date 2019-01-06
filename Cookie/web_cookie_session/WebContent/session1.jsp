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
		//session对象使用时： 1、JSESSIONID是否失效[默认有效时间一次会话]2、服务器中的session对象是否失效[默认半小时，最后一次使用session对象开始计时]
		//获取Cookie  ：JSESSIONID
		Cookie[] cookies = request.getCookies();
		if(cookies!=null){
			for(Cookie cookie:cookies){
				//查找 键为JSESSIONID的cookie
				//DD032D0D5A0580951A90CD9F62A5EC5F
				if("JSESSIONID".equals(cookie.getName())){
					//设置有效时间
					cookie.setMaxAge(60*60);
					//设置到响应头中
					response.addCookie(cookie);
				}
			}
		}
	
	%>
	uname:${sessionScope.uname }
</body>
</html>