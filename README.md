# docker-xmr
[![xmr](http://dockeri.co/image/snowdream/xmr)](https://hub.docker.com/r/snowdream/xmr)

docker images for xmr、monero


## Install Docker

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

systemctl start docker 
systemctl enable docker
```

## Usage
1. Copy [config.json](https://github.com/snowdream/docker-xmr/blob/master/config.json) to /etc/xmrig/config.json.

2. Edit /etc/xmrig/config.json.

```bash
            "url": "mine.c3pool.com:13333",
            "user": "YOUR_WALLET_ADDRESS",
            "pass": "rig01",
```

```bash
            "url": "mine.c3pool.com:13333",
            "user": "46PtMFqfymhcHchS7vwjwoMm9v8jyvK6xMZKygZh8nk3LLoRg4jq7sKa9c22bXvfQ8KWogR1DETzVTsAuGffjaBtHVPZ4gs",
            "pass": "rig01:rig01@gmail.com",
```

* url: xmr pool url
* user: YOUR_WALLET_ADDRESS
* pass: Worker_name:Email_address

3. Run the docker container xmr in your vps server.

```bash
docker run --restart=always --network host -d -v /etc/xmrig/config.json:/etc/xmrig/config.json --name xmr snowdream/xmr
```

The cpu usage is limited to 90% by default. If you want to change it,pass it with CPU_USAGE.[0 - 100]

```bash
docker run --restart=always --network host -d -v /etc/xmrig/config.json:/etc/xmrig/config.json -e CPU_USAGE=100 --name xmr snowdream/xmr
```

## View

```bash
docker logs -f xmr
```

Outputs：

```bash
# docker logs -f xmr
[2020-02-10 08:09:41.113] Ignoring wrong algo-perf name rx/v
 * ABOUT        C3XMRig/5.5.3-c3 gcc/7.4.0
 * LIBS         libuv/1.18.0 OpenSSL/1.1.1 hwloc/2.0.4
 * HUGE PAGES   supported
 * 1GB PAGES    disabled
 * CPU          Intel(R) Xeon(R) CPU E5-2650 0 @ 2.00GHz (2) x64 AES
                L2:0.0 MB L3:0.0 MB 4C/4T NUMA:1
 * MEMORY       1.9/5.0 GB (39%)
 * DONATE       0%
 * ASSEMBLY     auto:intel
 * POOL #1      mine.c3pool.com:13333 algo auto
 * COMMANDS     hashrate, pause, resume
 * OPENCL       disabled
 * CUDA         disabled
[2020-02-10 08:09:41.281]  net  use pool mine.c3pool.com:13333  35.163.175.186
[2020-02-10 08:09:41.281]  net  new job from mine.c3pool.com:13333 diff 7285 algo cn-heavy/tube height 531585
[2020-02-10 08:09:41.282]  cpu  use profile  cn-heavy  (1 thread) scratchpad 4096 KB
[2020-02-10 08:09:41.392]  cpu  READY threads 1/1 (1) huge pages 0% 0/2 memory 4096 KB (110 ms)
[2020-02-10 08:10:41.438] speed 10s/60s/15m 20.8 n/a n/a H/s max 22.3 H/s
[2020-02-10 08:11:41.666] speed 10s/60s/15m 21.1 20.9 n/a H/s max 22.3 H/s
[2020-02-10 08:12:20.615]  net  new job from mine.c3pool.com:13333 diff 7054 algo cn-heavy/tube height 531586
[2020-02-10 08:12:24.969]  net  new job from mine.c3pool.com:13333 diff 7054 algo cn-heavy/tube height 531587
[2020-02-10 08:12:41.891] speed 10s/60s/15m 21.4 21.4 n/a H/s max 22.3 H/s
[2020-02-10 08:12:45.204]  net  new job from mine.c3pool.com:13333 diff 4602 algo cn-heavy/tube height 531587
[2020-02-10 08:13:42.116] speed 10s/60s/15m 20.5 21.3 n/a H/s max 22.3 H/s
[2020-02-10 08:13:45.205]  net  new job from mine.c3pool.com:13333 diff 2263 algo cn-heavy/tube height 531587
[2020-02-10 08:14:42.336] speed 10s/60s/15m 15.1 16.1 n/a H/s max 22.3 H/s
[2020-02-10 08:14:45.209]  net  new job from mine.c3pool.com:13333 diff 893 algo cn-heavy/tube height 531587
[2020-02-10 08:14:46.008]  net  new job from mine.c3pool.com:13333 diff 893 algo cn-heavy/tube height 531588
[2020-02-10 08:15:21.468]  cpu  accepted (1/0) diff 893 (85 ms)
[2020-02-10 08:15:42.561] speed 10s/60s/15m 21.1 19.1 n/a H/s max 22.3 H/s
[2020-02-10 08:15:45.215]  net  new job from mine.c3pool.com:13333 diff 100 algo cn-heavy/tube height 531588
[2020-02-10 08:15:51.871]  cpu  accepted (2/0) diff 100 (56 ms)
[2020-02-10 08:15:57.848]  cpu  accepted (3/0) diff 100 (55 ms)
[2020-02-10 08:16:00.064]  cpu  accepted (4/0) diff 100 (55 ms)
[2020-02-10 08:16:12.483]  cpu  accepted (5/0) diff 100 (61 ms)
[2020-02-10 08:16:13.939]  cpu  accepted (6/0) diff 100 (55 ms)
[2020-02-10 08:16:16.260]  cpu  accepted (7/0) diff 100 (56 ms)
[2020-02-10 08:16:16.403]  cpu  accepted (8/0) diff 100 (56 ms)
[2020-02-10 08:16:22.960]  net  new job from mine.c3pool.com:13333 diff 100 algo cn-heavy/tube height 531589
[2020-02-10 08:16:26.959]  cpu  accepted (9/0) diff 100 (56 ms)
[2020-02-10 08:16:30.366]  cpu  accepted (10/0) diff 100 (55 ms)
[2020-02-10 08:16:30.745]  cpu  accepted (11/0) diff 100 (55 ms)
[2020-02-10 08:16:42.785] speed 10s/60s/15m 20.4 21.1 n/a H/s max 22.3 H/s
[2020-02-10 08:16:45.219]  net  new job from mine.c3pool.com:13333 diff 133 algo cn-heavy/tube height 531589
[2020-02-10 08:16:46.573]  cpu  accepted (12/0) diff 133 (55 ms)
[2020-02-10 08:16:47.009]  cpu  accepted (13/0) diff 133 (56 ms)
[2020-02-10 08:16:47.301]  cpu  accepted (14/0) diff 133 (55 ms)
[2020-02-10 08:16:48.485]  net  new job from mine.c3pool.com:13333 diff 133 algo cn-heavy/tube height 531590
[2020-02-10 08:16:49.636]  cpu  accepted (15/0) diff 133 (55 ms)
[2020-02-10 08:16:56.060]  cpu  accepted (16/0) diff 133 (55 ms)
[2020-02-10 08:16:59.175]  cpu  accepted (17/0) diff 133 (56 ms)
[2020-02-10 08:17:13.418]  cpu  accepted (18/0) diff 133 (56 ms)
[2020-02-10 08:17:18.644]  cpu  accepted (19/0) diff 133 (56 ms)
[2020-02-10 08:17:21.846]  cpu  accepted (20/0) diff 133 (56 ms)
[2020-02-10 08:17:23.388]  cpu  accepted (21/0) diff 133 (55 ms)
[2020-02-10 08:17:24.632]  cpu  accepted (22/0) diff 133 (60 ms)
[2020-02-10 08:17:29.834]  cpu  accepted (23/0) diff 133 (56 ms)
[2020-02-10 08:17:34.464]  cpu  accepted (24/0) diff 133 (59 ms)
[2020-02-10 08:17:42.993] speed 10s/60s/15m 21.4 21.7 n/a H/s max 22.4 H/s
[2020-02-10 08:17:45.223]  net  new job from mine.c3pool.com:13333 diff 224 algo cn-heavy/tube height 531590
[2020-02-10 08:17:53.303]  cpu  accepted (25/0) diff 224 (55 ms)
[2020-02-10 08:17:54.775]  cpu  accepted (26/0) diff 224 (56 ms)
[2020-02-10 08:17:55.779]  net  new job from mine.c3pool.com:13333 diff 224 algo cn-heavy/tube height 531591
[2020-02-10 08:18:00.000]  cpu  accepted (27/0) diff 224 (86 ms)
[2020-02-10 08:18:04.245]  cpu  accepted (28/0) diff 224 (56 ms)
```

## Donate

My Monero Wallet Address:

46PtMFqfymhcHchS7vwjwoMm9v8jyvK6xMZKygZh8nk3LLoRg4jq7sKa9c22bXvfQ8KWogR1DETzVTsAuGffjaBtHVPZ4gs

## Reference

1. [monero](https://web.getmonero.org/)
1. [c3pool](https://c3pool.com/#/dashboard)
1. [profit-switching-miner](https://github.com/C3Pool/profit-switching-miner)
1. [cpulimit](https://github.com/opsengine/cpulimit/)