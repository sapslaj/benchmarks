# http-get-hello-world

A server that returns `hello world` as an HTTP 200 response.

## Results

### `crystal`

```
     ✓ is status 200
     ✓ verify homepage text

     checks.........................: 100.00% ✓ 11918236     ✗ 0
     data_received..................: 602 MB  2.0 MB/s
     data_sent......................: 477 MB  1.6 MB/s
     http_req_blocked...............: avg=4.63µs   min=551ns    med=1.89µs   max=116.39ms p(90)=2.51µs   p(95)=2.78µs
     http_req_connecting............: avg=2.49µs   min=0s       med=0s       max=51.79ms  p(90)=0s       p(95)=0s
     http_req_duration..............: avg=404.68ms min=48.05µs  med=392.48ms max=1.53s    p(90)=787.96ms p(95)=862.07ms
       { expected_response:true }...: avg=404.68ms min=48.05µs  med=392.48ms max=1.53s    p(90)=787.96ms p(95)=862.07ms
     http_req_failed................: 0.00%   ✓ 0            ✗ 5959118
     http_req_receiving.............: avg=13.64µs  min=4.44µs   med=10.06µs  max=69.39ms  p(90)=15.97µs  p(95)=18.27µs
     http_req_sending...............: avg=28.9µs   min=2.7µs    med=6.63µs   max=78.93ms  p(90)=12.45µs  p(95)=26.28µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=404.64ms min=32.36µs  med=392.45ms max=1.53s    p(90)=787.93ms p(95)=862.04ms
     http_reqs......................: 5959118 19798.464501/s
     iteration_duration.............: avg=505.1ms  min=100.08ms med=492.96ms max=1.63s    p(90)=888.66ms p(95)=962.64ms
     iterations.....................: 5959118 19798.464501/s
     vus............................: 18424   min=3          max=19935
     vus_max........................: 20000   min=20000      max=20000


running (5m01.0s), 00000/20000 VUs, 5959118 complete and 0 interrupted iterations
default ✓ [======================================] 00000/20000 VUs  5m0s
```

### `elxir-phoenix`

```shell
$ elixir --version
Erlang/OTP 25 [erts-13.2.2] [source] [64-bit] [smp:16:16] [ds:16:16:10] [async-threads:1] [jit:ns]

Elixir 1.14.5 (compiled with Erlang/OTP 24)
```

```
     ✗ is status 200
      ↳  99% — ✓ 6113863 / ✗ 4007
     ✗ verify homepage text
      ↳  99% — ✓ 6113863 / ✗ 4007

     checks.........................: 99.93%  ✓ 12227726     ✗ 8014
     data_received..................: 1.4 GB  4.3 MB/s
     data_sent......................: 489 MB  1.5 MB/s
     http_req_blocked...............: avg=10.26µs  min=0s       med=2.1µs    max=263.06ms p(90)=2.94µs   p(95)=3.33µs
     http_req_connecting............: avg=6.91µs   min=0s       med=0s       max=262.94ms p(90)=0s       p(95)=0s
     http_req_duration..............: avg=378.2ms  min=0s       med=363.83ms max=59.99s   p(90)=608.08ms p(95)=656.82ms
       { expected_response:true }...: avg=368.39ms min=8.86ms   med=363.95ms max=1.1s     p(90)=608.02ms p(95)=656.57ms
     http_req_failed................: 0.06%   ✓ 4007         ✗ 6113863
     http_req_receiving.............: avg=66.37µs  min=0s       med=16.26µs  max=370.27ms p(90)=21.08µs  p(95)=23.39µs
     http_req_sending...............: avg=302.83µs min=0s       med=7.12µs   max=176.3ms  p(90)=123.27µs p(95)=921.25µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=377.83ms min=0s       med=363.49ms max=59.99s   p(90)=607.72ms p(95)=656.11ms
     http_reqs......................: 6117870 18539.036892/s
     iteration_duration.............: avg=499.99ms min=109.52ms med=470.57ms max=1m0s     p(90)=722.2ms  p(95)=777.97ms
     iterations.....................: 6117870 18539.036892/s
     vus............................: 112     min=10         max=19988
     vus_max........................: 20000   min=20000      max=20000


running (5m30.0s), 00000/20000 VUs, 6117870 complete and 0 interrupted iterations
default ✓ [======================================] 00000/20000 VUs  5m0s
```

