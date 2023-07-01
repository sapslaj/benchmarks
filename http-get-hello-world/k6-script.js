import http from 'k6/http';
import { sleep, check } from 'k6';

export const options = {
  executor: 'ramping-arrival-rate',
  stages: [
    {
      duration: '5m',
      target: 20000,
    },
  ],
};

export default function() {
  const res = http.get('http://localhost:8080');
  check(res, {
    'is status 200': (r) => r.status === 200,
    'verify homepage text': (r) => r.body.includes('hello world'),
  });
  sleep(0.1);
}
