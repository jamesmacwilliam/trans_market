class TransMarket.Routers.CategoriesRouter extends Backbone.Router
  initialize: (options) ->
    @categories = new TransMarket.Collections.CategoriesCollection(options.categories)
    @categories.reset options.categories

  routes:
    "new"      : "newCategory"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newCategory: ->
    @view = new TransMarket.Views.Categories.NewView(collection: @categories)
    $("#categories").html(@view.render().el)

  index: ->
    @view = new TransMarket.Views.Categories.IndexView(categories: @categories)
    $("#categories").html(@view.render().el)

  show: (id) ->
    category = new TransMarket.Category(id: id).fetch()

    @view = new TransMarket.Views.Categories.ShowView(model: category)
    $("#categories").html(@view.render().el)

  edit: (id) ->
    category = new TransMarket.Category(id: id)
    console.log category
    @view = new TransMarket.Views.Categories.EditView(model: category)
    $("#categories").html(@view.render().el)
