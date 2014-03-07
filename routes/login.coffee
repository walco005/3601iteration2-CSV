#
# * GET login page.
#
exports.login = (req, res) ->
  res.render "login",
    title: "Login"