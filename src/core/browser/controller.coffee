baseController = require('../base-controller-helper')

noContentMethods = [
  'focusAddressBar', 'close', 'closeTab', 'nextTab', 'zoomIn', 'zoomOut', 'actualSize'
]

class BrowserCtrl
  constructor: (@cmds) ->

  launch: (request, reply) ->
    @cmds.launch(request.payload.url)
    reply().code(204)

  search: (request, reply) ->
    @cmds.search(request.payload.searchTerm)
    reply().code(204)

baseController.generateNoContentMethods(BrowserCtrl.prototype, noContentMethods)

module.exports = BrowserCtrl
