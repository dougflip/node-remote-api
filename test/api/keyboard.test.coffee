testHelper = require('./test-helpers')

noContentRequests = [
  { route: '/keyboard/send-keys', data: { keys: 'space' } }
  { route: '/keyboard/send-text', data: { text: 'put this to the screen!' } }
]

describe 'Keyboard Routes', ->
  it 'should should return a 204', (done) ->
    testHelper.recursePost(0, noContentRequests, done)
