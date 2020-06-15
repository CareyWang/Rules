[General]
loglevel = notify
bypass-system = true
replica = false
ipv6 = false
show-error-page-for-reject = true
exclude-simple-hostnames = true
skip-proxy = 127.0.0.1,192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,100.64.0.0/10,localhost,*.local,e.crashlytics.com,captive.apple.com,::ffff:0:0:0:0/1,::ffff:128:0:0:0/1
bypass-tun = 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12
internet-test-url = http://www.aliyun.com
proxy-test-url = http://cp.cloudflare.com/generate_204
always-real-ip = msftconnecttest.com, msftncsi.com, *.msftconnecttest.com, *.msftncsi.com, *.srv.nintendo.net, *.stun.playstation.net, xbox.*.microsoft.com, *.xboxlive.com

# macOS Only
enhanced-mode-by-rule = false
external-controller-access = passw0rd@0.0.0.0:6170

{% if exists("request.surge.doh") %}
{% if request.surge.doh == "true" %}
dns-server = 119.29.29.29, 119.28.28.28, 180.76.76.76, 1.2.4.8
doh-server = https://doh.rixcloud.dev/dns-query, https://118.31.13.131/dns-query, https://139.224.112.177/dns-query
{% else %}
dns-server = 119.29.29.29, 119.28.28.28, 180.76.76.76, 1.2.4.8
{% endif %}
{% else %}
dns-server = 119.29.29.29, 119.28.28.28, 180.76.76.76, 1.2.4.8
{% endif %}

[Host]
ip6-localhost = ::1
ip6-loopback = ::1
doh.rixcloud.dev = server:119.29.29.29
taobao.com = server:223.6.6.6
*.taobao.com = server:223.6.6.6
tmall.com = server:223.6.6.6
*.tmall.com = server:223.6.6.6
jd.com = server:119.29.29.29
*.jd.com = server:119.28.28.28
*.qq.com = server:119.28.28.28
*.tencent.com = server:119.28.28.28
*.alicdn.com = server:223.5.5.5
aliyun.com = server:223.5.5.5
*.aliyun.com = server:223.5.5.5
weixin.com = server:119.28.28.28
*.weixin.com = server:119.28.28.28
bilibili.com = server:119.29.29.29
*.bilibili.com = server:119.29.29.29
hdslb.com = server:119.29.29.29
163.com = server:119.29.29.29
*.163.com = server:119.29.29.29
126.com = server:119.29.29.29
*.126.com = server:119.29.29.29
*.126.net = server:119.29.29.29
*.127.net = server:119.29.29.29
*.netease.com = server:119.29.29.29
mi.com = server:119.29.29.29
*.mi.com = server:119.29.29.29
xiaomi.com = server:119.29.29.29
*.xiaomi.com = server:119.29.29.29
routerlogin.net = server:system
_hotspot_.m2m = server:system
router.asus.com = server:system
hotspot.cslwifi.com = server:system
amplifi.lan = server:system
*.lan = server:system
mb3admin.com = 35.201.204.122

[URL Rewrite]
# AbeamTV Unlock
^https?:\/\/api\.abema\.io\/v\d\/ip\/check - reject

# Redirect Google Service
^https?:\/\/(www.)?g\.cn https://www.google.com 302
^https?:\/\/(www.)?google\.cn https://www.google.com 302

# Redirect HTTP to HTTPS
^https?:\/\/(www.)?taobao\.com\/ https://www.taobao.com/ 302
^https?:\/\/(www.)?jd\.com\/ https://www.jd.com/ 302
^https?:\/\/(www.)?mi\.com\/ https://www.mi.com/ 302
^https?:\/\/you\.163\.com\/ https://you.163.com/ 302
^https?:\/\/(www.)?suning\.com/ https://suning.com/ 302
^https?:\/\/(www.)?yhd\.com https://yhd.com/ 302

# Redirect False to True
# >> IGN China to IGN Global
^https?:\/\/(www.)?ign\.xn--fiqs8s\/ http://cn.ign.com/ccpref/us 302
# >> Fake Website Made By Makeding
^https?:\/\/(www.)?abbyychina\.com\/ http://www.abbyy.cn/ 302
^https?:\/\/(www.)?bartender\.cc\/ https://cn.seagullscientific.com 302
^https?:\/\/(www.)?betterzip\.net\/ https://macitbetter.com/ 302
^https?:\/\/(www.)?beyondcompare\.cc\/ https://www.scootersoftware.com/ 302
^https?:\/\/(www.)?bingdianhuanyuan\.cn\/ http://www.faronics.com/zh-hans/ 302
^https?:\/\/(www.)?chemdraw\.com\.cn\/ http://www.cambridgesoft.com/ 302
^https?:\/\/(www.)?codesoftchina\.com\/ https://www.teklynx.com/ 302
^https?:\/\/(www.)?coreldrawchina\.com\/ https://www.coreldraw.com/cn/ 302
^https?:\/\/(www.)?crossoverchina\.com\/ https://www.codeweavers.com/ 302
^https?:\/\/(www.)?easyrecoverychina\.com\/ https://www.ontrack.com/ 302
^https?:\/\/(www.)?ediuschina\.com\/ https://www.grassvalley.com/ 302
^https?:\/\/(www.)?flstudiochina\.com\/ https://www.image-line.com/flstudio/ 302
^https?:\/\/(www.)?formysql\.com\/ https://www.navicat.com.cn 302
^https?:\/\/(www.)?guitarpro\.cc\/ https://www.guitar-pro.com/ 302
^https?:\/\/(www.)?huishenghuiying\.com\.cn\/ https://www.corel.com/cn/ 302
^https?:\/\/(www.)?iconworkshop\.cn\/ https://www.axialis.com/iconworkshop/ 302
^https?:\/\/(www.)?imindmap\.cc\/ https://imindmap.com/zh-cn/ 302
^https?:\/\/(www.)?jihehuaban\.com\.cn\/ https://sketch.io/ 302
^https?:\/\/(www.)?keyshot\.cc\/ https://www.keyshot.com/ 302
^https?:\/\/(www.)?mathtype\.cn\/ http://www.dessci.com/en/products/mathtype/ 302
^https?:\/\/(www.)?mindmanager\.cc\/ https://www.mindjet.com/ 302
^https?:\/\/(www.)?mindmapper\.cc\/ https://mindmapper.com 302
^https?:\/\/(www.)?mycleanmymac\.com\/ https://macpaw.com/cleanmymac 302
^https?:\/\/(www.)?nicelabel\.cc\/ https://www.nicelabel.com/ 302
^https?:\/\/(www.)?ntfsformac\.cc\/ https://www.tuxera.com/products/tuxera-ntfs-for-mac-cn/ 302
^https?:\/\/(www.)?ntfsformac\.cn\/ https://www.paragon-software.com/ufsdhome/zh/ntfs-mac/ 302
^https?:\/\/(www.)?overturechina\.com\/ https://sonicscores.com/overture/ 302
^https?:\/\/(www.)?passwordrecovery\.cn\/ https://cn.elcomsoft.com/aopr.html 302
^https?:\/\/(www.)?pdfexpert\.cc\/ https://pdfexpert.com/zh 302
^https?:\/\/(www.)?ultraiso\.net\/ https://cn.ezbsystems.com/ultraiso/ 302
^https?:\/\/(www.)?vegaschina\.cn\/ https://www.vegas.com/ 302
^https?:\/\/(www.)?xmindchina\.net\/ https://www.xmind.cn/ 302
^https?:\/\/(www.)?xshellcn\.com\/ https://www.netsarang.com/products/xsh_overview.html 302
^https?:\/\/(www.)?yuanchengxiezuo\.com\/ https://www.teamviewer.com/zhcn/ 302
^https?:\/\/(www.)?zbrushcn\.com\/ http://pixologic.com/ 302
^https://aweme-eagle(.*)\.snssdk\.com/aweme/v2/ https://aweme-eagle$1.snssdk.com/aweme/v1/ 302

