require_relative "../cloudtest.rb"
require 'yaml'

describe "checking matching function" do
  it "can find matches in same case" do
    
    $input1 = "Polly put the kettle on, polly put the kettle on, polly put the kettle on we'll all have tea"
    $input2 = "Polly"
    
    checkformatches.expect == "1, 26, 51"
  end
end
