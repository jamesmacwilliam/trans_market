#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers
window.TransMarket =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  initialize_backbone: () ->
    Backbone.appendDataTypeToUrl = false
    router_name = TransMarket.helpers.get_class_name(TransMarket.router)
    router_prefix = router_name.replace(/([A-Z]+)([A-Z][a-z])/g, "$1_$2").replace(/([a-z\\d])([A-Z])/g, "$1_$2").toLowerCase().replace('_router', '/')
    Backbone.history.start(pushState: window.history.pushState?, hasChange: false, root: "/#{router_prefix}")