# JD Protection
^https?:\/\/coupon\.m\.jd\.com\/ https://coupon.m.jd.com/ 302
^https?:\/\/h5\.m\.jd\.com\/ https://h5.m.jd.com/ 302
^https?:\/\/item\.m\.jd\.com\/ https://item.m.jd.com/ 302
^https?:\/\/m\.jd\.com\/ https://m.jd.com/ 302
^https?:\/\/newcz\.m\.jd\.com\/ https://newcz.m.jd.com/ 302
^https?:\/\/p\.m\.jd\.com\/ https://p.m.jd.com/ 302
^https?:\/\/so\.m\.jd\.com\/ https://so.m.jd.com/ 302
^https?:\/\/union\.click\.jd\.com\/jda? http://union.click.jd.com/jda?adblock= header
^https?:\/\/union\.click\.jd\.com\/sem.php? http://union.click.jd.com/sem.php?adblock= header
^https?:\/\/www.jd.com\/ https://www.jd.com/ 302

# TikTok Internation
(.*video_id=\w{32})(.*watermark=)(.*) $1 302
(?<=(carrier|account|sys|sim)_region=)CN JP 307

# Wiki
^https://zh.(m.)?wikipedia.org/zh(-\w*)?(?=/) https://www.wikiwand.com/zh$2 302
^https://(\w*).(m.)?wikipedia.org/wiki https://www.wikiwand.com/$1 302

# Resso

(?<=(carrier|account|sys|sim)_region=)cn in 307

# Advertising Block

# >> 2048Puzzle
^https?:\/\/a\.applovin\.com\/3\.0\/ad - reject

# >> 4gTV
^https?:\/\/service\.4gtv\.tv\/4gtv\/Data\/GetAD - reject
^https?:\/\/service\.4gtv\.tv\/4gtv\/Data\/ADLog - reject

# >> 58
^https?:\/\/.+\.58cdn\.com\.cn\/brandads\/ - reject
^https?:\/\/app\.58\.com\/api\/home\/advertising\/ - reject
^https?:\/\/app\.58\.com\/api\/home\/appadv\/ - reject
^https?:\/\/app\.58\.com\/api\/home\/invite\/popupAdv - reject
^https?:\/\/app\.58\.com\/api\/log\/ - reject

# >> AcFun
^https?:\/\/aes\.acfun\.cn\/s\?adzones - reject

# >> Ai NanNing
^https?:\/\/nnapp\.cloudbae\.cn\/mc\/api\/advert/ - reject

# >> Aihuishou
^https?:\/\/gw\.aihuishou\.com\/app-portal\/home\/getadvertisement - reject

# >> AMap
^https?:\/\/m\d{1}\.amap\.com\/ws\/valueadded\/alimama\/splash_screen\/ - reject

# >> Baicizhan
^https?:\/\/7n\.bczcdn\.com\/launchad\/ - reject

# >> Baidu
^https?:\/\/.+\/client\/phpui2\/ - reject
^https?:\/\/cover.baidu.com\/cover\/page\/dspSwitchAds\/ - reject
^https?:\/\/c\.tieba\.baidu\.com\/c\/s\/splashSchedule - reject
^https?:\/\/issuecdn\.baidupcs\.com\/issue\/netdisk\/guanggao\/ - reject
^https?:\/\/update\.pan\.baidu\.com\/statistics - reject

# >> Baobao
^https?:\/\/www\.myhug\.cn\/ad\/ - reject

# >> Beike Zhaofang
^https?:\/\/app\.api\.ke\.com\/config\/config\/bootpage - reject

# >> Beitaicuhfang
^https?:\/\/channel\.beitaichufang\.com\/channel\/api\/v\d\/promote\/ios\/start\/page - reject

# >> Bi ShiJie
^https?:\/\/iapi\.bishijie\.com\/actopen\/advertising\/ - reject

# >> Bilibili
^https?:\/\/app\.bilibili\.com\/x\/v\d\/splash\/ - reject

# >> ByteDance
^https?:\/\/.+\.(musical|snssdk)\.(com|ly)\/(api|motor)\/ad\/ - reject
^https?:\/\/.+\.pstatp\.com\/img\/ad - reject
^https?:\/\/.+\.snssdk\.com\/motor\/operation\/activity\/display\/config\/v\d\/ - reject
^https?:\/\/dsp\.toutiao\.com\/api\/xunfei\/ads\/ - reject

