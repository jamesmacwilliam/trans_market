TransMarket.helpers =

  list_select_item: (context, model) ->
    selected = context.find("input[type=checkbox]").prop('checked')
    model.set selected: selected, {silent: true }
    @.show_or_hide_mass_actions(_.compact(model.collection.                  pluck('selected')).length)

  show_or_hide_mass_actions: (count) ->
    if count == 0 then @hide_mass_actions() else @show_mass_actions()

  hide_mass_actions: ->
   $('#mass_actions').hide()
   $('#mass_actions').slideUp(300)

  get_class_name: (obj) ->
    obj.constructor.name || obj.constructor.toString().match(/^function\s(.+)\(/)[1]

  show_mass_actions: ->
    unless $('#mass_actions').is(':visible')
      $('#mass_actions').show()
      $('#mass_actions').slideDown(300)

   select_all: (models) ->
    _.each models (model) ->
      model.set selected: true, {silent: true}
    $('input[type=checkbox]').prop('checked', true)
    @show_mass_actions(collection.length)
