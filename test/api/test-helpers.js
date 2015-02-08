var request = require('supertest');

function recursePost(index, routes, done){
  if(index >= routes.length) return done();

  var current = routes[index];
  request('http://localhost:9001')
    .post(current.route)
    .send(current.data || {})
    .expect(204)
    .end((err, res) => {
      if(err){
        console.error(`Unable to verify ${current.route} with data ${current.data}`);
        return done(err);
      }

      recursePost(index + 1, routes, done);
    });
}

module.exports = {
  recursePost
};
