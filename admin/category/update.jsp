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
       <h3>更新类别功能</h3><br/>
   <form action="${pageContext.request.contextPath}/categoryAction_update.action" method="post">
   		汽车类别:<input type="text" name="ctype" value="${requestScope.category.ctype}"/><br/>
   		是否热销:<input type="text" name="chot" value="${requestScope.category.chot}"/><br/>
   		添加人:<input type="text" name="aid" value="${requestScope.category.aid}"/><br/>
   		类别状态<input type="text" name="cstatus" value="${requestScope.category.cstatus}"/><br/>
   		<input type="hidden" name="cid" value="${requestScope.category.cid}">
   		<input type="submit" value="更新" />
   </form>
  </body>
</html>
