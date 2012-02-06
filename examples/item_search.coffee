util   = require 'util'
Vacuum = require '../src/vacuum'

req = new Vacuum
  key:    process.env.AMAZON_KEY
  secret: process.env.AMAZON_SECRET
  tag:    process.env.AMAZON_TAG

req.add
  operation:   'ItemSearch'
  keywords:    'Deleuze'
  searchIndex: 'All'

req.get (res) ->
  console.log util.inspect res.find('Item'), false, null