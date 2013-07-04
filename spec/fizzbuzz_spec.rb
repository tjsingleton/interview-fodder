require_relative '../lib/fizz_buzz'
require 'stringio' 

describe FizzBuzz do
  FIXTURE_PATH = File.dirname(__FILE__) + "/fixtures/fizzbuzz.txt"

  it "matches the fixture" do
    output = StringIO.new
    printer = FizzBuzz.new(output)
    printer.run

    output.rewind
    output.read.should == File.read(FIXTURE_PATH)
  end
end
