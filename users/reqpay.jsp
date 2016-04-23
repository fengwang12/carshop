<%@page language="java" contentType="text/html;charset=UTF-8"%>

<html>
	<head>
		<title>To YeePay Page
		</title>
	</head>
	<body>
	某某车城提醒您，请您确定订单，谨防诈骗！！！！！！！！！！！！<br/>
	请再三确认后再点击确认支付！！
		<form name="yeepay" action='https://www.yeepay.com/app-merchant-proxy/node' method='POST' target="_blank">
			<input type='hidden' name='p0_Cmd'   value='${requestScope.sendDate.p0_Cmd}'>
			<input type='hidden' name='p1_MerId' value='${requestScope.sendDate.p1_MerId}'>
			<input type='hidden' name='p2_Order' value='${requestScope.sendDate.p2_Order}'>
			<input type='hidden' name='p3_Amt'   value='${requestScope.sendDate.p3_Amt }'>
			<input type='hidden' name='p4_Cur'   value='${requestScope.sendDate.p4_Cur}'>
			<input type='hidden' name='p5_Pid'   value='${requestScope.sendDate.p5_Pid}'>
			<input type='hidden' name='p6_Pcat'  value='${requestScope.sendDate.p6_Pcat}'>
			<input type='hidden' name='p7_Pdesc' value='${requestScope.sendDate.p7_Pdesc}'>
			<input type='hidden' name='p8_Url'   value='${requestScope.sendDate.p8_Url}'>
			<input type='hidden' name='p9_SAF'   value='${requestScope.sendDate.p9_SAF}'>
			<input type='hidden' name='pa_MP'    value='${requestScope.sendDate.pa_MP}'>
			<input type='hidden' name='pd_FrpId' value='${requestScope.sendDate.pd_FrpId}'>
			<input type="hidden" name="pr_NeedResponse"  value="${requestScope.pr_NeedResponse}">
			<input type='hidden' name='hmac' value='${requestScope.hmac}'>
			<input type='submit' value="确认支付"/>
		</form>
	</body>
</html>
