Httrack in Docker

Run the image:
```
docker run -it \
    -v /path/for/save:/app \
    -e HTTRACK_URI=http://example.com \
    ralfbs/httrack:latest
```