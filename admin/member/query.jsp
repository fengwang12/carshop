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
    <h3 align="center">用户信息查询</h3>
    <form action="${pageContext.request.contextPath}/memberAction_query.action" method="post" align="center">
   		登录名查询:<input type="text" name="uname" />
   		<input type="submit" value="查询" />
   </form>
   <table border="5" align="center">
   		<tr>
   			<th>编号</th>
   			<th>登录名</th>
   			<th>昵称</th>
   			<th>性别</th>
   			<th>电话号码</th>
   			<th>电子邮箱</th>
   			<th>家庭住址</th>
   			<th>用户状态</th>
   			<th colspan="2">&nbsp;操作&nbsp;</th>
   		</tr>
      <c:if test="${requestScope.members!=null}">
   			<c:forEach items="${requestScope.members}" var="member" varStatus="num">
   				<tr>
   					<td>${num.count }</td>
   					<td>${member.uname}</td>
   					<td>${member.unickname}</td>
   					<td>${member.usex}</td>
   					<td>${member.ucellphone}</td>
   					<td>${member.uemail}</td>
   					<td>${member.uaddress}</td>
   					<td>${member.ustatus}</td>
   					<c:url value="/memberAction_get.action" var="update">
   						<c:param name="uid" value="${member.uid}"></c:param>
   					</c:url>
   					<td><a href="${update}">更新</a></td>
						<c:url value="/memberAction_delete.action" var="delete">
   						<c:param name="uid" value="${member.uid}"></c:param>
   						</c:url>
   					<td><a href="${delete}">删除</a>
   					</td>
   				</tr>
   			</c:forEach>
	  </c:if>
	</table>
  </body>
</html>
