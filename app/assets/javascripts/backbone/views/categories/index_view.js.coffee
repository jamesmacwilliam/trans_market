TransMarket.Views.Categories ||= {}

class TransMarket.Views.Categories.IndexView extends Backbone.View
  template: JST["backbone/templates/categories/index"]

  events:
    'click .select-all' : 'select_all'

  initialize: () ->
    @options.categories.bind('reset', @addAll)

  addAll: () =>
    @options.categories.each(@addOne)

  addOne: (category) =>
    view = new TransMarket.CategoryListItemView({model : category})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(categories: @options.categories.toJSON() ))
    @addAll()
    new TransMarket.CategoriesMassActionsView(el: @.$('#mass_actions')).render()
    return this

  select_all: =>
    TransMarket.helpers.select_all(@options.categories.models)
