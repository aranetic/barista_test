# Contains functions for running CommonJS-style unit tests using Coffee.
module BaristaTest
  # :nodoc: The path to our test runner.
  TEST_RUNNER = File.join(File.dirname(__FILE__), "barista_test.coffee")

  # Run all tests in +test_paths+, and return true if they all succeed.
  def self.run_tests(test_paths)
    system "coffee", TEST_RUNNER, "--", "--", *test_paths
  end
end
