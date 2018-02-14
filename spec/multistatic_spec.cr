require "./spec_helper"

describe Multistatic do
  it "works" do
    ary = StaticArray.dim(2, Int32, 100, 0)
    ary.size.should eq(100)
    ary[0].size.should eq(100)
    ary[0][0].should eq(0)
  end
end