# >> CamScanner
^https?:\/\/api\.intsig\.net\/user\/cs\/operating\/app\/get_startpic\/ - reject

# >> Caocao Chuxin
^https?:\/\/cap\.caocaokeji\.cn\/advert-bss\/ - reject

# >> Chelaile
^https?:\/\/(api|atrace)\.chelaile\.net\.cn\/adpub\/ - reject
^https?:\/\/api\.chelaile\.net\.cn\/goocity\/advert\/ - reject
^https?:\/\/atrace\.chelaile\.net\.cn\/exhibit\?&adv_image - reject
^https?:\/\/pic1\.chelaile\.net\.cn\/adv\/ - reject

# >> ChinaMobile
^https?:\/\/app\.10086\.cn\/biz-orange\/DN\/(findSale|homeSale)\/getsaleAdver - reject

# >> ChinaUnicom
^https?:\/\/m\.client\.10010\.com\/mobileService\/customer\/accountListData\.htm - reject
^https?:\/\/m\.client\.10010\.com\/uniAdmsInterface\/(getWelcomeAd|getHomePageAd) - reject

# >> CNTV
^https?:\/\/asp\.cntv\.myalicdn\.com\/.+\?maxbr=850 - reject
^https?:\/\/cntv\.hls\.cdn\.myqcloud\.com\/.+\?maxbr=850 - reject
^https?:\/\/v\.cctv\.com\/.+850 - reject
^https?:\/\/www\.cntv\.cn\/nettv\/adp\/ - reject

# >> DanDan Zan
^https?:\/\/www\.dandanzan\.com\/res\/gdsefse\.js - reject

# >> DangDang
^https?:\/\/mapi\.dangdang\.com\/index\.php\?action=init - reject

# >> DayDayCook
^https?:\/\/api\.daydaycook\.com\.cn\/daydaycook\/server\/ad\/ - reject
^https?:\/\/cms\.daydaycook\.com\.cn\/api\/cms\/advertisement\/ - reject

# >> eLong
^https?:\/\/mobile-api2011\.elong\.com\/(adgateway|adv)\/ - reject
^https?:\/\/(2(5[0-5]{1}|[0-4]\d{1})|[0-1]?\d{1,2})(\.(2(5[0-5]{1}|[0-4]\d{1})|[0-1]?\d{1,2})){3}\/(adgateway|adv)\/ - reject

# >> Facebook
^https?:\/\/www\.facebook\.com\/.+video_click_to_advertiser_site - reject

# >> Fliggy
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.trip\.activity\.querytmsresources\/ - reject

# >> Flyer Tea
^https?:\/\/www\.flyertea\.com\/source\/plugin\/mobile\/mobile\.php\?module=advis - reject

# >> Foodie
^https?:\/\/foodie-api\.yiruikecorp\.com\/v\d\/(banner|notice)\/overview - reject

# >> FOTOABLE
^https?:\/\/cdn\.api\.fotoable\.com\/Advertise\/ - reject

# >> Gofun
^https?:\/\/gateway\.shouqiev\.com\/fsda\/app\/bootImage\.json - reject

# >> Google
^https?:\/\/.+\.youtube\.com\/api\/stats\/.+adformat - reject
^https?:\/\/.+\.youtube\.com\/api\/stats\/ads - reject
^https?:\/\/.+\.youtube\.com\/get_midroll - reject
^https?:\/\/.+\.youtube\.com\/get_midroll_ - reject
^https?:\/\/.+\.youtube\.com\/pagead\/ - reject
^https?:\/\/.+\.youtube\.com\/ptracking - reject
^https?:\/\/.+\.youtube\.com\/ptracking\? - reject
^https?:\/\/pagead2.googlesyndication.com\/pagead\/js\/? - reject
^https?:\/\/pagead2.googlesyndication.com\/pagead\/js\/? - reject
^https?:\/\/premiumyva\.appspot\.com\/vmclickstoadvertisersite - reject
^https?:\/\/www.google-analytics.com\/analytics.js - reject
^https?:\/\/www.google-analytics.com\/analytics.js - reject
^https?:\/\/youtubei\.googleapis\.com/.+ad_break - reject
^https?:\/\/youtubei\.googleapis\.com\/youtubei\/.+ad_ - reject
^https?:\/\/youtubei\.googleapis\.com\/youtubei\/.+log_ - reject

# >> Hangzhou Bus
^https?:\/\/m\.ibuscloud.com\/v\d\/app\/getStartPage - reject

# >> Hangzhou Citizen Card
^https?:\/\/smkmp\.96225.com\/smkcenter\/ad/ - reject

# >> Hupu
^https?:\/\/games\.mobileapi\.hupu\.com\/.+\/(interfaceAdMonitor|interfaceAd)\/ - reject
^https?:\/\/games\.mobileapi\.hupu\.com\/.+\/status\/init - reject

# >> IdleFish
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.taobao\.idle\.home\.welcome\/ - reject

# >> iFlytek
^https?:\/\/imeclient\.openspeech\.cn\/adservice\/ - reject

# >> iQiyi
^https?:\/\/act\.vip\.iqiyi\.com\/interact\/api\/show.do - reject
^https?:\/\/act\.vip\.iqiyi\.com\/interact\/api\/v\d\/show - reject
^https?:\/\/iface\.iqiyi\.com\/api\/getNewAdInfo - reject
^https?:\/\/t7z\.cupid\.iqiyi\.com\/mixer\? - reject

# >> JD
^https?:\/\/(bdsp-x|dsp-x)\.jd\.com\/adx\/ - reject
^https?:\/\/api\.m\.jd.com\/client\.action\?functionId=start - reject
^https?:\/\/ms\.jr\.jd\.com\/gw\/generic\/base\/na\/m\/adInfo - reject

# >> Jiemian
^https?:\/\/img\.jiemian\.com\/ads\/ - reject

# >> JXEDT
^https?:\/\/api\.jxedt\.com\/ad\/ - reject
^https?:\/\/richmanapi\.jxedt\.com\/api\/ad\/ - reject

