var testHelper = require('./test-helpers');

var noContentRequests = [
  { route: '/mouse/click-at-polar-and-restore', data: { x: 0, y: 20 } },
  { route: '/mouse/move-relative', data: { x: 5, y: 5 } },
  { route: '/mouse/left-click' },
  { route: '/mouse/right-click' },
  { route: '/mouse/double-click' },
  { route: '/mouse/scroll-up' },
  { route: '/mouse/scroll-down' }
];

describe('Mouse Routes', () => {

  it('should should return a 204', (done) => {
    return testHelper.recursePost(0, noContentRequests, done);
  });

});
