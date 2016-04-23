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
    
    <title>My JSP 'save' starting page</title>
    
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
  <h4 align="center">添加新车功能</h4>
  <form action="${pageContext.request.contextPath}/newcarAction_save.action" method="post" enctype="multipart/form-data">
  	<table width="450" height="487" border="1" align="center">
  <tr>
    <td>汽车首字母：</td>
    <td><input type="text" name="nfirstLetter"/></td>
  </tr>
  <tr>
  	<td>汽车图片上传</td>
  	<td><input type="file" name="carfile.image" /></td>
  </tr>
  <tr>
    <td>品牌名称：</td>
    <td><input type="text" name="nmakeName"/></td>
  </tr>
  <tr>
    <td>车辆系列：</td>
    <td><input type="text" name="nmodelSeries"/></td>
  </tr>
    <tr>
    <td>车辆名称：</td>
    <td><input type="text" name="nmodelName"/></td>
  </tr>
  <tr>
    <td>车辆上市时间：</td>
    <td><input type="text" name="ntypeSeries"/></td>
  </tr>
  <tr>
    <td>车辆简述：</td>
    <td><input type="text" name="ntypeName"/></td>
  </tr>
    <tr>
    <td>出产国：</td>
    <td><input type="text" name="ncountry"/></td>
  </tr>
    <tr>
    <td>车辆类型：</td>
    <td><input type="text" name="nvehicleClass"/></td>
  </tr>
    <tr>
    <td>发动机排量：</td>
    <td><input type="text" name="nengineCapacity"/></td>
  </tr>
    <tr>
    <td>离合类型：</td>
    <td><input type="text" name="ntransmission"/></td>
  </tr>
    <tr>
    <td>是否上架</td>
    <td><input type="text" name="nvalid"/></td>
  </tr> 
  <tr>
    <td>是否推荐：</td>
    <td><input type="text" name="nrecommend"/></td>
  </tr>
    <tr>
    <td>车辆类别：</td>
    <%-- <td><input type="text" name="cid" value="${category.cid}"/></td> --%>
    <td>
    <select id="cid" name="category.cid">
							<option value="0">
								请选择
							</option>
							<c:forEach items="${applicationScope.categories}" var="category">
								<option value="${category.cid }">${category.ctype}</option>
							</c:forEach>
						</select>
	</td>
  </tr>
  <tr>
  	<td colspan="2" align="center">
  <input type="submit" value="提交">
  <input type="reset" value="重置">
  </td>
  </tr>
</table>
  </form>
  </body>
</html>