# >> Keep
^https?:\/\/static1\.keepcdn\.com\/.+\d{3}x\d{4} - reject
^https?:\/\/api\.gotokeep\.com\/ads\/ - reject

# >> KFC
^https?:\/\/res\.kfc\.com\.cn\/advertisement\/ - reject

# >> Kingsoft
^https?:/\/\counter\.ksosoft.com\/ad\.php - reject
^https?:\/\/.+\.kingsoft-office-service\.com\/ad - reject
^https?:\/\/counter\.ksosoft\.com\/ad\.php - reject
^https?:\/\/dict-mobile\.iciba\.com\/interface\/index\.php\?.+(c=ad|collectFeedsAdShowCount|KSFeedsAdCardViewController) - reject
^https?:\/\/ios\.wps\.cn\/ad-statistics-service - reject
^https?:\/\/mobile-pic\.cache\.iciba\.com\/feeds_ad\/ - reject
^https?:\/\/service\.iciba\.com\/popo\/open\/screens\/v\d\?adjson - reject

# >> KouBei
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.o2o\.ad\.gateway\.get\/ - reject
^https?:\/\/render\.alipay\.com\/p\/s\/h5data\/prod\/spring-festival-2019-h5data\/popup-h5data\.json - reject

# >> Kuaikan Comic
^https?:\/\/api\.kkmh\.com\/.+(ad|advertisement)\/ - reject

# >> Kuwo
^https?:\/\/(2(5[0-5]{1}|[0-4]\d{1})|[0-1]?\d{1,2})(\.(2(5[0-5]{1}|[0-4]\d{1})|[0-1]?\d{1,2})){3}\/EcomResourceServer/AdPlayPage/adinfo - reject
^https?:\/\/(2(5[0-5]{1}|[0-4]\d{1})|[0-1]?\d{1,2})(\.(2(5[0-5]{1}|[0-4]\d{1})|[0-1]?\d{1,2})){3}\/MobileAdServer\/ - reject

# >> Le
^https?:\/\/.+\/letv-gug\/ - reject

# >> Luckin Coffee
^https?:\/\/.+\/resource\/m\/promo\/adsense - reject
^https?:\/\/.+\/resource\/m\/sys\/app\/adpos - reject

# >> MaFengWo
^https?:\/\/mapi\.mafengwo\.cn\/ad\/ - reject
^https?:\/\/mapi\.mafengwo\.cn\/travelguide\/ad\/ - reject

# >> Mahua Video
^https?:\/\/.+\/api\/app\/member\/ver2\/user\/login\/ - reject


# >> Maiduidui
^https?:\/\/mob\.mddcloud\.com\.cn\/api\/(ad|advert)\/ - reject

# >> Manhuaren
^https?:\/\/mangaapi\.manhuaren\.com\/v\d\/public\/getStartPageAds - reject


# >> Meituan
^https?:\/\/img\.meituan\.net\/midas\/ - reject
^https?:\/\/p([0-9])\.meituan\.net\/(mmc|wmbanner)\/ - reject
^https?:\/\/p\d{1}\.meituan\.net\/(adunion|display|linglong|mmc|wmbanner)\/ - reject
^https?:\/\/s3plus\.meituan\.net\/.+\/linglong\/ - reject

# >> Meiweibuyongdeng
^https?:\/\/capi.mwee.cn/app-api/V12/app/getstartad - reject

# >> MI
^https?:\/\/api\.m\.mi\.com\/v\d\/app\/start - reject
^https?:\/\/api\.jr\.mi\.com\/v\d\/adv\/ - reject
^https?:\/\/api\.jr\.mi\.com\/jr\/api\/playScreen - reject

# >> MI Fit
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/homepage_ad\? - reject
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/sleep_ad\? - reject
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/sport_ad\? - reject
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/sport_summary_ad\? - reject
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/sport_training_ad\? - reject
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/step_detail_ad\? - reject
^https?:\/\/api-mifit\.huami\.com\/discovery\/mi\/discovery\/training_video_ad\? - reject

# >> Miaopai
^https?:\/\/b-api\.ins\.miaopai\.com\/1\/ad/ - reject

# >> MIgu
^https?:\/\/.+\/v\d\/iflyad\/ - reject
^https?:\/\/.+\/cdn-adn\/ - reject
^https?:\/\/ggic\.cmvideo\.cn\/ad\/ - reject
^https?:\/\/ggic2\.cmvideo\.cn\/ad\/ - reject
^https?:\/\/.+/img\/ad\.union\.api\/ - reject

# >> MixC
^https?:\/\/app\.mixcapp\.com\/mixc\/api\/v\d\/ad - reject

# >> MogoRenter
^https?:\/\/api\.mgzf\.com\/renter-operation\/home\/startHomePage - reject

# >> MojiWeather
^https?:\/\/cdn\.moji\.com\/(adoss|adlink)\/ - reject

# >> Myhug
^https?:\/\/www\.myhug\.cn\/ad\/ - reject

# >> NationalGeographic
^https?:\/\/dili\.bdatu\.com\/jiekou\/ad\/ - reject

# >> NationalGeographicChina
^https?:\/\/wap\.ngchina\.cn\/news\/adverts\/ - reject

# >> NetEase
^https?:\/\/.+\/eapi\/(ad|log)\/ - reject
^https?:\/\/client\.mail\.163\.com\/apptrack\/confinfo\/searchMultiAds - reject
^https?:\/\/c\.m\.163\.com\/nc\/gl\/ - reject
^https?:\/\/dsp-impr2\.youdao\.com\/adload.s\? - reject
^https?:\/\/oimage([a-z])([0-9])\.ydstatic\.com\/.+adpublish - reject
^https?:\/\/sp\.kaola\.com\/api\/openad - reject
^https?:\/\/support\.you\.163\.com\/xhr\/boot\/getBootMedia\.json - reject

# >> ofo
^https?:\/\/supportda\.ofo\.com\/adaction\? - reject
^https?:\/\/ma\.ofo\.com\/ads\/ - reject
^https?:\/\/activity2\.api\.ofo\.com\/ofo\/Api\/v\d\/ads - reject
^https?:\/\/ma\.ofo\.com\/adImage\/ - reject

