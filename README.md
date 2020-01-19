# docker-xmr
[![xmr](http://dockeri.co/image/snowdream/xmr)](https://hub.docker.com/r/snowdream/xmr)

docker images for xmr、monero

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

## Donate

My Monero Wallet Address:

46PtMFqfymhcHchS7vwjwoMm9v8jyvK6xMZKygZh8nk3LLoRg4jq7sKa9c22bXvfQ8KWogR1DETzVTsAuGffjaBtHVPZ4gs

## Reference

1. [monero](https://web.getmonero.org/)
1. [c3pool](https://c3pool.com/#/dashboard)
1. [profit-switching-miner](https://github.com/C3Pool/profit-switching-miner)
1. [cpulimit](https://github.com/opsengine/cpulimit/)