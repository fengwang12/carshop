<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
    
<body>
	<table width="400" border="1" align="center">
		<!-- 循环获得类别 -->
		<c:forEach items="${applicationScope.bigList}" var="list">
			<tr>
				<td colspan="4">${list[0].category.ctype}
				</td>
			</tr>
			<!-- 循环获得汽车信息 -->
			<tr>
				<c:forEach items="${list}" var="newcar">
					<td>
						<table width="300" hight="200"border="1" >
							<caption>${newcar.nmakeName}</caption>
							<tr>
								<th scope="col" colspan="2">
								<c:url var="get" value="newcarAction_detail.action">
									<c:param name="nid" value="${newcar.nid}" />
								</c:url>
								<a href="${get}">
								<img
									src="${pageContext.request.contextPath}/upload/image/newcar/${newcar.npic}" alt="图片无法显示" name="pic"
									width="300" height="140" id="pic" />
								</a>
								</th>
							</tr>
							<tr>
								<td colspan="2">${newcar.nmodelName}</td>
							</tr>
							<tr>
								<td colspan="2">${newcar.ntypeSeries}</td>
							</tr>
							<tr>
								<td>${newcar.nvehicleClass}</td>
								<td>${newcar.ntransmission}</td>
							</tr>
						</table>
					</td>
					<!-- 循环获得汽车信息 -->
				</c:forEach>		
			</tr>
	<!--类别循环结束  -->
		</c:forEach>
	</table>
</body>
  </body>
</html>
