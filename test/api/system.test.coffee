request  = require 'supertest';

noContentRequests = [
  { route: '/system/close-window' }
  { route: '/system/mute' }
  { route: '/system/set-volume', data:{ level: 85 } }
  { route: '/system/suspend' }
]

describe 'System Routes', ->
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
