import http from 'k6/http';
import { sleep } from 'k6';

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
  http.get('http://localhost:8080');

  sleep(1);
}