# Require modules used by every test suite and bind them into our global
# namespace.  Ideally, we'd rather just wrap the individual specs we load,
# but we don't know how to do that yet.
global.vows = require 'vows'
global.assert = require 'assert'

# Copy the various assert functions into the global namespace.  Again, we'd
# be happy to only add these to the namepaces of running specs, but we
# don't know how to do that yet.
helpers = require("coffee-script/helpers").helpers
helpers.extend global, assert
