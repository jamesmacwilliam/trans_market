TransMarket.Views.Products ||= {}

class TransMarket.Views.Products.ProductView extends Backbone.View
  template: JST["backbone/templates/products/product"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
