window.TransMarket =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  initialize_backbone: () ->
    Backbone.appendDataTypeToUrl = false
    router_name = TransMarket.helpers.get_class_name(TransMarket.router)
    router_prefix = router_name.replace(/([A-Z]+)([A-Z][a-z])/g, "$1_$2").replace(/([a-z\\d])([A-Z])/g, "$1_$2").toLowerCase().replace('_router', '/')
    Backbone.history.start(pushState: window.pushState?)
    path_suffix = window.location.pathname.replace("/#{router_prefix}", '')
    unless router_prefix.replace('/','') == window.location.pathname.replace('/', '')
      TransMarket.router.navigate window.location.pathname.replace("/#{router_prefix}",''), trigger: true, replace: true
      TransMarket.router.navigate ''


