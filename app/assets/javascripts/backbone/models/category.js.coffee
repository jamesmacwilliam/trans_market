class TransMarket.Models.Category extends Backbone.Model
  paramRoot: 'category'

  defaults:
    name: null
    uid: null
    parent: null

class TransMarket.Collections.CategoriesCollection extends Backbone.Collection
  model: TransMarket.Models.Category
  url: '/categories'
