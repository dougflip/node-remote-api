testHelper = require('./test-helpers')

noContentRequests = [
  { route: '/netflix/search', data: { searchTerm: 'search' } }
  { route: '/netflix/launch-media-item', data: { mediaId: '1234567' } }
  { route: '/netflix/toggle-play-pause' }
  { route: '/netflix/play' }
  { route: '/netflix/pause' }
  { route: '/netflix/full-screen' }
  { route: '/netflix/exit-full-screen' }
  { route: '/netflix/rewind' }
  { route: '/netflix/fast-forward' }
  { route: '/netflix/toggle-keyframe-mode' }
  { route: '/netflix/frame-back' }
  { route: '/netflix/frame-forward' }
]

describe 'Netflix Routes', ->
  it 'should should return a 204', (done) ->
    testHelper.recursePost(0, noContentRequests, done)
