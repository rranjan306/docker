var http = require('http');

http.createServer(function(req, res) {
  res.write('Hello Docker !');
  res.end();
}).listen(8000, function(res, err){
  console.log('Server is Up !');
});