testHelper = require('./test-helpers')

noContentRequests = [
  { route: '/youtube/launch' }
  { route: '/youtube/search', data: { query: 'something' } }
  { route: '/youtube/full-screen' }
  { route: '/youtube/exit-full-screen' }
  { route: '/youtube/toggle-play-pause' }
  { route: '/youtube/frame-back-short' }
  { route: '/youtube/frame-back' }
  { route: '/youtube/frame-forward-short' }
  { route: '/youtube/frame-forward' }
  { route: '/youtube/seek-to-percentage', data: { step: 5 } }
  { route: '/youtube/restart' }
  { route: '/youtube/go-to-beginning' }
  { route: '/youtube/go-to-end' }
]

describe 'Youtube Routes', ->
  it 'should should return a 204', (done) ->
    testHelper.recursePost(0, noContentRequests, done)
