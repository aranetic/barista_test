# Contains functions for running CommonJS-style unit tests using Coffee.
module BaristaTest
  # :nodoc: A directory containing our Node libraries.
  NODE_LIB_DIR = File.join(File.dirname(__FILE__), "barista_test")

  # Run all tests in +test_paths+, and return true if they all succeed.
  def self.run_tests(test_paths)
    old_node_path = ENV['NODE_PATH']
    begin
      node_path = ['app/coffeescripts', NODE_LIB_DIR]
      node_path << ENV['NODE_PATH'] unless ENV['NODE_PATH'].nil?
      ENV['NODE_PATH'] = node_path.join(':')
      puts "export NODE_PATH=#{ENV['NODE_PATH']}"
      command = ["vows"]
      command.concat(test_paths)
      command.concat(["-R", "barista_vows", "--spec"])
      puts command.join(' ')
      system *command
    ensure
      ENV['NODE_PATH'] = old_node_path
    end
  end
end

# Hook into Rails if it's present.
require 'barista_test/railtie' if defined?(Rails)

