class TransMarket.Category extends Backbone.Model

  namespace: 'category'

  url:  if @.id? then TransMarket.paths.edit_category(@.id) else TransMarket.paths.edit_category()
