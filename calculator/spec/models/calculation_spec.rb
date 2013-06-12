require 'spec_helper'

describe Calculation do
  it "should generate the output" do
    @c = Calculation.create(input: '2,3', function: 'add')
    @c.output.should eq 5
  end
end
