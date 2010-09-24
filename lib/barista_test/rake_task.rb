require 'rake'
require 'barista_test'

module BaristaTest
  # Define a Rake task to run a set of CoffeeScript unit tests.
  class RakeTask < Rake::TaskLib
    # The name of this task.
    attr_reader :name

    # A pattern specifying which test files to run.  Defaults to
    # '{test,spec}/coffeescripts/**/*.coffee'.
    attr_accessor :pattern

    # Create a new Rake task.
    def initialize(name='barista:test') #:yields: self
      @name = name
      @pattern = '{test,spec}/coffeescripts/**/*.coffee'
      yield self if block_given?
      define
    end

    # Actually define the task.
    def define
      desc "Run CoffeeScript unit tests"
      task @name do
        BaristaTest.run_tests(Dir[@pattern]) or
          fail "CoffeeScript unit tests failed"
      end
    end
  end
end
