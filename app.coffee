
###
Module dependencies.
###
express = require("express")
routes = require("./routes")
http = require("http")
path = require("path")
csv = require("./routes/csv")

app = express()

#set main layout
app.set 'layout', 'layouts/main'
#expose templates to all views
app.set 'partials',
  head: 'partials/head',
  scripts: 'partials/scripts'
  functions: 'partials/functions'
  visualization: 'partials/visualization'

# all environments
app.set "port", process.env.PORT or 3000
app.set "views", path.join(__dirname, "views")
app.engine "html", require("hogan-express")
app.set "view engine", "html"
app.use express.favicon()
app.use express.logger("dev")
app.use express.json()
app.use express.urlencoded()
app.use express.methodOverride()
app.use app.router
app.use express.static(path.join(__dirname, 'public'))
app.use express.static(path.join(__dirname, 'bower_components'))

# development only
app.use express.errorHandler()  if "development" is app.get("env")
app.get "/", routes.index
app.get "/csv", csv.csv
http.createServer(app).listen app.get("port"), ->
    console.log "Express server listening on port " + app.get("port")