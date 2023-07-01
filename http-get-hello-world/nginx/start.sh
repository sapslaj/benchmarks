#!/bin/bash
if command -v nerdctl &>/dev/null ; then
  nerdctl run -it --rm -p 8080:8080 -v $(pwd)/nginx.conf:/etc/nginx/conf.d/default.conf nginx
elif command -v docker &>/dev/null ; then
  docker run -it --rm -p 8080:8080 -v $(pwd)/nginx.conf:/etc/nginx/conf.d/default.conf nginx
else
  echo 'no supported way to run'
  exit 1
fi
