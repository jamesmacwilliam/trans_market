TransMarket.CategoriesCollection = Backbone.Collection.extend
  model: TransMarket.Category
  collection_name: 'categories'

  url: ->
    TransMarket.paths.categories()
