<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'head.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript"></script>
<link href="js/SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />

</head>

<body>
	<!-- 加入首页标题栏 -->
	<div style="margin-left: 450">
		<ul id="MenuBar1" class="MenuBarHorizontal">
			<li><a class="MenuBarItemSubmenu" href="index.jsp">HOME</a></li>
			<li><a href="index.jsp">NEW CAR</a></li>
			<li><a class="MenuBarItemSubmenu" href="usedcar.jsp">USED
					CAR</a></li>
			<li><a href="#">OTHER</a></li>
		</ul>
	</div>
	
	
	<!-- 首页标题栏用到的css/js代码 -->	
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"images/icons/SpryAssets/SpryMenuBarDownHover.gif", imgRight:"images/icons/SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
