var request = require('supertest');
var testHelper = require('./test-helpers');

var noContentRequests = [
  { route: '/system/close-window' },
  { route: '/system/mute' },
  { route: '/system/set-volume', data:{ level: -10 } },
  { route: '/system/set-volume', data:{ level: 85 } },
  { route: '/system/set-volume', data:{ level: 185 } },
  { route: '/system/suspend' }
];

describe('System Routes', () => {

  it('should get the current system volume', done => {
    request('http://localhost:9001')
      .get('/system/get-volume')
      .expect(200)
      .end((err, res) => {
        if(err){
          console.error(`Unable to verify syste/get-volume`);
          return done(err);
        }

        return done();
      });
  });

  it('should should return a 204', (done) => {
    testHelper.recursePost(0, noContentRequests, done)
  });

});
