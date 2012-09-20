class TransMarket.CategoriesMassActionsView extends Backbone.View
  template: JST["backbone/templates/mass_actions/categories_mass_actions"]

  initialize: ->

  tagName: 'div'

  render: ->
    doc = $(@el).html(@template())
    return this

