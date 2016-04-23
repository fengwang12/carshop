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
    <form action="${pageContext.request.contextPath}/newcarAction_query.action" method="post" align="center">
   		登录名查询:<input type="text" name="uname" />
   		<input type="submit" value="查询" />
   </form>
   <table border="5" align="center">
   		<tr>
   			<td>编号</td>
   			<th>首字母:</th>
   			<th>品牌名称</th>
   			<th>车辆系列</th>
   			<th>车辆名称</th>
   			<th>车辆上市时间</th>
   			<th>车辆简述</th>
   			<th>出产国</th>
   			<th>车辆类型</th>
   			<th>发动机排量</th>
   			<th>离合类型</th>
   			<th>是否上架</th>
   			<th>是否推荐</th>
   			<th>车辆类别</th>
   			<th colspan="2">&nbsp;操作&nbsp;</th>
   		</tr>
      <c:if test="${requestScope.newcars!=null}">
   			<c:forEach items="${requestScope.newcars}" var="newcar" varStatus="num">
   				<tr>
   					<td>${num.count }</td>
   					<td>${newcar.nfirstLetter}</td>
   					<td>${newcar.nmakeName}</td>
   					<td>${newcar.nmodelSeries}</td>
   					<td>${newcar.nmodelName}</td>
   					<td>${newcar.ntypeSeries}</td>
   					<td>${newcar.ntypeName}</td>
   					<td>${newcar.ncountry}</td>
   					<td>${newcar.nvehicleClass}</td>
   					<td>${newcar.nengineCapacity}</td>
   					<td>${newcar.ntransmission}</td>
   					<td>${newcar.nvalid}</td>
   					<td>${newcar.nrecommend}</td>
   					<td>${newcar.category.ctype}</td>
   					<c:url value="/newcarAction_get.action" var="update">
   						<c:param name="nid" value="${newcar.nid}"></c:param>
   					</c:url>
   					<td><a href="${update}">更新</a></td>
						<c:url value="/newcarAction_delete.action" var="delete">
   						<c:param name="nid" value="${newcar.nid}"></c:param>
   						</c:url>
   					<td><a href="${delete}">删除</a>
   					</td>
   				</tr>
   			</c:forEach>
	  </c:if>
	</table>
  </body>
</html>
