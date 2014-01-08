require 'spec_helper'

describe User do
  describe "#send_message" do
    context "when the user is under their subscription limit" do
      it "sends a message to another user" do
        msg = zach.send_message(
          :recipient => david
        )
        david.received_messages.should == [msg]
      end
    end
  end
end
