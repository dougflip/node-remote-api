testHelper = require('./test-helpers')

noContentRequests = [
  { route: '/system/close-window' }
  { route: '/system/mute' }
  { route: '/system/set-volume', data:{ level: 85 } }
  { route: '/system/suspend' }
]

describe 'System Routes', ->
  it 'should should return a 204', (done) ->
    testHelper.recursePost(0, noContentRequests, done)
