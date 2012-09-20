TransMarket.Collections.CategoriesCollection = Backbone.Collection.extend
  model: TransMarket.Category
  collection_name: 'categories'

  initialize: ->

  url: ->
    TransMarket.paths.categories
