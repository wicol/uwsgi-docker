# uWSGI in Docker

This is mainly for running Python (3) stuff, but I guess whatever would work.

Files and stuff to create:
* `uwsgi.ini` - Your uWSGI config
* `apk_requirements.txt` - Optional - Any Alpine packages you might need
* `requirements.txt`- Optional - Any Python modules you might need
* `wheels/` - Optional - Put wheels here if you want

## Run it

```
$ docker run -d \
    --name uwsgi \
    --restart always \
    -v $PWD/:/srv/app \
    -p 8000:8000 \
    wicol/uwsgi
```