- timeouts started at 18k

### `go`

```shell
$ go version
go version go1.20.4 linux/amd64
```

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

Running with host networking because Docker proxy overhead skews results

```
     ✗ is status 200
      ↳  99% — ✓ 12552785 / ✗ 2280
     ✗ verify homepage text
      ↳  99% — ✓ 12552785 / ✗ 2280

     checks.........................: 99.98%   ✓ 25105570     ✗ 4560
     data_received..................: 2.5 GB   8.0 MB/s
     data_sent......................: 1.0 GB   3.2 MB/s
     http_req_blocked...............: avg=8.81ms   min=0s       med=2.13µs   max=15.65s   p(90)=2.84µs   p(95)=3.22µs
     http_req_connecting............: avg=7.15ms   min=0s       med=0s       max=15.63s   p(90)=0s       p(95)=0s
     http_req_duration..............: avg=118.92ms min=0s       med=86.5ms   max=30.17s   p(90)=286.36ms p(95)=349.53ms
       { expected_response:true }...: avg=118.68ms min=30.16µs  med=86.51ms  max=20.12s   p(90)=286.35ms p(95)=349.47ms
     http_req_failed................: 0.01%    ✓ 2280         ✗ 12552785
     http_req_receiving.............: avg=115.99µs min=0s       med=14.04µs  max=631.95ms p(90)=23.86µs  p(95)=100.91µs
     http_req_sending...............: avg=2.5ms    min=0s       med=7.5µs    max=15.61s   p(90)=2.18ms   p(95)=4.59ms
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=116.29ms min=0s       med=85.58ms  max=30.17s   p(90)=284.91ms p(95)=346.98ms
     http_reqs......................: 12555065 39895.498043/s
     iteration_duration.............: avg=237.79ms min=100.07ms med=195.21ms max=30.68s   p(90)=399.6ms  p(95)=470.62ms
     iterations.....................: 12555065 39895.498043/s
     vus............................: 14       min=8          max=19940
     vus_max........................: 20000    min=20000      max=20000


running (5m14.7s), 00000/20000 VUs, 12555065 complete and 0 interrupted iterations
default ✓ [======================================] 00000/20000 VUs  5m0s
```

- timeouts at ~17k
- `2022/07/01 23:54:50 [warn] 31#31: 1024 worker_connections are not enough, reusing connections`

Run with `nginx` from Ubuntu repos (`1.18.0-6ubuntu14.3`):

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

### `kotlin-spring-boot`

```shell
$ java --version
openjdk 17.0.7 2023-04-18
OpenJDK Runtime Environment Temurin-17.0.7+7 (build 17.0.7+7)
OpenJDK 64-Bit Server VM Temurin-17.0.7+7 (build 17.0.7+7, mixed mode, sharing)
```

```
     ✗ is status 200
      ↳  99% — ✓ 7192911 / ✗ 33618
     ✗ verify homepage text
      ↳  99% — ✓ 7192911 / ✗ 33618

     checks.........................: 99.53%  ✓ 14385822     ✗ 67236
     data_received..................: 908 MB  2.8 MB/s
     data_sent......................: 576 MB  1.7 MB/s
     http_req_blocked...............: avg=8.3ms    min=0s      med=2.04µs   max=15.5s   p(90)=2.89µs   p(95)=3.22µs
     http_req_connecting............: avg=8.29ms   min=0s      med=0s       max=15.49s  p(90)=0s       p(95)=0s
     http_req_duration..............: avg=204.04ms min=0s      med=201.31ms max=1m0s    p(90)=231.12ms p(95)=292.59ms
       { expected_response:true }...: avg=177.37ms min=61.82µs med=201.44ms max=56.05s  p(90)=231.1ms  p(95)=290.2ms
     http_req_failed................: 0.46%   ✓ 33618        ✗ 7192911
     http_req_receiving.............: avg=18.95µs  min=0s      med=15.49µs  max=55.27ms p(90)=22.12µs  p(95)=27.05µs
     http_req_sending...............: avg=13.51µs  min=0s      med=6.82µs   max=55.65ms p(90)=10.2µs   p(95)=17.56µs
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s      p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=204ms    min=0s      med=201.29ms max=1m0s    p(90)=231.09ms p(95)=292.55ms
     http_reqs......................: 7226529 21896.990082/s
     iteration_duration.............: avg=434.68ms min=100.1ms med=301.76ms max=1m0s    p(90)=332.12ms p(95)=420.58ms
     iterations.....................: 7226529 21896.990082/s
     vus............................: 1789    min=5          max=19937
     vus_max........................: 20000   min=20000      max=20000


running (5m30.0s), 00000/20000 VUs, 7226529 complete and 1362 interrupted iterations
default ✓ [======================================] 01361/20000 VUs  5m0s
```

