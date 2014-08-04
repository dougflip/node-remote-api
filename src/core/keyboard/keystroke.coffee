keyInputMap =
  'press': (key) -> "KeyStrPress #{key}"
  'release': (key) -> "KeyStrRelease #{key}"

createFullStroke = (key) ->
  "KeyStr #{key}"

module.exports =
  # Accepts three styles of input
  # "keyname" -> produces a Press and Release
  # "press:keyname" -> produces a Press only
  # "release:keyname" -> produces a Release only
  create: (key) ->
    return null unless key?

    command = key.split ':'
    if command.length == 1
      return createFullStroke command[0]

    keyInputMap[command[0]] command[1]
