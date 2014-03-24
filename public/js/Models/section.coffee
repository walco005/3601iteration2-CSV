class window.value extends Backbone.Model
  urlRoot: '/csv'
  idAttribute: '_id' #conforming to mongodb id syntax
  initialize: ->
    console.log 'Initializing a Value'

  defaults:
    grade: " "
    text: " "