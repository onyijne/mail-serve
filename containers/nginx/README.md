# How logs work in nginx
```bash
root@f6e151a90393:/# ls -lh /var/log/nginx/
total 8.0K
lrwxrwxrwx 1 root root  11 Dec 20 20:13 access.log -> /dev/stdout
lrwxrwxrwx 1 root root  11 Dec 20 20:13 error.log -> /dev/stderr

# because of the above, if you name your access log file as 'access.log' or 'error.log'
# it will be redirected as shown above
```
