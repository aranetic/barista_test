exports.addition = vows.describe('Simple addition').addBatch
  'of 2 and 2':
    topic: 2 + 2
    'should return 4': (value) ->
      strictEqual 4, value
