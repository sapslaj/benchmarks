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
      ↳  99% — ✓ 17948654 / ✗ 3353
     ✗ verify homepage text
      ↳  99% — ✓ 17948654 / ✗ 3353

     checks.........................: 99.98%   ✓ 35897308     ✗ 6706
     data_received..................: 3.8 GB   11 MB/s
     data_sent......................: 1.4 GB   4.4 MB/s
     http_req_blocked...............: avg=3.24ms   min=0s       med=2.31µs  max=15.84s p(90)=3.38µs   p(95)=4.24µs
     http_req_connecting............: avg=3.22ms   min=0s       med=0s      max=15.84s p(90)=0s       p(95)=0s
     http_req_duration..............: avg=38.04ms  min=0s       med=14.01ms max=58.99s p(90)=99.69ms  p(95)=139.37ms
       { expected_response:true }...: avg=37.87ms  min=26.82µs  med=14.02ms max=27.78s p(90)=99.69ms  p(95)=139.37ms
     http_req_failed................: 0.01%    ✓ 3353         ✗ 17948654
     http_req_receiving.............: avg=264.72µs min=0s       med=14.63µs max=2.39s  p(90)=72.65µs  p(95)=995.7µs
     http_req_sending...............: avg=1.3ms    min=0s       med=8.4µs   max=2.05s  p(90)=4ms      p(95)=7.62ms
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s      max=0s     p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=36.47ms  min=0s       med=12.16ms max=58.99s p(90)=94.35ms  p(95)=135.4ms
     http_reqs......................: 17952007 54397.295684/s
     iteration_duration.............: avg=162.51ms min=100.06ms med=128.8ms max=1m0s   p(90)=232.07ms p(95)=270.09ms
     iterations.....................: 17952007 54397.295684/s
     vus............................: 1103     min=10         max=19942
     vus_max........................: 20000    min=20000      max=20000


running (5m30.0s), 00000/20000 VUs, 17952007 complete and 701 interrupted iterations
default ✓ [======================================] 00702/20000 VUs  5m0s
```

Notes:

- seems to max out at ~18k
- `2023/07/01 23:54:50 [warn] 31#31: 1024 worker_connections are not enough, reusing connections`

### `node-express`

```
     ✓ is status 200
     ✓ verify homepage text

     checks.........................: 100.00% ✓ 4242794     ✗ 0
     data_received..................: 507 MB  1.7 MB/s
     data_sent......................: 170 MB  560 kB/s
     http_req_blocked...............: avg=8.11µs  min=631ns    med=1.58µs  max=59.61ms p(90)=2.42µs  p(95)=2.73µs
     http_req_connecting............: avg=6.11µs  min=0s       med=0s      max=59.57ms p(90)=0s      p(95)=0s
     http_req_duration..............: avg=1.32s   min=101.65µs med=1.32s   max=11.79s  p(90)=2.39s   p(95)=2.57s
       { expected_response:true }...: avg=1.32s   min=101.65µs med=1.32s   max=11.79s  p(90)=2.39s   p(95)=2.57s
     http_req_failed................: 0.00%   ✓ 0           ✗ 2121397
     http_req_receiving.............: avg=14.83µs min=6.02µs   med=13.87µs max=5.53ms  p(90)=18.63µs p(95)=22.36µs
     http_req_sending...............: avg=6.3µs   min=3µs      med=5.45µs  max=2.26ms  p(90)=8.13µs  p(95)=8.99µs
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s      p(90)=0s      p(95)=0s
     http_req_waiting...............: avg=1.32s   min=87.79µs  med=1.32s   max=11.79s  p(90)=2.39s   p(95)=2.57s
     http_reqs......................: 2121397 7004.277412/s
     iteration_duration.............: avg=1.42s   min=100.14ms med=1.42s   max=11.89s  p(90)=2.49s   p(95)=2.67s
     iterations.....................: 2121397 7004.277412/s
     vus............................: 5859    min=5         max=19938
     vus_max........................: 20000   min=20000     max=20000


running (5m02.9s), 00000/20000 VUs, 2121397 complete and 0 interrupted iterations
default ✓ [======================================] 00000/20000 VUs  5m0s
```
