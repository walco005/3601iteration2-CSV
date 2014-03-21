class window.essayCollectionView extends Backbone.View
  initialize: ->
    @render()

  render: ->
    _.each @collection.models, ((item) ->
      view = new essayView(model: item)
      @$el.append view.el
      return
    ), this
    this
# returning itself for chaining calls. syntax bears futher investigation