var testHelper = require('./test-helpers');

var noContentRequests = [
  { route: '/browser/launch', data: { url: 'www.example.com' } },
  { route: '/browser/search', data: { searchTerm: 'search' } },
  { route: '/browser/focus-address-bar' },
  { route: '/browser/close' },
  { route: '/browser/close-tab' },
  { route: '/browser/next-tab' },
  { route: '/browser/zoom-in' },
  { route: '/browser/zoom-out' },
  { route: '/browser/actual-size' }
];

describe('Browser Routes', () => {

  it('should should return a 204', (done) => {
    return testHelper.recursePost(0, noContentRequests, done);
  });

});
