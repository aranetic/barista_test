require 'barista_test'

describe BaristaTest do
  def test_file(name)
    "spec/examples/vows/#{name}_spec.coffee"
  end

  describe ".run_tests" do
    it "runs a list of test files and returns true if they all pass" do
      BaristaTest.run_tests([test_file('passing'), test_file('passing2')]).
        should == true
    end
    
    it "returns false if some tests fail" do
      BaristaTest.run_tests([test_file('passing'), test_file('failing')]).
        should == false
    end
  end
end
