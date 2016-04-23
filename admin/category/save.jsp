<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'save.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <form action="${pageContext.request.contextPath}/categoryAction_save.action" method="post" >
  	<table width="450" height="487" border="1" align="center">
     <tr>
    <td>汽车类别：</td>
    <td><input type="text" name="ctype"/></td>
  </tr>
    <tr>
    <td>是否热销：</td>
    <td><input type="text" name="chot"/></td>
  </tr>
    <tr>
    <td>添加人</td>
    <td><input type="text" name="aid"/></td>
  </tr> 
  <tr>
  <td colspan="2" align="center">
  <input type="submit" value="提交"/>
  <input type="reset" value="重置"/>
  </td>
  </tr>
</table>
  </form>
  <body>
    
  </body>
</html>
