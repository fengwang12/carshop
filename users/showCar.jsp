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
  ${requestScope.test}>>
  		${requestScope.newcar.nfirstLetter}  >>
  		${request.newcar.nmakeName}  >>
  		${request.newcar.nmodelSeries} >>
  		${request.newcar.nmodelName }	
  </dir>
  <div>
  	<img alt="图片无法查看，请更换浏览器或升级浏览器版本" src="{pageContext.request.pathContext}/images/newcar/.jpg">
  </div>
  
  <table width="632" height="230" border="1" summary="123">
  <caption align="left">
    订单编号：222
  </caption>
  <tr>
    <td scope="col">厂商：&nbsp;车系：&nbsp;车名：&nbsp;</td>
  </tr>
  <tr>
    <td>车辆简述：${request.newcar.nid }&nbsp; 出产国：${requestScope.test}</td>
  </tr>
  <tr>
    <td>车辆类型：${request.newcar.ntypeSeries } &nbsp;离合类型：&nbsp;发动机排量：&nbsp;</td>
  </tr>
</table>
  <div>
  <form action="${pageContext.request.contextPath}/forderAction_save.action" method="post">
  	<table width="632" height="230" border="1" summary="123123123313">
  <caption align="left">
  预付订单信息 ：
</caption>
<tr>
<td>留言信息：<br/>
<textarea rows="4" cols="75" name="fremark"></textarea>  </td>
</tr>
  <tr>
    <td scope="col">
    <%-- ${sessionScope.member.uname } --%>
    联系姓名：<input type="text" value="test" name="fname">
    
    联系方式：<input type="text" value="111111" name="fphone">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   个人邮箱：<input type="text" value="xiaoyang3115@126.com" name="femail">
   
  预付单价格：<input type="text" value="0.01" name="ftotal">&nbsp;</td>
  </tr>
</table>
<input type="submit" value="支付">
</form>

  </div>
	
  </body>
</html>
