bodyParser = require 'body-parser'
cookieParser = require 'cookie-parser'
express = require "express"
http = require "http"
port = process.env.PORT || "3000"

app = express()
app.use cookieParser()
app.use bodyParser.json()
app.use bodyParser.urlencoded extended: false 

# GET home page
app.get '/', (req, res) ->
  res.json message: "Success!"

server = app.listen port, ->
  host = server.address().address
  port = server.address().port
  console.log "Running server on http://%s:%s", host, port
  

