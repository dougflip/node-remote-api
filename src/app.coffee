Hapi = require 'hapi'
router = require './router'

server = new Hapi.Server(9000)

router.configure(server)

server.start ->
  console.log("server started and running at #{server.info.uri}")
