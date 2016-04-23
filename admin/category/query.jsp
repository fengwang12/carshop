<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'query.jsp' starting page</title>
    
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
	<h3 align="center">汽车类别查询</h3>
    <form action="${pageContext.request.contextPath}/categoryAction_query.action" method="post" align="center">
   		登录名查询:<input type="text" name="uname" />
   		<input type="submit" value="查询" />
   </form>
   <table border="5" align="center">
   		<tr>
   			<th>编号</th>
   			<th>类别</th>
   			<th>是否热销</th>
   			<th>添加人</th>
   			<th>类别状态(0为删除)</th>
   			<th colspan="2">&nbsp;操作&nbsp;</th>
   		</tr>
      <c:if test="${requestScope.categories!=null}">
   			<c:forEach items="${requestScope.categories}" var="category" varStatus="num">
   				<tr>
   					<td>${num.count }</td>
   					<td>${category.ctype}</td>
   					<td>${category.chot}</td>
   					<td>${category.aid}</td>
   					<td>${category.cstatus}</td>
   					<c:url value="/categoryAction_get.action" var="update">
   						<c:param name="cid" value="${category.cid}"></c:param>
   					</c:url>
   					<td><a href="${update}">更新</a></td>
						<c:url value="/categoryAction_delete.action" var="delete">
   						<c:param name="cid" value="${category.cid}"></c:param>
   						</c:url>
   					<td><a href="${delete}">删除</a>
   					</td>
   				</tr>
   			</c:forEach>
	  </c:if>
	</table>
  </body>
</html>
