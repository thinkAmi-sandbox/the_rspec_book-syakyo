require 'spec_helper'

describe Message do
  it "is valid with valid attributes" do
    Message.new.should be_valid
  end

  it "is not valid without a title"

  it "is not valid without text"

  it "is not valid without a recipient"
end
