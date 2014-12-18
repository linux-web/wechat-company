<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="format-detection" content="telephone=no">
    <title>会员卡</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
    <meta name="format-detection" content="telephone=no">
    <script src="template/vip/default/js/jquery-1.9.1.min.js" type="text/javascript">
    </script><script src="template/vip/default/js/jquery.lazyload.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="template/vip/default/css/touch_index.css">
    <link type="text/css" rel="stylesheet" href="template/vip/default/css/style.css">
</head><body><div id="top">

</div>
    <div id="scnhtm5" class="m-body">
            
        <!--主体-->
        <div class="m-floor vip-bj">
        </div>
        <div style="margin-left:140px;margin-top:-60px;">
	           <img src="${weixinVipInfo.vipImg}" style="width:356px;height:182px;" />
	           <div style="margin-top:10px; margin-left:95px;font-size:14px;">使用时向服务员初始此卡</div>
	        </div>
	        <div style="width:500px;height:120px;margin-left:60px;margin-top:10px;">
				<b class="b1"></b><b class="b2 d1"></b><b class="b3 d1"></b><b class="b4 d1"></b>
				<div class="b d1 k">
					<table >
						<tr style="border-bottom-color:#666; border-bottom-style:solid; border-bottom-width:1px; border-bottom::1px;">
							<td style="width:50px;height:30px;top:auto;">
								<p class="vip-balance-bj"><p>
							</td>
							<td style="width:400px;height:50px;font-size:14px;">
							预存款：${weixinVipMember.memberBalance}元
							</td>
							<td  style="width:50px;height:30px;top:auto;">
								<p class="vip-more-bj"><p>
							</td>
						</tr>
						<tr>
							<td style="width:30px;height:30px;">
								<p class="vip-integral-bj"><p>
							</td>
							<td style="width:400px;height:50px;font-size:14px;">
								积分：${weixinVipMember.memberIntegral}分
							</td>
							<td style="width:30px;height:30px;top:auto;"><p class="vip-more-bj"><p></td>
						</tr>
					</table>
				</div>
				<b class="b4b d1"></b><b class="b3b d1"></b><b class="b2b d1"></b><b class="b1b"></b>
				</div>
    		</div>
</body>
</html>