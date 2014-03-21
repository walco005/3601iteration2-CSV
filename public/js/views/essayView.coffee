class window.essayView extends Backbone.View
  tagName: 'div'

  initialize: ->
    @render()
    return

  render: ->
    @$el.html @template(@model.toJSON()) #this.el is what we defined in tagName. use $el to get access to jQuery html() function
    this