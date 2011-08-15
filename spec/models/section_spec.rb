require 'spec_helper'

describe Section do

  before(:each) do
    @attr = {
              :name => "Section Name Example",
              :position => "5",
              :visible => true,
            }
  end

  it "should create a new instance given valid attributes" do
    Section.create!(@attr)
  end

end
