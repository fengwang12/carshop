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
	<form	action="${pageContext.request.contextPath}/usedcarAction_update.action"
		method="post" enctype="multipart/form-data">
		<table width="450" height="487" border="1" align="center">
			<tr>
				<td>汽车首字母：</td>
				<td><input type="text" name="ufirstLetter"
					value="${requestScope.usedcar.ufirstLetter}" /></td>
			</tr>
			<tr>
				<td>汽车图片：</td>
				<td>
				<input type="file" name="carfile.image"	value="${requestScope.usedcar.upic}"/>
				<%-- <input  type="file" size="30" name="files[]" multiple="file[]" value="${requestScope.usedcar.npic} /> --%>
				</td>
			</tr>
			<tr>
				<td>品牌名称：</td>
				<td><input type="text" name="umakeName"
					value="${requestScope.usedcar.umakeName}" /></td>
			</tr>
			<tr>
				<td>车辆系列：</td>
				<td><input type="text" name="umodelSeries"
					value="${requestScope.usedcar.umodelSeries}" /></td>
			</tr>
			<tr>
				<td>车辆名称：</td>
				<td><input type="text" name="umodelName"
					value="${requestScope.usedcar.umodelName}" /></td>
			</tr>
			<tr>
				<td>车辆上市时间：</td>
				<td><input type="text" name="utypeSeries"
					value="${requestScope.usedcar.utypeSeries}" /></td>
			</tr>
						<tr>
				<td>车辆简述：</td>
				<td><input type="text" name="utypeName"
					value="${requestScope.usedcar.utypeName}" /></td>
			</tr>
						<tr>
				<td>上牌时间：</td>
				<td><input type="text" name="ufirstRegister"
					value="${requestScope.usedcar.ufirstRegister}" /></td>
			</tr>
						<tr>
				<td>车牌注册地:</td>
				<td><input type="text" name="ulicenseLocation"
					value="${requestScope.usedcar.ulicenseLocation}" /></td>
			</tr>
			<tr>
				<td>车身颜色:</td>
				<td><input type="text" name="ucolor"
					value="${requestScope.usedcar.ucolor}" /></td>
			</tr>
			<tr>
				<td>汽车用途：</td>
				<td><input type="text" name="ucarUsing"
					value="${requestScope.usedcar.ucarUsing}" /></td>
			</tr>
						<tr>
				<td>行驶里程：</td>
				<td><input type="text" name="udrivenDistans"
					value="${requestScope.usedcar.udrivenDistans}" /></td>
			</tr>
						<tr>
				<td>发动机排量：</td>
				<td><input type="text" name="uengineCapacity"
					value="${requestScope.usedcar.uengineCapacity}" /></td>
			</tr>
						<tr>
				<td>离合类型：</td>
				<td><input type="text" name="utransmission"
					value="${requestScope.usedcar.utransmission}" /></td>
			</tr>
						<tr>
				<td>转手次数：</td>
				<td><input type="text" name="utransferTimes"
					value="${requestScope.usedcar.utransferTimes}" /></td>
			</tr>
			
			
						<tr>
				<td>环保标准：</td>
							<td><select id="eid" name="eec.eid">
						<option value="0">请选择</option>
						<c:forEach items="${applicationScope.eecs}" var="eec">
							<option value="${eec.eid }">${eec.etype}</option>
						</c:forEach>
				</select></td>
				</tr>
				
						<tr>
				<td>联系人号码：</td>
				<td><input type="text" name="ucellphone"
					value="${requestScope.usedcar.ucellphone}" /></td>
			</tr>
						<tr>
				<td>联系人姓名：</td>
				<td><input type="text" name="ucontains"
					value="${requestScope.usedcar.ucontains}" /></td>
			</tr>
						<tr>
				<td>看车地点：</td>
				<td><input type="text" name="ulocation"
					value="${requestScope.usedcar.ulocation}" /></td>
			</tr>
						<tr>
				<td>汽车报价：</td>
				<td><input type="text" name="uusedPrice"
					value="${requestScope.usedcar.uusedPrice}" /></td>
			</tr>
						<tr>
				<td>新车价：</td>
				<td><input type="text" name="ulatestPrice"
					value="${requestScope.usedcar.ulatestPrice}" /></td>
			</tr>
						<tr>
				<td>发布时间：</td>
				<td><input type="text" name="upostTime"
					value="${requestScope.usedcar.upostTime}" /></td>
			</tr>
						<tr>
				<td>卖家自述：</td>
				<td><input type="text" name="usellerMessage"
					value="${requestScope.usedcar.usellerMessage}" /></td>
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
				<td>是否有效：</td>
				<td><input type="text" name="uvalid"
					value="${requestScope.usedcar.uvalid}" /></td>
			</tr>
						<tr>
				<td>是否推荐：</td>
				<td><input type="text" name="urecommend"
					value="${requestScope.usedcar.urecommend}" />
					二手车的id：<input type="text" name="uid" value="${requestScope.usedcar.uid }" />
					</td>
					
			</tr>
			<tr>
				<td><input type="submit" value="更新" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
