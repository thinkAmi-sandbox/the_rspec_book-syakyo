require 'spec_helper'

describe Message do
  it "is valid with valid attributes" do
    Message.new(:title => "foo").should be_valid
  end

  it "is not valid without a title" do
    message = Message.new :title => nil
    message.should_not be_valid
  end

  it "is not valid without text" do
    message = Message.new :text => nil, :title => "foo"
    message.should_not be_valid
  end

  it "is not valid without a recipient"
end
