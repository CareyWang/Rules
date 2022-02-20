port: {{ global.clash.http_port }}
socks-port: {{ global.clash.socks_port }}
allow-lan: {{ global.clash.allow_lan }}
mode: Rule
log-level: {{ global.clash.log_level }}
external-controller: :9090
{% if exists("request.clash.doh") %}
{% if request.clash.doh == "true" %}
dns:
  enable: true
  enhanced-mode: fake-ip
  listen: 0.0.0.0:53
  nameserver:
    - https://doh.pub/dns-query
    - https://rubyfish.cn/dns-query
    - https://223.6.6.6/dns-query
  fallback:
    - https://dns.google/dns-query
    - https://dns.cloudflare.com/dns-query
    - https://doh.dns.sb/dns-query
    - tls://1dot1dot1dot1.cloudflare-dns.com
  fake-ip-filter:
    - 'dns.msftncsi.com'
    - 'www.msftncsi.com'
    - 'www.msftconnecttest.com'
{% endif %}
{% endif %}

proxies: ~
proxy-groups: ~
rules: ~
