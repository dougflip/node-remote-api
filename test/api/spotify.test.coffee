testHelper = require('./test-helpers')

noContentRequests = [
  { route: '/spotify/toggle-play-pause' }
  { route: '/spotify/next' }
  { route: '/spotify/previous' }
  { route: '/spotify/browse-forward' }
  { route: '/spotify/browse-back' }
  { route: '/spotify/focus-search' }
  { route: '/spotify/search-artist', data: { query: 'query' } }
  { route: '/spotify/search-album', data: { query: 'query' } }
  { route: '/spotify/search-track', data: { query: 'query' } }
  { route: '/spotify/search-playlist', data: { query: 'query' } }
  { route: '/spotify/search-genre', data: { query: 'query' } }
]

describe 'Spotify Routes', ->
  it 'should should return a 204', (done) ->
    testHelper.recursePost(0, noContentRequests, done)
