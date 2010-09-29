exports.subtraction = vows.describe("Multiplication").addBatch
  'of 4 and 3':
    topic: 4*3
    'should return 11 (EXPECTED TO FAIL)': (x) ->
      strictEqual 11, x # Oops.
