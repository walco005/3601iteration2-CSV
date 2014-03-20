class window.AppRouter extends Backbone.Router
  routes:
    '': 'index'

$(document).ready ->
  app = new AppRouter()
  Backbone.history.start pushState: true