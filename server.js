require('log-timestamp');
const express = require('express');

const port = process.env.PORT || 8080
const param = process.env.REDIRECT_PARAMETER || 'url'

const app = express();
app.get('/*', function(req, res) {
  console.log(`Received ${req.url}`)

  const url = req.query[param];
  if (!url) {
    console.log(`Parameter '${param}' not found`)
    res.sendStatus(404);
  } else {
    console.log(`Redirecting to ${url}`)
    res.redirect(url);
  }
});

app.listen(port);
console.log(`Listening on port ${port}`)
