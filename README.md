# docker-cloudflare

There are two ways of running this image. The default is to run it demand:
```
docker run --rm -v /opt/cloudflare:/config kmlucy/docker-cloudflare
```

You can also run it as a daemon:
```
docker run -d --rm --name cloudflare \
	-v /opt/cloudflare:/config \
	-e RUN_AS_DAEMON=1 \
	-e DAEMON_SLEEP_TIME=600 \
	kmlucy/docker-cloudflare
```

The default sleep time is 600 seconds.

On the first run, run it as per the on demand example, and the script will create a example config file in the host volume. Modify it's contents, and on subsequent runs your IP will be updated.

Based on [nouchka/docker-cloudflare-dyndns](https://github.com/nouchka/docker-cloudflare-dyndns) and [rasmusbe/cloudflare-update-record.sh](https://gist.github.com/rasmusbe/fc2e270095f1a3b41348)
