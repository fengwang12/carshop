<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
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
	 <table width="400" border="1" align="center">
		<!-- 循环获得该类别xinxi -->
		<c:forEach items="${requestScope.newcarList}" var="newcar">
		 <tr>
		 	<td>
			<table width="814" height="165" border="1">
				<tr>
					<td width="190" rowspan="4"><img alt="图片无法显示" src="http://localhost:8080/carshop/images/newcar/${newcar.npic }" width="190"></td>
					<td width="608">
					${newcar.nid }
					</td>
				</tr>
				<tr>
					<td>${newcar.nmodelName }</td>
				</tr>
				<tr>
					<td>出产国：${newcar.ncountry}</td>
				</tr>
				<tr>
					<td>
					${newcar.ntypeSeries}&nbsp;&nbsp;&nbsp;&nbsp;
					${newcar.ntransmission}&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
			</table>
			<td>
		    </tr> 
		    </c:forEach>
			<!-- 循环获得汽车信息 -->
		<%--  </c:forEach> --%>
	 </table> 
</body>
</html>
