example = require 'example'

exports.example_spec = vows.describe("example").addBatch
  'adding 2 and 3':
    topic: 2+3,
    'returns 5': (sum) ->
      strictEqual 5, sum

