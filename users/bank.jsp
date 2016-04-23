<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>汽车详细界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/163css.css" type="text/css" rel="stylesheet">	
	<SCRIPT src="js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
	<SCRIPT src="js/163css.base.js" type=text/javascript></SCRIPT>
  </head>
  
  <body>
    支付订单编号：${sessionScope.forder.fid }
    支付金额为： ${sessionScope.forder.ftotal }
		bank支付页面
		<form action="${pageContext.request.contextPath}/payAction_submit.action" method="post">
		<table>
		<tr>
			<c:forEach items="${applicationScope.bankImages }" var="image" varStatus="num">
				<td>
				<input type="radio" name="pd_FrpId" value="${fn:substring(image,0,fn:indexOf(image,'.')) }">
				<img alt="图片无法显示" src="${pageContext.request.contextPath }/images/banklogo/${image}">
				</td>
				<c:if test="${num.count%5 == 0 }">
				</tr><tr>
				</c:if>
			</c:forEach>
			</tr>
		</table> 
		<input type="hidden" name="p3_Amt" value="${sessionScope.forder.ftotal}">
		<input type="hidden" name="p2_Order" value="${sessionScope.forder.fid }">
		<input type="submit" value="提交">
		</form>
  </body>
</html>
