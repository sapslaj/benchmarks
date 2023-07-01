#!/bin/bash
nerdctl run -it --rm -p 8080:8080 -v $(pwd)/nginx.conf:/etc/nginx/conf.d/default.conf nginx
