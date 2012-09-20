TransMarket.Views.Categories ||= {}

class TransMarket.Views.Categories.EditView extends Backbone.View
  template : ich.category_edit

  events :
    "submit #edit-category" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (category) =>
        @model = category
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    console.log @model
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
