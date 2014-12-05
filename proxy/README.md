build

```
> sh build.sh
```

/etc/shadowsocks.json
```javascript
{
    "server":"192.168.59.105",
    "server_port":8388,
    "local_address": "127.0.0.1",
    "local_port":1234,
    "password":"password",
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false,
    "workers": 1
}
```
把 server 和 server\_port 改成对应的 server 端 ip 和端口。local\_port 保持不要变，privoxy 配置写死了转发到1234端口

run
```
docker run -d -p 0.0.0.0:3128:3128 -v /etc/shadowsocks.json:/etc/shadowsocks.json squid-privoxy-shadowsocks
```

对于 boot2docker 需要把 /etc/shadowsocks.json 放到 boot2docker 的 vm 机器上

