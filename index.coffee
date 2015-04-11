bodyParser = require 'body-parser'
cookieParser = require 'cookie-parser'
express = require "express"
http = require "http"
logger = require "morgan"
port = process.env.PORT || "3000"

app = express()
app.use logger('dev')
app.use cookieParser()
app.use bodyParser.json()
app.use bodyParser.urlencoded extended: false 

# Routes
about = require('./routes/expressions')
app.use "/about", about

# GET home page
app.get '/', (req, res) ->
  res.json message: "Success!"

server = app.listen port, ->
  host = server.address().address
  port = server.address().port
  console.log "Running server on http://%s:%s", host, port
  

