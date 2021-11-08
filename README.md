# docker-dogecoin
[![license](https://img.shields.io/github/license/pabloromeo/docker-dogecoin.svg)](https://github.com/pabloromeo/docker-dogecoin/blob/master/LICENSE)

Dockerized Dogecoin Daemon

Multi-arch builds for **linux/amd64** and **linux/arm/v7**


https://dogecoin.com/

https://github.com/dogecoin/dogecoin/releases

| Version | Tag |
|-----|-------|
| `1.14.5` | ghcr.io/pabloromeo/dogecoin:v1.14.5 |
| `1.14.4` | ghcr.io/pabloromeo/dogecoin:v1.14.4 |
| `1.14.3` | ghcr.io/pabloromeo/dogecoin:v1.14.3 |

### Docker Compose:
```yaml
version: '3.4'

services:
  dogenode:
    image: ghcr.io/pabloromeo/dogecoin:v1.14.5
    volumes:
      - /yourpath:/data
    ports:
      - "22556:22556/tcp"
      - "22556:22556/udp"
```