# >> PConline
^https?:\/\/agent-count\.pconline\.com\.cn\/counter\/adAnalyse\/ - reject
^https?:\/\/mrobot\.pcauto\.com\.cn\/v\d\/ad2p - reject
^https?:\/\/mrobot\.pcauto\.com\.cn\/xsp\/s\/auto\/info\/preload\.xsp - reject
^https?:\/\/mrobot\.pconline\.com\.cn\/s\/onlineinfo\/ad\/ - reject
^https?:\/\/mrobot\.pconline\.com\.cn\/v\d\/ad2p - reject

# >> PeanutWiFiMpass
^https?:\/\/cmsapi\.wifi8\.com\/v\d{1}\/(emptyAd|adNew)\/ - reject

# >> Qdaily
^https?:\/\/app3\.qdaily\.com\/app3\/boot_advertisements\.json - reject
^https?:\/\/notch\.qdaily\.com\/api\/v\d\/boot_ad - reject

# >> Qiongou
^https?:\/\/media\.qyer\.com\/ad\/ - reject
^https?:\/\/open\.qyer.com\/qyer\/config\/get - reject
^https?:\/\/open\.qyer\.com\/qyer\/startpage\/ - reject

# >> Qiuduoduo
^https?:\/\/api\.qiuduoduo\.cn\/guideimage - reject

# >> Renren Video
^https?:\/\/api\.rr\.tv\/ad\/ - reject
^https?:\/\/api\.videozhishi\.com\/api\/getAdvertising - reject
^https?:\/\/msspjh\.emarbox\.com\/getAdConfig - reject

# >> ShiHuo
^https?:\/\/www\.shihuo\.cn\/app3\/saveAppInfo - reject

# >> 首汽约车
^https?:\/\/gw-passenger\.01zhuanche\.com\/gw-passenger\/car-rest\/webservice\/passenger\/recommendADs - reject
^https?:\/\/gw-passenger\.01zhuanche\.com\/gw-passenger\/zhuanche-passenger-token\/leachtoken\/webservice\/homepage\/queryADs - reject

# >> Sina
^https?:\/\/edit\.sinaapp\.com\/ua\?t=adv - reject

# >> Sina Weather
^https?:\/\/tqt\.weibo\.cn\/.+advert\.index - reject
^https?:\/\/tqt\.weibo\.cn\/api\/advert\/ - reject
^https?:\/\/tqt\.weibo\.cn\/overall\/redirect\.php\?r=tqtad - reject
^https?:\/\/tqt\.weibo\.cn\/overall\/redirect\.php\?r=tqt_sdkad - reject

# >> Sina Weibo
^https?:\/\/sdkapp\.uve\.weibo\.com\/interface\/sdk\/sdkad\.php - reject
^https?:\/\/wbapp\.uve\.weibo\.com\/wbapplua\/wbpullad\.lua - reject
^https?:\/\/sdkapp\.uve\.weibo\.com/\interface\/sdk\/actionad\.php - reject

# >> SMZDM
^https?:\/\/api\.smzdm\.com\/v\d\/util\/loading - reject

# >> Snail Sleep
^https?:\/\/snailsleep\.net\/snail\/v\d\/adTask\/ - reject
^https?:\/\/snailsleep\.net\/snail\/v\d\/screen\/qn\/get\? - reject

# >> Sohu
^https?:\/\/api\.k\.sohu\.com\/api\/news\/adsense - reject
^https?:\/\/api\.tv\.sohu\.com\/agg\/api\/app\/config\/bootstrap - reject
^https?:\/\/hui\.sohu\.com\/predownload2/\? - reject
^https?:\/\/pic\.k\.sohu\.com\/img8\/wb\/tj\/ - reject
^https?:\/\/s1\.api\.tv\.itc\.cn\/v\d\/mobile\/control\/switch\.json - reject

# >> StarFans
^https?:\/\/a\.sfansclub\.com\/business\/t\/ad\/ - reject
^https?:\/\/a\.sfansclub\.com\/business\/t\/boot\/screen\/index - reject

# >> TaPiaoPiao
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.film\.mtopadvertiseapi\.queryadvertise\/ - reject

# >> Tencent Futu Securities
^https?:\/\/api5\.futunn\.com\/ad\/ - reject

# >> Tencent Game
^https?:\/\/qt\.qq\.com\/lua\/mengyou\/get_splash_screen_info - reject
^https?:\/\/ssl\.kohsocialapp\.qq\.com:10001\/game\/buttons - reject

# >> Tencent Maps
^https?:\/\/3gimg\.qq\.com\/tencentMapTouch\/app\/activity\/ - reject
^https?:\/\/newsso\.map\.qq\.com\/\?&attime= - reject

# >> Tencent News
^https?:\/\/r\.inews\.qq\.com\/adsBlacklist - reject
^https?:\/\/r\.inews\.qq\.com\/getFullScreenPic - reject
^https?:\/\/r\.inews\.qq\.com\/getQQNewsRemoteConfig - reject

# >> Tencent QQLive
^https?:\/\/.+\.mp4\?cdncode=.+&guid= - reject
^https?:\/\/.+\.mp4\?cdncode=.+&sdtfrom=v3004 - reject
^https?:\/\/btrace.qq.com - reject
^https?:\/\/vv\.video\.qq\.com\/getvmind\? - reject

# >> Tencent WeChat
^https?:\/\/mp\.weixin\.qq.com\/mp\/advertisement_report - reject
^https?:\/\/mp\.weixin\.qq.com\/mp\/ad_complaint - reject
^https?:\/\/mp\.weixin\.qq.com\/mp\/ad_video - reject

# >> The Paper
^https?:\/\/adpai\.thepaper\.cn\/.+&ad= - reject

# >> Thunder
^https?:\/\/images\.client\.vip\.xunlei\.com\/.+\/advert\/ - reject

# >> tskscn
^https?:\/\/47\.97\.20\.12\/ad\/ - reject

# >> TV_Home
^https?:\/\/api\.gaoqingdianshi\.com\/api\/v\d\/ad\/ - reject

