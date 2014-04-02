# module dependencies.
express = require("express")
path = require("path")
api = require("./routes/api")
app = express()

process.env.NODE_ENV = process.env.NODE_ENV or "development"

# express config
app.set "port", process.env.PORT or 8888
app.set "view engine", "ejs"
app.engine "html", require("ejs").renderFile
app.use express.logger("dev")
app.use express.bodyParser()
app.use express.methodOverride()
app.use app.router

# static files
app.configure "production", ->
  app.set "views", __dirname
  app.use express.static(__dirname)

app.configure "production", ->
  app.use (req, res) ->
    res.render "index.html"

# api
app.post "/login", api.login
app.post "/logout", api.logout
app.get "/books", api.books

module.exports = app

app.listen app.get("port"), ->
  console.log "Express server listening on port " + app.get("port")
