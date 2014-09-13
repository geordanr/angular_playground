request = require 'supertest'
{app} = require '../../express/server.coffee'

describe 'Express server', ->
  it 'says Hello World at the root', (done) ->
    res = request(app)
      .get('/')
      .expect(200)
      .end (err, res) ->
        return done(err) if err
        res.text.should.include 'Hello world!'
        done()
