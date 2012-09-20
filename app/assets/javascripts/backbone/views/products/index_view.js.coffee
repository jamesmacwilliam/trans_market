TransMarket.Views.Products ||= {}

class TransMarket.Views.Products.IndexView extends Backbone.View
  template: JST["backbone/templates/products/index"]

  initialize: () ->
    @options.products.bind('reset', @addAll)

  addAll: () =>
    @options.products.each(@addOne)

  addOne: (product) =>
    view = new TransMarket.Views.Products.ProductView({model : product})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(products: @options.products.toJSON() ))
    @addAll()

    return this
