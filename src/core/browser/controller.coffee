class BrowserCtrl
  constructor: (@browserCommands) ->

  launch: (request, reply) ->
    @browserCommands.launch(request.payload.url)
    reply().code(204)

  search: (request, reply) ->
    @browserCommands.search(request.payload.searchTerm)
    reply().code(204)

  focusAddressBar: (request, reply) ->
    @browserCommands.focusAddressBar()
    reply().code(204)

  close: (request, reply) ->
    @browserCommands.close()
    reply().code(204)

  closeTab: (request, reply) ->
    @browserCommands.closeTab()
    reply().code(204)

  nextTab: (request, reply) ->
    @browserCommands.nextTab()
    reply().code(204)

  zoomIn: (request, reply) ->
    @browserCommands.zoomIn()
    reply().code(204)

  zoomOut: (request, reply) ->
    @browserCommands.zoomOut()
    reply().code(204)

  actualSize: (request, reply) ->
    @browserCommands.actualSize()
    reply().code(204)

module.exports = BrowserCtrl