# >> txffp
^https?:\/\/pss\.txffp\.com\/piaogen\/images\/launchScreen/ - reject

# >> UC
^https?:\/\/huichuan\.sm\.cn\/jsad - reject
^https?:\/\/iflow\.uczzd\.cn\/log\/ - reject

# >> Variflight
^https:\/\/app\.variflight\.com\/v4\/advert\/ - reject

# >> VUE
^https?:\/\/static\.vuevideo\.net\/styleAssets\/.+\/splash_ad - reject
^https?:\/\/static\.vuevideo\.net\/styleAssets\/advertisement\/ - reject

# >> WallStreetCN
^https?:\/\/api\.wallstreetcn\.com\/apiv\d\/advertising\/ - reject

# >> WeDoctor
^https?:\/\/app\.wy\.guahao\.com\/json\/white\/dayquestion\/getpopad - reject

# >> Weico
^https?:\/\/overseas\.weico\.cc/portal\.php\?a=get_coopen_ads - reject

# >> WeiDian
^https?:\/\/thor\.weidian\.com\/ares\/home\.splash\/ - reject

# >> WiFi Share Master
^https?:\/\/nochange\.ggsafe\.com\/ad\/ - reject

# >> WIFI8
^https?:\/\/cmsapi\.wifi8\.com\/v\d\/emptyAd\/info - reject
^https?:\/\/cmsapi\.wifi8\.com\/v\d\/adNew\/config - reject

# >> Wuta Cam
^https?:\/\/api-release\.wuta-cam\.com\/ad_tree - reject
^https?:\/\/res-release\.wuta-cam\.com\/json\/ads_component_cache\.json - reject

# >> Xiachufang
^https?:\/\/api\.xiachufang\.com\/v\d\/ad/ - reject

# >> Xiami music
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.alimusic\.common\.mobileservice\.startinit\/ - reject

# >> Xianyu
^https?:\/\/gw\.alicdn\.com\/mt\/ - reject
^https?:\/\/gw\.alicdn\.com\/tfs\/.+\d{3,4}-\d{4} - reject
^https?:\/\/gw\.alicdn\.com\/tps\/.+\d{3,4}-\d{4} - reject

# >> Xiao Shuimian
^https?:\/\/api\.psy-1\.com\/cosleep\/startup - reject

# >> Ximalaya
^https?:\/\/adse.+\.com\/[a-z]{4}\/loading\?appid= - reject
^https?:\/\/adse\.ximalaya\.com\/ting\/feed\?appid= - reject
^https?:\/\/adse\.ximalaya\.com\/ting\/loading\?appid= - reject
^https?:\/\/adse\.ximalaya\.com\/ting\?appid= - reject
^https?:\/\/fdfs\.xmcdn\.com\/group21\/M03\/E7\/3F\/ - reject
^https?:\/\/fdfs\.xmcdn\.com\/group21\/M0A\/95\/3B\/ - reject
^https?:\/\/fdfs\.xmcdn\.com\/group22\/M00\/92\/FF\/ - reject
^https?:\/\/fdfs\.xmcdn\.com\/group22\/M05\/66\/67\/ - reject
^https?:\/\/fdfs\.xmcdn\.com\/group22\/M07\/76\/54\/ - reject
^https?:\/\/fdfs\.xmcdn\.com\/group23\/M01\/63\/F1\/ - reject
^https?:\/\/fdfs\.xmcdn\.com\/group23\/M04\/E5\/F6\/ - reject
^https?:\/\/fdfs\.xmcdn\.com\/group23\/M07\/81\/F6\/ - reject
^https?:\/\/fdfs\.xmcdn\.com\/group23\/M0A\/75\/AA\/ - reject
^https?:\/\/fdfs\.xmcdn\.com\/group24\/M03\/E6\/09\/ - reject
^https?:\/\/fdfs\.xmcdn\.com\/group24\/M07\/C4\/3D\/ - reject
^https?:\/\/fdfs\.xmcdn\.com\/group25\/M05\/92\/D1\/ - reject

# >> Xunyou Booster
^https?:\/\/portal-xunyou\.qingcdn\.com\/api\/v\d\/ios\/configs\/(splash_ad|ad_urls) - reject
^https?:\/\/portal-xunyou\.qingcdn\.com\/api\/v\d{1}\/ios\/ads\/ - reject

# >> Yahoo!
^https?:\/\/m\.yap\.yahoo\.com\/v18\/getAds\.do - reject

# >> Yingshi Cloud Video
^https?:\/\/i\.ys7\.com\/api\/ads - reject

# >> YOUKU
^https?:\/\/.+\.mp4\?ccode=0902 - reject
^https?:\/\/.+\.mp4\?sid= - reject

# >> Youtube++
^https?:\/\/api\.catch\.gift\/api\/v\d\/pagead\/ - reject

# >> Yundongshijie
^https?:\/\/.+\.iydsj\.com\/api\/.+\/ad - reject

# >> YYeTs
^https?:\/\/ctrl\.(playcvn|zmzapi)\.(com|net)\/app\/(ads|init) - reject

# >> Zhiboba
^https?:\/\/a\.qiumibao\.com\/activities\/config\.php - reject
^https?:\/\/.+\/allOne\.php\?ad_name - reject

# >> Zhihu
^https?:\/\/api\.zhihu\.com\/launch - reject
^https?:\/\/api\.zhihu\.com\/real_time_launch - reject
^https?:\/\/www\.zhihu\.com\/api\/v\d\/community-ad\/ - reject

# >> Zhuishushenqi
^https?:\/\/(api|b)\.zhuishushenqi\.com\/advert - reject
^https?:\/\/api01pbmp\.zhuishushenqi\.com\/gameAdvert - reject
^https?:\/\/api\.zhuishushenqi\.com\/notification\/shelfMessage - reject
^https?:\/\/api\.zhuishushenqi\.com\/notification\/shelfMessage - reject
^https?:\/\/api\.zhuishushenqi\.com\/recommend - reject
^https?:\/\/api\.zhuishushenqi\.com\/splashes\/ios - reject
^https?:\/\/api\.zhuishushenqi\.com\/user\/bookshelf-updated - reject
^https?:\/\/b\.zhuishushenqi\.com\/advert - reject
^https?:\/\/dspsdk\.abreader\.com\/v\d\/api\/ad\? - reject
^https?:\/\/itunes\.apple\.com\/lookup\?id=575826903 - reject
^https?:\/\/mi\.gdt\.qq\.com\/gdt_mview\.fcg - reject

