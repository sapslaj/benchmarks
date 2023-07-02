# http-get-hello-world

A server that returns `hello world` as an HTTP 200 response.

## Results

### `go`

```
     ✓ is status 200
     ✓ verify homepage text

     checks.........................: 100.00%  ✓ 32037394     ✗ 0
     data_received..................: 2.1 GB   6.9 MB/s
     data_sent......................: 1.3 GB   4.3 MB/s
     http_req_blocked...............: avg=47.02µs  min=571ns    med=2.27µs   max=510.77ms p(90)=3.28µs   p(95)=4.02µs
     http_req_connecting............: avg=42.56µs  min=0s       med=0s       max=503.82ms p(90)=0s       p(95)=0s
     http_req_duration..............: avg=45.5ms   min=34.49µs  med=22.58ms  max=4.95s    p(90)=116.59ms p(95)=160.21ms
       { expected_response:true }...: avg=45.5ms   min=34.49µs  med=22.58ms  max=4.95s    p(90)=116.59ms p(95)=160.21ms
     http_req_failed................: 0.00%    ✓ 0            ✗ 16018697
     http_req_receiving.............: avg=207.07µs min=4µs      med=13.55µs  max=3.34s    p(90)=33.97µs  p(95)=243.87µs
     http_req_sending...............: avg=1.26ms   min=2.78µs   med=8.12µs   max=4.89s    p(90)=3.12ms   p(95)=7.4ms
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=44.03ms  min=22.54µs  med=21.15ms  max=571.65ms p(90)=112.9ms  p(95)=155.92ms
     http_reqs......................: 16018697 53371.640558/s
     iteration_duration.............: avg=172.88ms min=100.07ms med=147.47ms max=5.52s    p(90)=273.94ms p(95)=330.01ms
     iterations.....................: 16018697 53371.640558/s
     vus............................: 16694    min=4          max=19936
     vus_max........................: 20000    min=20000      max=20000


running (5m00.1s), 00000/20000 VUs, 16018697 complete and 0 interrupted iterations
default ✓ [======================================] 00000/20000 VUs  5m0s
```

### `nginx`

```
     ✗ is status 200
      ↳  99% — ✓ 14134192 / ✗ 15120
     ✗ verify homepage text
      ↳  99% — ✓ 14134192 / ✗ 15120

     checks.........................: 99.89%   ✓ 28268384     ✗ 30240
     data_received..................: 2.5 GB   8.1 MB/s
     data_sent......................: 1.1 GB   3.8 MB/s
     http_req_blocked...............: avg=4.32ms   min=551ns    med=2.15µs  max=784.28ms p(90)=3.12µs   p(95)=3.86µs
     http_req_connecting............: avg=1.08ms   min=0s       med=0s      max=729.47ms p(90)=0s       p(95)=0s
     http_req_duration..............: avg=87.54ms  min=0s       med=46.12ms max=1m0s     p(90)=186.21ms p(95)=250.92ms
       { expected_response:true }...: avg=85.99ms  min=50.26µs  med=46.07ms max=33.04s   p(90)=185.69ms p(95)=249.43ms
     http_req_failed................: 0.10%    ✓ 15120        ✗ 14134192
     http_req_receiving.............: avg=111.11µs min=0s       med=14.65µs max=431.24ms p(90)=26.17µs  p(95)=118.06µs
     http_req_sending...............: avg=6.35ms   min=0s       med=7.47µs  max=1.25s    p(90)=303.41µs p(95)=1.62ms
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s      max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=81.07ms  min=0s       med=45.54ms max=59.98s   p(90)=184.21ms p(95)=243.95ms
     http_reqs......................: 14149312 46554.562817/s
     iteration_duration.............: avg=205.28ms min=100.09ms med=153.4ms max=1m0s     p(90)=320.94ms p(95)=459.07ms
     iterations.....................: 14149312 46554.562817/s
     vus............................: 259      min=6          max=19936
     vus_max........................: 20000    min=20000      max=20000


running (5m03.9s), 00000/20000 VUs, 14149312 complete and 0 interrupted iterations
default ✓ [======================================] 00000/20000 VUs  5m0s
```

Notes:

- seems to max out at ~18k
- `2023/07/01 23:54:50 [warn] 31#31: 1024 worker_connections are not enough, reusing connections`
- test was run in Docker and I suspect that might have skewed the results
