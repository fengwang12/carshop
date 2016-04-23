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
    <form action="${pageContext.request.contextPath}/usedcarAction_query.action" method="post" align="center">
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
   			<th>上牌时间</th>
   			<th>上牌地点</th>
   			<th>车身颜色</th>
   			<th>汽车用途</th>
   			<th>行驶里程</th>
   			<th>发动机排量</th>
   			<th>离合类型</th>
   			<th>转手次数</th>
   			<th>环保标准</th>
   			<th>联系人号码</th>
   			<th>联系人姓名</th>
   			<th>看车地点</th>
   			<th>汽车报价</th>
   			<th>新车价</th>
   			<th>发布时间</th>
   			<th>卖家自述</th>
   			<th>车辆类别</th>
   			<th>是否有效</th>
   			<th>是否推荐</th>
   			<th colspan="2">&nbsp;操作&nbsp;</th>
   		</tr>
      <c:if test="${requestScope.usedcars!=null}">
   			<c:forEach items="${requestScope.usedcars}" var="usedcar" varStatus="num">
   				<tr>
   					<td>${num.count }</td>
   					<td>${usedcar.ufirstLetter}</td>
   					<td>${usedcar.umakeName}</td>
   					<td>${usedcar.umodelSeries}</td>
   					<td>${usedcar.umodelName}</td>
   					<td>${usedcar.utypeSeries}</td>
   					<td>${usedcar.utypeName}</td>
   					<td>${usedcar.ufirstRegister}</td>
   					<td>${usedcar.ulicenseLocation}</td>
   					<td>${usedcar.ucolor}</td>
   					<td>${usedcar.ucarUsing}</td>
   					<td>${usedcar.udrivenDistans}</td>
   					<td>${usedcar.uengineCapacity}</td>
   					<td>${usedcar.utransmission}</td>
   					<td>${usedcar.utransferTimes}</td>
   					<td>${usedcar.eec.etype}</td>
   					<td>${usedcar.ucellphone}</td>
   					<td>${usedcar.ucontains}</td>
   					<td>${usedcar.ulocation}</td>
   					<td>${usedcar.uusedPrice}</td>
   					<td>${usedcar.ulatestPrice}</td>
   					<td>${usedcar.upostTime}</td>
   					<td>${usedcar.usellerMessage }</td>
   					<td>${usedcar.category.ctype}</td>
   					<td>${usedcar.uvalid}</td>
   					<td>${usedcar.urecommend}</td>
   					
   					<c:url value="/usedcarAction_get.action" var="update">
   						<c:param name="uid" value="${usedcar.uid}"></c:param>
   					</c:url>
   					<td><a href="${update}">更新</a></td>
						<c:url value="/usedcarAction_delete.action" var="delete">
   						<c:param name="uid" value="${usedcar.uid}"></c:param>
   						</c:url>
   					<td><a href="${delete}">删除</a>
   					</td>
   				</tr>
   			</c:forEach>
	  </c:if>
	</table>
  </body>
</html>