[Script]
http-response ^https?:\/\/(api|mapi)\.weibo\.(cn|com)\/2(\/groups\/timeline|\/statuses\/unread|\/statuses\/extend|\/comments\/build_comments|\/photo\/recommend_list|\/stories\/video_stream|\/statuses\/positives\/get|\/stories\/home_list|\/profile\/statuses|\/statuses\/friends\/timeline|\/service\/picfeed) requires-body=true,script-path=https://ruleset.dev/wb_ad,script-update-interval=86400
http-response ^https?:\/\/(sdk|wb)app\.uve\.weibo\.com(\/interface\/sdk\/sdkad.php|\/wbapplua\/wbpullad.lua) requires-body=true,script-path=https://ruleset.dev/wb_launch,script-update-interval=86400

http-response ^https://[\s\S]*\/aweme/v1/(feed|aweme/post|follow/feed)/ requires-body=1,script-update-interval=0,script-update-interval=86400,script-path=https://ruleset.dev/Aweme

http-response ^https:\/\/api\.rr\.tv[\s\S]*(channel|Feed|Choice|profile|Medal) max-size=524288,requires-body=true,script-path=https://ruleset.dev/RRad,script-update-interval=86400

# Onewayticket255
http-response https://api.zhihu.com/moments\?(action|feed_type) requires-body=1,max-size=0,script-path=https://ruleset.dev/zhihu_feed,script-update-interval=86400
http-response https://api.zhihu.com/topstory/recommend requires-body=1,max-size=0,script-path=https://ruleset.dev/zhihu_recommend,script-update-interval=86400
http-response https://api.zhihu.com/.*/questions requires-body=1,max-size=0,script-path=https://ruleset.dev/zhihu_answer,script-update-interval=86400
http-response https://api.zhihu.com/market/header requires-body=1,max-size=0,script-path=https://ruleset.dev/zhihu_market,script-update-interval=86400
http-response https://api.zhihu.com/people/ requires-body=1,max-size=0,script-path=https://ruleset.dev/surge3_zhihu_people,script-update-interval=86400

http-response https://app.bilibili.com/x/v2/rank requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_rank,script-update-interval=86400
http-response https://app.bilibili.com/x/v2/space\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_space,script-update-interval=86400
http-response https://app.bilibili.com/x/resource/show/tab\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_tab,script-update-interval=86400
http-response https://app.bilibili.com/x/v2/feed/index\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_feed,script-update-interval=86400
http-response https://app.bilibili.com/x/v2/account/mine\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_account,script-update-interval=86400
http-response https://app.bilibili.com/x/v2/view\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_relate,script-update-interval=86400
http-response https://app.bilibili.com/x/v2/show/popular/index\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_hot,script-update-interval=86400
http-response https://api.bilibili.com/x/v2/reply/main\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_reply,script-update-interval=86400
http-response https://api.live.bilibili.com/xlive/app-room/v1/index/getInfoByRoom\?access_key requires-body=1,max-size=0,script-path=https://ruleset.dev/bilibili_live,script-update-interval=86400

# 微博去广告
http-response ^https?://(sdk|wb)app\.uve\.weibo\.com(/interface/sdk/sdkad.php|/wbapplua/wbpullad.lua) requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/wb_launch.js
http-response ^https?://m?api\.weibo\.c(n|om)/2/(statuses/(unread|extend|positives/get|(friends|video)(/|_)(mix)?timeline)|stories/(video_stream|home_list)|(groups|fangle)/timeline|profile/statuses|comments/build_comments|photo/recommend_list|service/picfeed|searchall|cardlist|page|!/photos/pic_recommend_status) requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/wb_ad.js

# Netflix评分
http-request ^https?://ios\.prod\.ftl\.netflix\.com/iosui/user/.+path=%5B%22videos%22%2C%\d+%22%2C%22summary%22%5D script-path=https://raw.githubusercontent.com/yichahucha/surge/master/nf_rating.js
http-response ^https?://ios\.prod\.ftl\.netflix\.com/iosui/user/.+path=%5B%22videos%22%2C%\d+%22%2C%22summary%22%5D requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/nf_rating.js

# JD历史价格
http-response ^https?://api\.m\.jd\.com/client\.action\?functionId=(wareBusiness|serverConfig) requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/jd_price.js

# 淘宝历史价格
http-request ^http://.+/amdc/mobileDispatch requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/tb_price.js
http-response ^https?://trade-acs\.m\.taobao\.com/gw/mtop\.taobao\.detail\.getdetail requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/tb_price.js

# Keep收费课程
http-response https:\/\/api\.gotokeep\.com\/(.+\/subject|.+\/dynamic) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Keep.js

