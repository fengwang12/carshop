<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'save' starting page</title>
    
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
  <h4 align="center">用户新增功能</h4>
  <form action="${pageContext.request.contextPath}/memberAction_save.action" method="post" >
  	<table width="450" height="487" border="1" align="center">
  <tr>
    <td>用户名：</td>
    <td><input type="text" name="uname"/></td>
  </tr>
  <tr>
    <td>用户密码：</td>
    <td><input type="text" name="upass"/></td>
  </tr>
  <tr>
    <td>个性昵称：</td>
    <td><input type="text" name="unickname"/></td>
  </tr>
    <tr>
    <td>性别：</td>
    <td><input type="text" name="usex"/></td>
  </tr>
  <tr>
    <td>电话号码：</td>
    <td><input type="text" name="ucellphone"/></td>
  </tr>
  <tr>
    <td>电子邮箱：</td>
    <td><input type="text" name="uemail"/></td>
  </tr>
  <tr>
    <td>常住地址：</td>
    <td rowpan ="2"><input type="text" name="uaddress"/>
    <input type="hidden" name="ustatus" value="1" /></td>
  </tr>
  <tr>
  <td colspan="2" align="center">
  <input type="submit" value="提交"/>
  <input type="reset" value="重置"/>
  </td>
  </tr>
</table>
  </form>
  </body>
</html>
