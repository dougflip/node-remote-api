request  = require 'supertest';

noContentRequests = [
  { route: '/netflix/search', data: { searchTerm: 'search' } }
  { route: '/netflix/launch-media-item', data: { mediaId: '1234567' } }
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
    recursePost 0, done

recursePost = (index, done) ->
  if index >= noContentRequests.length
    return done()

  current = noContentRequests[index]
  request('http://localhost:9000')
    .post(current.route)
    .send(current.data || {})
    .expect(204)
    .end (err, res) ->
      if err
        console.error 'Unable to verify', current.route, 'with data', current.data
        return done(err)
      recursePost index + 1, done  