[MITM]
enable = false
tcp-connection = false
skip-server-cert-verify = true
hostname = *.abema.tv, *.amemv.com, *.chelaile.net.cn, *.didistatic.com, *.google-analytics.com, *.googlevideo.com, *.iydsj.com, *.k.sohu.com, *.kfc.com, *.kingsoft-office-service.com, *.meituan.net, *.ofo.com, *.pixiv.net, *.pstatp.com, *.rixcloudservice.com, *.snssdk.com, *.uve.weibo.com, *.wikipedia.org, *.wikiwand.com, *.ydstatic.com, *.youdao.com, *.youtube.com, *.zhuishushenqi.com, 119.18.193.135, 123.59.31.1, 153.3.236.81, 180.101.212.22, 218.11.3.70, 59.151.53.6, a.apicloud.com, a.applovin.com, a.qiumibao.com, a.sfansclub.com, a.wkanx.com, abema.tv, acs.m.taobao.com, act.vip.iqiyi.com, adse.ximalaya.com, api*.amemv.com, api*.musical.ly, api*.tiktokv.com, api-release.wuta-cam.com, api.abema.io, api.bilibili.com, api.daydaycook.com.cn, api.gotokeep.com, api.intsig.net, api.jr.mi.com, api.jxedt.com, api.kkmh.com, api.m.jd.com, api.mgzf.com, api.psy-1.com, api.rr.tv, api.smzdm.com, api.tv.sohu.com, api.wallstreetcn.com, api.weibo.cn, api.xiachufang.com, api.zhihu.com, api.zhuishushenqi.com, api5.futunn.com, app.10086.cn, app.58.com, app.api.ke.com, app.bilibili.com, app.mixcapp.com, app.variflight.com, app.wy.guahao.com, b.zhuishushenqi.com, c.m.163.com, cap.caocaokeji.cn, capi.mwee.cn, cdn.moji.com, channel.beitaichufang.com, client.mail.163.com, cms.daydaycook.com.cn, dspsdk.abreader.com, fdfs.xmcdn.com, gateway.shouqiev.com, gw-passenger.01zhuanche.com, gw.alicdn.com, huichuan.sm.cn, i.weread.qq.com, i.ys7.com, iapi.bishijie.com, iface.iqiyi.com, img*.doubanio.com, img.jiemian.com, interface.music.163.com, ios.wps.cn, m*.amap.com, m.client.10010.com, m.creditcard.ecitic.com, m.ibuscloud.com, m.yap.yahoo.com, mapi.mafengwo.cn, mapi.weibo.com, media.qyer.com, mi.gdt.qq.com, mob.mddcloud.com.cn, mobile-api2011.elong.com, mp.weixin.qq.com, mrobot.pcauto.com.cn, mrobot.pconline.com.cn, ms.jr.jd.com, msspjh.emarbox.com, newsso.map.qq.com, nnapp.cloudbae.cn, open.qyer.com, portal-xunyou.qingcdn.com, pss.txffp.com, r.inews.qq.com, render.alipay.com, res-release.wuta-cam.com, richmanapi.jxedt.com, service.4gtv.tv, smkmp.96225.com, snailsleep.net, sp.kaola.com, ssl.kohsocialapp.qq.com, static.vuevideo.net, static1.keepcdn.com, support.you.163.com, thor.weidian.com, www.dandanzan.com, www.flyertea.com, www.zhihu.com, youtubei.googleapis.com, zhidao.baidu.com, *.music.163.com, *.music.126.net, music.163.com, music.126.net, api.weibo.cn, mapi.weibo.com, *.uve.weibo.com, ios.prod.ftl.netflix.com, api.m.jd.com, trade-acs.m.taobao.com, api.gotokeep.com
ca-passphrase = rixCloudPKI
ca-p12 = MIIEWgIBAzCCBCAGCSqGSIb3DQEHAaCCBBEEggQNMIIECTCCAv8GCSqGSIb3DQEHBqCCAvAwggLsAgEAMIIC5QYJKoZIhvcNAQcBMBwGCiqGSIb3DQEMAQYwDgQIEbxT6Tq17dsCAggAgIICuCzGa3ovYwnv6OIzJLkSKyAFypSmJ8KTBPyai2s1heOTIf3PoC0aSml1Q0blJ2R9tAEJMS3SoM4PjNK6q6nGycAgx1dIUFEQG7DEQebVP0XHHK6uNyRPqgXPrhCXjqZSOLhpcsg4BfLRjf0S0fquZySAi7kn5IXUo1fUey2r/36UkT8imBHPsUSsllryK5dXBQAwJtPYGl7nV50F/LA58ckv5pT+gDS4vVvUAytPfoqTDPCUEMzrZkXu7ZP/6YP+DeUgLXFvEubSkmrEeztJoC2GozClPNtRHfbMzA/jTH1/lOZ1zDdvrNheDLgP8CBv/mawNy4dxrJozfOcdEiWdLAMp8PmcXvaY9sNVlYYP+ztIMA/oaIHEycsOvx1PxMU2i8s/SIZBDszdHgRqKC6fVJxcrv0qtYdUlmfGKWt85LeB7JPXlmfs6ovGrZuc9y2WNnq2cbPmZuKbdxB5j/oM8jA6fLO9Z1MZDEXo42CgU7ZONjK8/bLG5J3wlI4DnC6HYwk3hSUWRBFpjNkRlUhZZWwMsfjBmYG9/hvDF7aGCeBDwm/euWLz9lGuUqRs5F11YhRL2dhOHC2mB4fhsSGbsgOps15fsuUydheYbU12hkGfYQSNsVi0d1GiGIsdiEtrYhXAWnY6DfGPERbhYvwlPSUAvdgWltC/BYgVMM//y3PwCVhcjEfYOK6k3ZNLuIc4Nebk2FPI7u0eXCk0Pi/RiSlOiBO79B2jpEdpyQbEDYAvetEsmaU6M8SZMMHnupNET/Sy+LlpFhRDSRcQndHpBkw166rM+6H3IHewJyYZBNvesltVBuSGtmJx57QI63CgCTUiu/UmWlHKmGuK5pHbMJlkREWJnVYqT3WIoB7MCX19bhLWxfbcLO+pipr8jrrjUF0skOLwg7HxnqHDk6oLyN4eLgn3Kr70zCCAQIGCSqGSIb3DQEHAaCB9ASB8TCB7jCB6wYLKoZIhvcNAQwKAQKggbQwgbEwHAYKKoZIhvcNAQwBAzAOBAgCgEDjD1kMngICCAAEgZCwn6xW0rtwHctlMsJw20caSgWcFTLcNBTgISSri2XLMeJfvygcgFbO7/zT64stk1tVZRktjAX/fELsFp4Xw/UspdVG6CgsRE7QcY+CT8wn6dvusvU2mv3KpI7NwrXmUMsKNbW5N8Qh37WYTCg5mvA7jFAazC+RnKgoMvMVnQbuT1CMJ3in7lPIsPTW3ub0188xJTAjBgkqhkiG9w0BCRUxFgQU8ZGlcfqIeitY4nkiNU7TX5gEi6MwMTAhMAkGBSsOAwIaBQAEFCBiCE2z1g+P8yPQTFy79/Pahq/lBAixZy/UGOLmVQICCAA=
