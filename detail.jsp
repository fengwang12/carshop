<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  <!-- request.setCharacterEncoding("UTF-8"); -->
  <body>
  <dir id="cartitle">
  		${request.newcar.nfirstLetter}  >>
  		${request.newcar.nmakeName}  >>
  		${request.newcar.nmodelSeries} >>
  		${request.newcar.nmodelName }	
  </dir>
  <div id=preview>
  	<div class=jqzoom id=spec-n1 onClick="window.open('http://localhost:8080/carshop/detail.jsp')">
	<IMG height=350	src="images/newcar/th4.jpg" jqimg="images/newcar/th4.jpg" width=350>
	</div>
	<div id=spec-n5>
		<div class=control id=spec-left>
			<img src="/carshop/images/index/left.gif" />
		</div>
		<div id=spec-list>
			<ul class=list-h>
			
		 		<li><img src="${pageContext.request.contextPath}/images/newcar/th1.jpg"> </li>
				<li><img src="${pageContext.request.contextPath}/images/newcar/th2.jpg"> </li>
				<li><img src="${pageContext.request.contextPath}/images/newcar/th3.jpg"> </li>
				<li><img src="${pageContext.request.contextPath}/images/newcar/th4.jpg"> </li>
				<li><img src="${pageContext.request.contextPath}/images/newcar/th1.jpg"> </li>
				<li><img src="${pageContext.request.contextPath}/images/newcar/th2.jpg"> </li>
				<li><img src="${pageContext.request.contextPath}/images/newcar/th3.jpg"> </li>
				<li><img src="${pageContext.request.contextPath}/images/newcar/th4.jpg"> </li>
				<li><img src="${pageContext.request.contextPath}/images/newcar/th1.jpg"> </li>
				<li><img src="${pageContext.request.contextPath}/images/newcar/th2.jpg"> </li>
				<li><img src="${pageContext.request.contextPath}/images/newcar/th3.jpg"> </li>
				<li><img src="${pageContext.request.contextPath}/images/newcar/th4.jpg"> </li> 
			  
			<%--    <c:forEach items="" var="${newcar}"> 
					<li><img src="${pageContext.request.contextPath}/images/newcar/${newcar.npic}"> </li>
			   </c:forEach>   --%>
			</ul>
		</div>
		<div class=control id=spec-right>
			<img src="${pageContext.request.contextPath}/images/index/right.gif" />
		</div>
    </div>
  </div>
  <div id="tableinfo">
<table width="500" height="250" border="1">
  <caption>
  ${request.newcar.nmodelName} ${request.newcar.ntypeSeries }
  </caption>
  <tr>
    <td>出产国：${request.newcar.ncountry}</td>
    <td>车款：${request.newcar.nvehicleClass}</td>
  </tr>
  <tr>
    <td>离合类型：${request.newcar.ntransmission}</td>
    <td>发动机排量:${request.newcar.nengineCapacity}</td>
  </tr>
  <tr>
    <td colspan="2">${request.newcar.ntypeName}</td>
  </tr>
  <tr>
    <td colspan="2" align="center">
    <form action="sorderAction_addSorder.action" method="post">
    <input type="hidden" name="newcar.nid" value="${request.newcar.nid}">
    <input type="hidden" name="sname" value="${request.newcar.nmodelName }">
    <input type="hidden" name="sprice" value="200">
    <input type="hidden" name="snumber" value="1">
    <input type="submit" value="下订单"/></a>
    </form>
    </td>
  </tr>
</table>
  </div>
  
	<SCRIPT type=text/javascript>
	$(function(){			
	   $(".jqzoom").jqueryzoom({
			xzoom:400,
			yzoom:400,
			offset:10,
			position:"right",
			preload:1,
			lens:1
		});
		$("#spec-list").jdMarquee({
			deriction:"left",
			width:350,
			height:56,
			step:2,
			speed:4,
			delay:10,
			control:true,
			_front:"#spec-right",
			_back:"#spec-left"
		});
		$("#spec-list img").bind("mouseover",function(){
			var src=$(this).attr("src");
			$("#spec-n1 img").eq(0).attr({
				src:src.replace("\/n5\/","\/n1\/"),
				jqimg:src.replace("\/n5\/","\/n0\/")
			});
			$(this).css({
				"border":"2px solid #ff6600",
				"padding":"1px"
			});
		}).bind("mouseout",function(){
			$(this).css({
				"border":"1px solid #ccc",
				"padding":"2px"
			});
		});				
	})
	</SCRIPT>
	
	<SCRIPT src="js/163css.lib.js" type=text/javascript></SCRIPT>

	<SCRIPT src="js/163css.js" type=text/javascript></SCRIPT>

  </body>
</html>
