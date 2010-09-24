sys = require "sys"
fs = require "fs"
assert_module = require "assert"
coffee = require "coffee-script"
helpers = require("coffee-script/helpers").helpers

# Parse our command-line arguments.
test_file_paths = process.argv[1...process.argv.length]

# ANSI color codes.  Borrowed from
# http://github.com/jashkenas/coffee-script/blob/master/Cakefile , which
# implements a test runner for internal use by CoffeeScript.
red   = '\033[0;31m'
green = '\033[0;32m'
reset = '\033[0m'

# Set up a basic test environment.  Based on the standard Cakefile.
passed = failed = 0
helpers.extend global, assert_module
global.ok = (args...) ->
  res = assert_module.ok(args...)
  passed += 1
  res

# Called when the tests are done.
testsDone = ->
  tag = if failed > 0 then "#{red}ERR" else "#{green}OK"
  sys.puts "\n#{tag}:#{reset} #{passed} passed, #{failed} failed"
  if failed > 0
    process.exit(1)

# Pretend to run our test files.  Again, this is based on the standard
# Cakefile.
files_left = test_file_paths.length
for path in test_file_paths
  fs.readFile path, (err, data) ->
    files_left -= 1
    try
      coffee.run data.toString(), fileName: path
      sys.print "."
    catch err
      failed += 1
      sys.puts "\n#{err.stack.toString()}"
    if files_left is 0
      testsDone()
