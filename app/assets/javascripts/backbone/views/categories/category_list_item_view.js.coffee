class TransMarket.CategoryListItemView extends Backbone.View

  template: ich.category_list_item

  initialize: (options) ->

  tagName: 'tr'

  events:
    'click input[type=checkbox]' : 'select'

  render: =>
    opts =
      category_show_path: TransMarket.paths.category_edit(id: @model.id)

    doc = $(@el).html @template _.extend(@model.toJSON(), opts)
    return this

  select: =>
    TransMarket.helpers.list_select_item(@$el, @model)
