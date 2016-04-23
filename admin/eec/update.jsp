<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
    <h3>更新汽车排放标准分类信息</h3><br/>
   <form action="${pageContext.request.contextPath}/eecAction_update.action" method="post">
   		汽车排放类别:<input type="text" name="etype" value="${requestScope.eec.etype}"/><br/>
   		汽车排放类别说明：<input type="text" name="eexplian" value="${requestScope.eec.eexplian}"/><br/>
	          <input type="hidden" name="eid" value="${requestScope.eec.eid}" />
   		<input type="submit" value="更新" />
   </form>
  </body>
</html>
