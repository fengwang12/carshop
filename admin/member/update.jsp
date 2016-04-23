<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h3>更用户信息</h3><br/>
   <form action="${pageContext.request.contextPath}/memberAction_update.action" method="post">
   		登  录  名:<input type="text" name="uname" value="${requestScope.member.uname}"/><br/>
   		昵        称:<input type="text" name="unickname" value="${requestScope.member.unickname}"/><br/>
   		性        别:<input type="text" name="usex" value="${requestScope.member.usex }"><br/>
   		登录密码:<input type="text" name="upass" value="${requestScope.member.upass}"/><br/>
   		电话号码:<input type="text" name="ucellphone" value="${requestScope.member.ucellphone}" /><br/>
	          电子邮箱：<input type="text" name="uemail" value="${requestScope.member.uemail}" /><br/>
                    常住地址：<input type="text" name="uaddress" value="${requestScope.member.uaddress}" /><br/>
    			<input type="hidden" name="ustatus" value="1" />
   		<input type="submit" value="更新" />
   		<input type="hidden" name="uid" value="${requestScope.member.uid}">
   </form>
  </body>
</html>
