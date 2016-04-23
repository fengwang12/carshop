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
	<h3>更用户信息</h3>
	<br />
	<form
		action="${pageContext.request.contextPath}/newcarAction_update.action"
		method="post" enctype="multipart/form-data">
		<table width="450" height="487" border="1" align="center">
			<tr>
				<td>汽车首字母：</td>
				<td><input type="text" name="nfirstLetter"
					value="${requestScope.newcar.nfirstLetter}" /></td>
			</tr>
			<tr>
				<td>汽车图片：</td>
				<td>
				<input type="file" name="carfile.image"	value="${requestScope.newcar.npic}"/>
				<%-- <input  type="file" size="30" name="files[]" multiple="file[]" value="${requestScope.newcar.npic} /> --%>
				</td>
			</tr>
			<tr>
				<td>品牌名称：</td>
				<td><input type="text" name="nmakeName"
					value="${requestScope.newcar.nmakeName}" /></td>
			</tr>
			<tr>
				<td>车辆系列：</td>
				<td><input type="text" name="nmodelSeries"
					value="${requestScope.newcar.nmodelSeries}" /></td>
			</tr>
			<tr>
				<td>车辆名称：</td>
				<td><input type="text" name="nmodelName"
					value="${requestScope.newcar.nmodelName}" /></td>
			</tr>
			<tr>
				<td>车辆上市时间：</td>
				<td><input type="text" name="ntypeSeries"
					value="${requestScope.newcar.ntypeSeries}" /></td>
			</tr>
			<tr>
				<td>车辆简述：</td>
				<td><input type="text" name="ntypeName"
					value="${requestScope.newcar.ntypeName}" /></td>
			</tr>
			<tr>
				<td>出产国：</td>
				<td><input type="text" name="ncountry"
					value="${requestScope.newcar.ncountry}" /></td>
			</tr>
			<tr>
				<td>车辆类型：</td>
				<td><input type="text" name="nvehicleClass"
					value="${requestScope.newcar.nvehicleClass}" /></td>
			</tr>
			<tr>
				<td>发动机排量：</td>
				<td><input type="text" name="nengineCapacity"
					value="${requestScope.newcar.nengineCapacity}" /></td>
			</tr>
			<tr>
				<td>离合类型：</td>
				<td><input type="text" name="ntransmission"
					value="${requestScope.newcar.ntransmission}" /></td>
			</tr>
			<tr>
				<td>是否上架</td>
				<td><input type="text" name="nvalid"
					value="${requestScope.newcar.nvalid}" /></td>
			</tr>
			<tr>
				<td>是否推荐：</td>
				<td><input type="text" name="nrecommend"
					value="${requestScope.newcar.nrecommend}" />
				<input type="text" name="nid" value="${requestScope.newcar.nid }" />
				</td>
			</tr>
			<tr>
				<td>车辆类别：</td>
				<td><select id="cid" name="category.cid">
						<option value="0">请选择</option>
						<c:forEach items="${applicationScope.categories}" var="category">
							<option value="${category.cid }">${category.ctype}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td><input type="submit" value="更新" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
