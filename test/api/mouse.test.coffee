request  = require 'supertest';

noContentRequests = [
  { route: '/mouse/click-at-polar-and-restore', data: { x: 0, y: 0 } }
  { route: '/mouse/move-relative', data: { x: 5, y: 5 } }
  { route: '/mouse/left-click' }
  { route: '/mouse/right-click' }
  { route: '/mouse/double-click' }
]

describe 'Mouse Routes', ->
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
