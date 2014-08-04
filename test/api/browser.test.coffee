request  = require 'supertest';

noContentRequests = [
  { route: '/browser/launch', data: { url: 'www.example.com' } }
  { route: '/browser/search', data: { searchTerm: 'search' } }
  { route: '/browser/focus-address-bar' }
  { route: '/browser/close' }
  { route: '/browser/close-tab' }
  { route: '/browser/next-tab' }
  { route: '/browser/zoom-in' }
  { route: '/browser/zoom-out' }
  { route: '/browser/actual-size' }
]

describe 'Browser Routes', ->
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