- starts timing out at 10k

### `node-express`

```shell
$ node --version
v16.20.0
```

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

### `php-slim`

```
     ✗ is status 200
      ↳  76% — ✓ 312842 / ✗ 98368
     ✗ verify homepage text
      ↳  76% — ✓ 312842 / ✗ 98368

     checks.........................: 76.07% ✓ 625684      ✗ 196736
     data_received..................: 170 MB 514 kB/s
     data_sent......................: 25 MB  77 kB/s
     http_req_blocked...............: avg=59.48ms  min=0s       med=2.66µs   max=15.5s  p(90)=3.7µs   p(95)=4.64µs
     http_req_connecting............: avg=59.48ms  min=0s       med=0s       max=15.5s  p(90)=0s      p(95)=0s
     http_req_duration..............: avg=952.72ms min=0s       med=21.79ms  max=1m0s   p(90)=87.68ms p(95)=105.15ms
       { expected_response:true }...: avg=530.26ms min=8.63ms   med=33.36ms  max=59.02s p(90)=91.74ms p(95)=106.27ms
     http_req_failed................: 23.92% ✓ 98368       ✗ 312842
     http_req_receiving.............: avg=29.73µs  min=0s       med=27.71µs  max=20.2ms p(90)=40.71µs p(95)=51.76µs
     http_req_sending...............: avg=10.45µs  min=0s       med=8.66µs   max=23.8ms p(90)=12.11µs p(95)=15.01µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s     p(90)=0s      p(95)=0s
     http_req_waiting...............: avg=952.68ms min=0s       med=21.74ms  max=1m0s   p(90)=87.63ms p(95)=105.1ms
     http_reqs......................: 411210 1246.011394/s
     iteration_duration.............: avg=7.96s    min=108.78ms med=152.59ms max=1m0s   p(90)=30s     p(95)=30s
     iterations.....................: 411210 1246.011394/s
     vus............................: 875    min=0         max=19994
     vus_max........................: 20000  min=20000     max=20000


running (5m30.0s), 00000/20000 VUs, 411210 complete and 876 interrupted iterations
default ✓ [======================================] 00875/20000 VUs  5m0s
```

- getting a "production-like" setup is such a gigantic fucking mess with PHP so there is a lot of overhead.
- starts timing out at ~2.3k

Running with built-in web server:

```
     ✗ is status 200
      ↳  90% — ✓ 539726 / ✗ 55493
     ✗ verify homepage text
      ↳  90% — ✓ 539726 / ✗ 55493

     checks.........................: 90.67% ✓ 1079452     ✗ 110986
     data_received..................: 293 MB 886 kB/s
     data_sent......................: 44 MB  132 kB/s
     http_req_blocked...............: avg=197.02ms min=0s       med=58.96µs max=15.49s p(90)=662.82µs p(95)=879.23µs
     http_req_connecting............: avg=197.01ms min=0s       med=41.37µs max=15.49s p(90)=646.92µs p(95)=861.18µs
     http_req_duration..............: avg=2.34s    min=0s       med=2.28s   max=1m0s   p(90)=2.39s    p(95)=2.44s
       { expected_response:true }...: avg=2.17s    min=551.68µs med=2.29s   max=59.66s p(90)=2.4s     p(95)=2.44s
     http_req_failed................: 9.32%  ✓ 55493       ✗ 539726
     http_req_receiving.............: avg=36.73µs  min=0s       med=39.16µs max=9.14ms p(90)=50.11µs  p(95)=53.17µs
     http_req_sending...............: avg=11.67µs  min=0s       med=10.73µs max=2.17ms p(90)=15.59µs  p(95)=18.47µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s      max=0s     p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=2.34s    min=0s       med=2.28s   max=1m0s   p(90)=2.39s    p(95)=2.44s
     http_reqs......................: 595219 1803.599503/s
     iteration_duration.............: avg=5.22s    min=100.65ms med=2.4s    max=1m0s   p(90)=16.27s   p(95)=30s
     iterations.....................: 595219 1803.599503/s
     vus............................: 4      min=4         max=19937
     vus_max........................: 20000  min=20000     max=20000


running (5m30.0s), 00000/20000 VUs, 595219 complete and 3 interrupted iterations
default ✓ [======================================] 00002/20000 VUs  5m0s
```

