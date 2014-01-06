require 'spec_helper'

describe MessagesController do
  describe "POST create" do
    it "creates a new message" do
      pending("drive out redirect")
      Message.should_receive(:new).with("text" => "a quick brown fox")
      post :create, :message => { "text" => "a quick brown fox" }
    end

    it "save the message"

    it "redirects to the Messages index" do
      post :create
      response.should redirect_to(:action => "index")
    end
  end
end
