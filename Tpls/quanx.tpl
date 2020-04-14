{% if request.target == "quanx" %}

[general]
excluded_routes=192.168.0.0/16, 172.16.0.0/12, 100.64.0.0/10, 10.0.0.0/8
geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://github.com/KOP-XIAO/QuantumultX/raw/master/Scripts/IP_API.js
network_check_url=http://www.baidu.com/
server_check_url=http://cp.cloudflare.com/generate_204

[dns]
server = 119.29.29.29
server = 119.28.28.28
server = 1.2.4.8
server = 182.254.116.116

server=/taobao.com/223.6.6.6
server=/*.taobao.com/223.6.6.6
server=/tmall.com/223.6.6.6
server=/*.tmall.com/223.6.6.6
server=/jd.com/119.29.29.29
server=/*.jd.com/119.28.28.28
server=/*.qq.com/119.28.28.28
server=/*.tencent.com/119.28.28.28
server=/*.alicdn.com/223.5.5.5
server=/aliyun.com/223.5.5.5
server=/*.aliyun.com/223.5.5.5
server=/weixin.com/119.28.28.28
server=/*.weixin.com/119.28.28.28
server=/bilibili.com/119.29.29.29
server=/*.bilibili.com/119.29.29.29
server=/hdslb.com/119.29.29.29
server=/163.com/119.29.29.29
server=/*.163.com/119.29.29.29
server=/126.com/119.29.29.29
server=/*.126.com/119.29.29.29
server=/*.126.net/119.29.29.29
server=/*.127.net/119.29.29.29
server=/*.netease.com/119.29.29.29
server=/mi.com/119.29.29.29
server=/*.mi.com/119.29.29.29
server=/xiaomi.com/119.29.29.29
server=/*.xiaomi.com/119.29.29.29
server=/routerlogin.net/system
server=/_hotspot_.m2m/system
server=/router.asus.com/system
server=/hotspot.cslwifi.com/system
server=/amplifi.lan/system

[policy]
static=♻️ 自动选择, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Auto.png
static=🔰 节点选择, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Proxy.png
static=🌍 国外媒体, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/GlobalMedia.png
static=🌏 国内媒体, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/DomesticMedia.png
static=Ⓜ️ 微软服务, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Microsoft.png
static=📲 电报信息, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram.png
static=🍎 苹果服务, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple.png
static=🎯 全球直连, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Direct.png
static=🛑 全球拦截, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Advertising.png
static=🐟 漏网之鱼, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Final.png

[server_remote]

[filter_remote]

[rewrite_remote]
https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Rewrite/Rewrite.list, enabled=true

[server_local]

[filter_local]
ip-cidr, 10.0.0.0/8, direct
ip-cidr, 127.0.0.0/8, direct
ip-cidr, 172.16.0.0/12, direct
ip-cidr, 192.168.0.0/16, direct
ip-cidr, 224.0.0.0/24, direct
geoip, cn, direct
final, proxy

[rewrite_local]

[script]
http-response ^https?:\/\/(api|mapi)\.weibo\.(cn|com)\/2(\/groups\/timeline|\/statuses\/unread|\/statuses\/extend|\/comments\/build_comments|\/photo\/recommend_list|\/stories\/video_stream|\/statuses\/positives\/get|\/stories\/home_list|\/profile\/statuses|\/statuses\/friends\/timeline|\/service\/picfeed) requires-body=true,script-path=https://ruleset.dev/wb_ad,script-update-interval=86400
http-response ^https?:\/\/(sdk|wb)app\.uve\.weibo\.com(\/interface\/sdk\/sdkad.php|\/wbapplua\/wbpullad.lua) requires-body=true,script-path=https://ruleset.dev/wb_launch,script-update-interval=86400
http-response ^https://[\s\S]*\/aweme/v1/(feed|aweme/post|follow/feed)/ requires-body=1,script-update-interval=86400,script-path=https://ruleset.dev/Aweme
http-response ^https:\/\/api\.rr\.tv[\s\S]*(channel|Feed|Choice|profile|Medal) max-size=524288,requires-body=true,script-path=https://ruleset.dev/RRad,script-update-interval=86400
http-response https://api.zhihu.com/moments\?(action|feed_type) requires-body=1,max-size=0,script-path=https://ruleset.dev/zhihu_feed,script-update-interval=86400
http-response https://api.zhihu.com/topstory/recommend requires-body=1,max-size=0,script-path=https://ruleset.dev/zhihu_recommend,script-update-interval=86400
http-response https://api.zhihu.com/.*/questions requires-body=1,max-size=0,script-path=https://ruleset.dev/zhihu_answer,script-update-interval=86400
http-response https://api.zhihu.com/market/header requires-body=1,max-size=0,script-path=https://ruleset.dev/zhihu_market,script-update-interval=86400
http-response https://app.bilibili.com/x/v2/rank requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_rank,script-update-interval=86400
http-response https://app.bilibili.com/x/v2/space\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_space,script-update-interval=86400
http-response https://app.bilibili.com/x/resource/show/tab\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_tab,script-update-interval=86400
http-response https://app.bilibili.com/x/v2/feed/index\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_feed,script-update-interval=86400
http-response https://app.bilibili.com/x/v2/account/mine\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_account,script-update-interval=86400
http-response https://app.bilibili.com/x/v2/view\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_relate,script-update-interval=86400
http-response https://app.bilibili.com/x/v2/show/popular/index\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_hot,script-update-interval=86400
http-response https://api.bilibili.com/x/v2/reply/main\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_reply,script-update-interval=86400
http-response https://api.live.bilibili.com/xlive/app-room/v1/index/getInfoByRoom\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_live,script-update-interval=86400

[mitm]
hostname=*googlevideo.com, *.music.163.com, music.163.com, *.music.126.net, music.126.net
p12=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
passphrase=4B676386

{% endif %}