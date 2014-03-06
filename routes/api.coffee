#
# * GET api page.
#
exports.api = (req, res) ->
  res.render "api",
    title: "API"