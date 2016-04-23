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
  <h4 align="center">管理员新增功能</h4>
  <form action="${pageContext.request.contextPath}/eecAction_save.action" method="post" >
  	<table width="450" height="487" border="1" align="center">
  <tr>
    <td>汽车排放类别：</td>
    <td><input type="text" name="etype"/></td>
  </tr>
  <tr>
    <td>汽车排放说明</td>
    <td><input type="text" name="eexplian"/></td>
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