- starts timing out at ~6.3k

### `python-fastapi`

```shell
$ python --version
Python 3.10.1
```

```
     ✗ is status 200
      ↳  12% — ✓ 808455 / ✗ 5715640
     ✗ verify homepage text
      ↳  12% — ✓ 808455 / ✗ 5715640

     checks.........................: 12.39%  ✓ 1616910      ✗ 11431280
     data_received..................: 113 MB  377 kB/s
     data_sent......................: 520 MB  1.7 MB/s
     http_req_blocked...............: avg=55.8µs   min=551ns    med=52.36µs  max=39.4ms   p(90)=67.85µs  p(95)=75.29µs
     http_req_connecting............: avg=38.57µs  min=0s       med=34.62µs  max=39.37ms  p(90)=45.04µs  p(95)=49.63µs
     http_req_duration..............: avg=37.95ms  min=0s       med=2.81ms   max=543.04ms p(90)=218.7ms  p(95)=292.72ms
       { expected_response:true }...: avg=265.26ms min=223.8µs  med=278.16ms max=543.04ms p(90)=342.2ms  p(95)=370.33ms
     http_req_failed................: 87.60%  ✓ 5715640      ✗ 808455
     http_req_receiving.............: avg=2.19µs   min=0s       med=0s       max=10.81ms  p(90)=13.83µs  p(95)=17.19µs
     http_req_sending...............: avg=13.71µs  min=0s       med=10.67µs  max=15.65ms  p(90)=15.9µs   p(95)=20.53µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=37.93ms  min=0s       med=2.8ms    max=543.01ms p(90)=218.67ms p(95)=292.7ms
     http_reqs......................: 6524095 21712.840179/s
     iteration_duration.............: avg=271.63ms min=114.76µs med=190.68ms max=2.38s    p(90)=721.81ms p(95)=862.24ms
     iterations.....................: 6524095 21712.840179/s
     vus............................: 17809   min=4          max=19937
     vus_max........................: 20000   min=20000      max=20000


running (5m00.5s), 00000/20000 VUs, 6524095 complete and 0 interrupted iterations
default ✓ [======================================] 00000/20000 VUs  5m0s
```

- starts timing out at 1k (ulimit?)

Rerun with `gunicorn -b 127.0.0.1:8080 -w 16 -k uvicorn.workers.UvicornWorker main:app`:

```
     ✗ is status 200
      ↳  97% — ✓ 7358118 / ✗ 216206
     ✗ verify homepage text
      ↳  97% — ✓ 7358118 / ✗ 216206

     checks.........................: 97.14%  ✓ 14716236     ✗ 432412
     data_received..................: 1.0 GB  3.4 MB/s
     data_sent......................: 597 MB  2.0 MB/s
     http_req_blocked...............: avg=320.52µs min=601ns    med=2.36µs   max=1.93s    p(90)=3.46µs   p(95)=5.21µs
     http_req_connecting............: avg=302.61µs min=0s       med=0s       max=675.35ms p(90)=0s       p(95)=0s
     http_req_duration..............: avg=261.95ms min=0s       med=197.82ms max=2.94s    p(90)=612.93ms p(95)=748.82ms
       { expected_response:true }...: avg=269.58ms min=171.11µs med=206.37ms max=2.94s    p(90)=619.29ms p(95)=753.55ms
     http_req_failed................: 2.85%   ✓ 216206       ✗ 7358118
     http_req_receiving.............: avg=82.22µs  min=0s       med=16.22µs  max=2.28s    p(90)=25.43µs  p(95)=59.1µs
     http_req_sending...............: avg=261.57µs min=0s       med=7.83µs   max=2.12s    p(90)=42.01µs  p(95)=191.53µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=261.6ms  min=0s       med=197.48ms max=1.96s    p(90)=612.5ms  p(95)=748.33ms
     http_reqs......................: 7574324 25192.376485/s
     iteration_duration.............: avg=385.47ms min=162.9µs  med=319.97ms max=3.38s    p(90)=753.61ms p(95)=884.92ms
     iterations.....................: 7574324 25192.376485/s
     vus............................: 19875   min=6          max=19875
     vus_max........................: 20000   min=20000      max=20000


running (5m00.7s), 00000/20000 VUs, 7574324 complete and 0 interrupted iterations
default ✓ [======================================] 00000/20000 VUs  5m0s
```

