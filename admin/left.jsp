<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
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
  <ul>
   	<li><a href="${pageContext.request.contextPath}/admin/member/save.jsp" target="right">添加用户</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/member/query.jsp" target="right">查看用户</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/account/save.jsp" target="right">添加管理员</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/account/query.jsp" target="right">查看管理员</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/newcar/save.jsp" target="right">添加新车</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/newcar/query.jsp" target="right">查询新车</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/usedcar/save.jsp" target="right">添加二手车</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/usedcar/query.jsp" target="right">查询二手车</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/category/save.jsp" target="right">添加汽车类别</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/category/query.jsp" target="right">查询汽车类别</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/eec/save.jsp" target="right">新增汽车排放标准类别</a></li>
    <li><a href="${pageContext.request.contextPath}/admin/eec/query.jsp" target="right">查询汽车排放标准类别</a></li>
    </ul>
  </body>
</html>
