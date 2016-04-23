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

<title>My JSP 'usedcarlist.jsp' starting page</title>

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
<%-- <c:url var="get" value="usedcarAction_detail.action">
	<c:param name="uid" value="4" />
</c:url>
<a href="${get}"> 二手车</a> --%>

<table width="400" border="1" align="center">
			<!-- 循环获得该汽车的信息 -->
		<c:forEach items="${requestScope.usedcarList}" var="usedcar">
		 <tr>
		 	<td>
			<table width="814" height="165" border="1">
				<tr>
					<td width="190" rowspan="4"><img alt="图片无法显示" src="http://localhost:8080/carshop/images/usedcar/${usedcar.upic }" width="190"></td>
					<td width="608">
					${usedcar.uid }
					</td>
				</tr>
				<tr>
					<td>${usedcar.umodelName }</td>
				</tr>
				<tr>
					<td>出产国：${usedcar.utypeSeries}</td>
				</tr>
				<tr>
					<td>
					${usedcar.utypeSeries}&nbsp;&nbsp;&nbsp;&nbsp;
					${usedcar.utransmission}&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
			</table>
		    </tr> 
		    </c:forEach>
			<!-- 循环获得汽车信息 -->
	 </table> 
</body>
</html>
