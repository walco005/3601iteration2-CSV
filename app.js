// Generated by CoffeeScript 1.7.1

/*
Module dependencies.
 */

(function() {
  var app, csv, express, http, path, routes;

  express = require("express");

  routes = require("./routes");

  http = require("http");

  path = require("path");

  csv = require("./routes/csv");

  app = express();

  app.set('layout', 'layouts/main');

  app.set('partials', {
    head: 'partials/head',
    scripts: 'partials/scripts',
    functions: 'partials/functions',
    visualization: 'partials/visualization',
    tutorial: 'partials/tutorial'
  });

  app.set("port", process.env.PORT || 3009);

  app.set("views", path.join(__dirname, "views"));

  app.engine("html", require("hogan-express"));

  app.set("view engine", "html");

  app.use(express.favicon());

  app.use(express.logger("dev"));

  app.use(express.json());

  app.use(express.urlencoded());

  app.use(express.methodOverride());

  app.use(app.router);

  app.use(express["static"](path.join(__dirname, 'public')));

  app.use(express["static"](path.join(__dirname, 'bower_components')));

  if ("development" === app.get("env")) {
    app.use(express.errorHandler());
  }

  app.get("/", routes.index);

  app.get("/csv", csv.csv);

  http.createServer(app).listen(app.get("port"), function() {
    return console.log("Express server listening on port " + app.get("port"));
  });

}).call(this);

//# sourceMappingURL=app.map
