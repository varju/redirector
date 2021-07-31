Redirector
==========

This is a very simple server that will listen for HTTP requests and if the request includes a specific querystring parameter it will decode that parameter and redirect to it.

Running
-------

```sh
$ REDIRECT_PARAMETER=url PORT=8080 node server.js
```

Testing
-------

```sh
$ curl -I http://localhost:8080?url=https://google.com
HTTP/1.1 302 Found
Location: https://google.com
```
