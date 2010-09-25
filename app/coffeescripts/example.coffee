# Figure out where to attach our exported functions.  'exports' works in a
# CommonJS package, and 'this' works in the browser.
root = exports ? this

# The function we want to test.
root.add = (x, y) -> x + y
