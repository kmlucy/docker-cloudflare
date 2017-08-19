# docker-cloudflare-arm32v6

To run:
```
docker run --rm -v /opt/cloudflare:/config kmlucy/docker-cloudflare-arm32v6
```

On the first run, the script will create a example config file in the host volume. Modify it's contents, and on subsequent runs your IP will be updated.

Based on [nouchka/docker-cloudflare-dyndns](https://github.com/nouchka/docker-cloudflare-dyndns) and [rasmusbe/cloudflare-update-record.sh](https://gist.github.com/rasmusbe/fc2e270095f1a3b41348)
