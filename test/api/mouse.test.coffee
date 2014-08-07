testHelper = require('./test-helpers')

noContentRequests = [
  { route: '/mouse/click-at-polar-and-restore', data: { x: 0, y: 0 } }
  { route: '/mouse/move-relative', data: { x: 5, y: 5 } }
  { route: '/mouse/left-click' }
  { route: '/mouse/right-click' }
  { route: '/mouse/double-click' }
]

describe 'Mouse Routes', ->
  it 'should should return a 204', (done) ->
    testHelper.recursePost(0, noContentRequests, done) 
