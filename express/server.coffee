express = require 'express'
morgan = require 'morgan'

app = exports.app = express()

app.set 'port', process.env.PORT ? (if 'production' == app.get('env') then 80 else 3000)

app.use morgan('dev')
app.use express.static(__dirname + '/../app/')

app.get '/api/example/:id', (req, res) ->
  res.json
    foo: 'test'
    id: req.params.id

app.listen app.get('port')
console.log "Listening on port #{app.get 'port'}..."
