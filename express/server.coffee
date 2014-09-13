express = require 'express'

app = exports.app = express()

app.use express.static(__dirname + '/../angular/')

app.listen 3000
