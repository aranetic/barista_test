exports.subtraction = vows.describe("Subtraction").addBatch
  'of 3 from 4':
    topic: 4-3
    'should return 1': (x) ->
      strictEqual 1, x
