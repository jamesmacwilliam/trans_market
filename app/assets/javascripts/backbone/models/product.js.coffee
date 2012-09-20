class TransMarket.Models.Product extends Backbone.Model
  paramRoot: 'product'

  defaults:
    uid: null
    name: null
    description: null
    price: null
    location: null
    is_mobile: null

class TransMarket.Collections.ProductsCollection extends Backbone.Collection
  model: TransMarket.Models.Product
  url: '/products'