- now timing out at 12k

```
     ✗ is status 200
      ↳  99% — ✓ 8050204 / ✗ 411
     ✗ verify homepage text
      ↳  99% — ✓ 8050204 / ✗ 411

     checks.........................: 99.99%  ✓ 16100408     ✗ 822
     data_received..................: 1.1 GB  3.8 MB/s
     data_sent......................: 644 MB  2.1 MB/s
     http_req_blocked...............: avg=64.36µs  min=641ns    med=2.36µs   max=813.11ms p(90)=3.3µs    p(95)=3.82µs
     http_req_connecting............: avg=58.75µs  min=0s       med=0s       max=813.01ms p(90)=0s       p(95)=0s
     http_req_duration..............: avg=234.57ms min=0s       med=161.25ms max=3.33s    p(90)=577.79ms p(95)=745.1ms
       { expected_response:true }...: avg=234.59ms min=170.45µs med=161.27ms max=3.33s    p(90)=577.79ms p(95)=745.11ms
     http_req_failed................: 0.00%   ✓ 411          ✗ 8050204
     http_req_receiving.............: avg=94.1µs   min=0s       med=16.18µs  max=2.84s    p(90)=25.42µs  p(95)=60.15µs
     http_req_sending...............: avg=329.88µs min=0s       med=7.9µs    max=1.74s    p(90)=35.57µs  p(95)=259.3µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=234.15ms min=0s       med=160.65ms max=1.98s    p(90)=577.33ms p(95)=744.61ms
     http_reqs......................: 8050615 26798.713878/s
     iteration_duration.............: avg=360.39ms min=5.99ms   med=288.91ms max=4.43s    p(90)=720.16ms p(95)=882.24ms
     iterations.....................: 8050615 26798.713878/s
     vus............................: 17778   min=5          max=19938
     vus_max........................: 20000   min=20000      max=20000


running (5m00.4s), 00000/20000 VUs, 8050615 complete and 0 interrupted iterations
default ✓ [======================================] 00000/20000 VUs  5m0s
```

- now timing out at 16k

### `ruby-sinatra`

```
$ ruby --version
ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x86_64-linux]
```

```
     ✗ is status 200
      ↳  14% — ✓ 16933 / ✗ 100655
     ✗ verify homepage text
      ↳  14% — ✓ 16933 / ✗ 100655

     checks.........................: 14.40% ✓ 33866      ✗ 201310
     data_received..................: 3.2 MB 9.6 kB/s
     data_sent......................: 1.9 MB 5.8 kB/s
     http_req_blocked...............: avg=127.96ms min=0s       med=0s      max=15.49s   p(90)=2.46µs   p(95)=129.48µs
     http_req_connecting............: avg=127.96ms min=0s       med=0s      max=15.49s   p(90)=0s       p(95)=86.7µs
     http_req_duration..............: avg=3.64s    min=0s       med=0s      max=1m0s     p(90)=557.29µs p(95)=55.92s
       { expected_response:true }...: avg=6.99s    min=185.11µs med=423.9µs max=1m0s     p(90)=52.82s   p(95)=58.8s
     http_req_failed................: 85.59% ✓ 100655     ✗ 16933
     http_req_receiving.............: avg=4.53µs   min=0s       med=0s      max=194.67µs p(90)=25.71µs  p(95)=31.59µs
     http_req_sending...............: avg=3.74µs   min=0s       med=0s      max=1.57ms   p(90)=10.9µs   p(95)=25.39µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s      max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=3.64s    min=0s       med=0s      max=1m0s     p(90)=516.63µs p(95)=55.92s
     http_reqs......................: 117588 356.310473/s
     iteration_duration.............: avg=27.87s   min=100.26ms med=30s     max=1m0s     p(90)=30s      p(95)=58.02s
     iterations.....................: 117583 356.295322/s
     vus............................: 1336   min=4        max=19969
     vus_max........................: 20000  min=20000    max=20000


running (5m30.0s), 00000/20000 VUs, 117583 complete and 991 interrupted iterations
default ✓ [======================================] 00990/20000 VUs  5m0s
```

