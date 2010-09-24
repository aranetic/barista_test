# Parse our command-line arguments.
test_file_paths = process.argv[1...process.argv.length]

# Pretend to run our test files.
for path in test_file_paths
  if path.match(/failing/)
    process.exit 1

# Exit cleanly if no error occurred.
process.exit 0
