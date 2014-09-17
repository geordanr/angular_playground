request = require 'supertest'
{app} = require '../../express/server.coffee'

describe 'Express server', ->
  it 'responds to HTTP GET', ->
    res = request(app)
      .get('/')
      .expect(200)

  it 'responds with JSON including ID', (done) ->
    res = request(app)
      .get('/api/example/xyz123')
      .expect(200)
      .end (err, res) ->
        return done(err) if err
        res.body.should.have.property 'id', 'xyz123'
        done()
