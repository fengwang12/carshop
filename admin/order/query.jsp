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
    <h3 align="center">订单查询</h3>
    <form action="${pageContext.request.contextPath}/sorderAction_query.action" method="post" align="center">
   		订单查询:<input type="text" name="uname" />
   		<input type="submit" value="查询" />
   </form>
   <table border="5" align="center">
   		<tr>
   			<th>编号</th>
   			<th>汽车名</th>
   			<th>订单价格</th>
   			<th>订车数量</th>
   			<th>fid</th>
   			<th colspan="2">&nbsp;操作&nbsp;</th>
   		</tr>
      <c:if test="${requestScope.eecs!=null}">
   			<c:forEach items="${requestScope.eecs}" var="eec" varStatus="num">
   				<tr>
   					<td>${num.count }</td>
   					<td>${eec.etype}</td>
   					<td>${eec.eexplian}</td>
   					<c:url value="/eecAction_get.action" var="update">
   						<c:param name="eid" value="${eec.eid}"></c:param>
   					</c:url>
   					<td><a href="${update}">更新</a></td>
						<c:url value="/eecAction_delete.action" var="delete">
   						<c:param name="eid" value="${eec.eid}"></c:param>
   						</c:url>
   					<td><a href="${delete}">删除</a>
   					</td>
   				</tr>
   			</c:forEach>
	  </c:if>
	</table>
  </body>
</html>
