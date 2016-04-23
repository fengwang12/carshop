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
  
  <body>
  <dir id="cartitle">
  		${request.usedcar.ufirstLetter}  >>
  		${request.usedcar.umakeName}  >>
  		${request.usedcar.umodelSeries} >>
  		${request.usedcar.umodelName }	
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
<body>
<table width="587" height="347" border="1" summary="123">
  <caption>
    ${requestScope.usedcar.utypeName }
   <%--  ${requestScope.usedcar.} --%>
  </caption>
  <tr>
    <th colspan="2" scope="col">售价：${requestScope.usedcar.uusedPrice }</th>
  </tr>
  <tr>
    <td colspan="2">新车价:${requestScope.usedcar.ulatestPrice }</td>
  </tr>
  <tr>
    <td>首次上牌：${requestScope.usedcar.ufirstRegister}</td>
    <td>牌照地点：${requestScope.usedcar.ulicenseLocation}</td>
  </tr>
  <tr>
    <td>行驶里程：${requestScope.usedcar.udrivenDistans}</td>
    <td>变速箱：${requestScope.usedcar.utransmission}</td>
  </tr>
  <tr>
    <td>车身颜色：${requestScope.usedcar.ucolor}</td>
    <td>环境标准：${requestScope.usedcar.eec.etype}</td>
  </tr>
  <tr>
    <td>联系号码:${requestScope.usedcar.ucellphone}</td>
    <td>联系人：${requestScope.usedcar.ucontains}</td>
  </tr>
  <tr>
    <td colspan="2">看车地点：${requestScope.usedcar.ulocation}</td>
  </tr>
</table>
  </div>
  <div>
  	<table width="1500" height="250" border="1">
  <tr>
    <td>上牌地点：${requestScope.usedcar.ulicenseLocation}</td>
    <td>车辆用途：${requestScope.usedcar.ucarUsing}</td>
    <td>类型：${requestScope.usedcar.category.ctype}</td>
  </tr>
  <tr>
    <td>上牌时间：${requestScope.usedcar.ufirstRegister}</td>
    <td>车体颜色：${requestScope.usedcar.ucolor}</td>
    <td>环标：${requestScope.usedcar.eec.etype}</td>
  </tr>
  <tr>
    <td>变速类型：${requestScope.usedcar.utransmission}</td>
    <td>过户次数:${requestScope.usedcar.utransferTimes}</td>
    <td>行驶里程：${requestScope.usedcar.udrivenDistans}</td>
  </tr>
</table>
  </div>
  <div>
  	<p>卖家附言：</p>
  	<p>${requestScope.usedcar.usellerMessage }</p>
  </div>
  <div>汽车实景图片</div>
  
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
