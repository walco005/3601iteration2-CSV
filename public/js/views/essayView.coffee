class window.essayView extends Backbone.View
  tagName: 'div'
  template: _.template $('#textBox').html() #_.template is a function that takes a JSON object and returns html
  events:
    'click button.Add': 'addSection'
    'click button.Submit': 'submitSection'


  initialize: ->
    @render()
    return

  render: ->
    @$el.html @template(@model.toJSON()) #this.el is what we defined in tagName. use $el to get access to jQuery html() function
    this

  addSection: ->