- timeouts at ~2.7k

Rerun with `puma -b tcp://127.0.0.1:8080 -e production -w 16 -t 16:16 --preload`:

```
     ✗ is status 200
      ↳  90% — ✓ 843678 / ✗ 86047
     ✗ verify homepage text
      ↳  90% — ✓ 843678 / ✗ 86047

     checks.........................: 90.74% ✓ 1687356     ✗ 172094
     data_received..................: 158 MB 479 kB/s
     data_sent......................: 69 MB  208 kB/s
     http_req_blocked...............: avg=282.03ms min=0s       med=2.92µs   max=15.5s   p(90)=105.75µs p(95)=1.01s
     http_req_connecting............: avg=282.03ms min=0s       med=0s       max=15.5s   p(90)=72.16µs  p(95)=1.01s
     http_req_duration..............: avg=683.97ms min=0s       med=505.29µs max=1m0s    p(90)=3.19s    p(95)=3.75s
       { expected_response:true }...: avg=418.02ms min=157.79µs med=525.08µs max=56.7s   p(90)=997.21ms p(95)=3.74s
     http_req_failed................: 9.25%  ✓ 86047       ✗ 843678
     http_req_receiving.............: avg=30.11µs  min=0s       med=23.57µs  max=12.14ms p(90)=41.59µs  p(95)=59.64µs
     http_req_sending...............: avg=17.76µs  min=0s       med=10.62µs  max=13.02ms p(90)=22.96µs  p(95)=34.61µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s      p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=683.92ms min=0s       med=458.39µs max=1m0s    p(90)=3.19s    p(95)=3.75s
     http_reqs......................: 929725 2821.978976/s
     iteration_duration.............: avg=3.36s    min=100.2ms  med=100.92ms max=1m0s    p(90)=11.29s   p(95)=30s
     iterations.....................: 929725 2821.978976/s
     vus............................: 5      min=5         max=19944
     vus_max........................: 20000  min=20000     max=20000


running (5m29.5s), 00000/20000 VUs, 929725 complete and 0 interrupted iterations
default ✓ [======================================] 00000/20000 VUs  5m0s
```

- timeouts at ~3.3k

### `rust-actix`

```shell
$ cargo --version
cargo 1.70.0 (ec8a8a0ca 2023-04-25)
```

```
     ✓ is status 200
     ✓ verify homepage text

     checks.........................: 100.00%  ✓ 35411916     ✗ 0
     data_received..................: 1.6 GB   5.2 MB/s
     data_sent......................: 1.4 GB   4.7 MB/s
     http_req_blocked...............: avg=24.25µs  min=601ns    med=2.17µs   max=322.3ms  p(90)=3.13µs   p(95)=3.7µs
     http_req_connecting............: avg=20.59µs  min=0s       med=0s       max=322.25ms p(90)=0s       p(95)=0s
     http_req_duration..............: avg=42.65ms  min=33.23µs  med=22.6ms   max=1.83s    p(90)=112.63ms p(95)=137.35ms
       { expected_response:true }...: avg=42.65ms  min=33.23µs  med=22.6ms   max=1.83s    p(90)=112.63ms p(95)=137.35ms
     http_req_failed................: 0.00%    ✓ 0            ✗ 17705958
     http_req_receiving.............: avg=166.74µs min=3.91µs   med=13.34µs  max=199.27ms p(90)=28.5µs   p(95)=164µs
     http_req_sending...............: avg=726.21µs min=2.85µs   med=7.69µs   max=325.28ms p(90)=1.12ms   p(95)=4.1ms
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=41.76ms  min=21.8µs   med=21.47ms  max=1.83s    p(90)=111.12ms p(95)=135.33ms
     http_reqs......................: 17705958 58979.489784/s
     iteration_duration.............: avg=161.03ms min=100.06ms med=135.39ms max=2.11s    p(90)=245.67ms p(95)=307.13ms
     iterations.....................: 17705958 58979.489784/s
     vus............................: 16901    min=3          max=19936
     vus_max........................: 20000    min=20000      max=20000


running (5m00.2s), 00000/20000 VUs, 17705958 complete and 0 interrupted iterations
default ✓ [======================================] 00000/20000 VUs  5m0s
```
