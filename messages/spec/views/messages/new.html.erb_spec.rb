require 'spec_helper'

describe "messages/new.html.erb" do
  it "renders a form to create a message" do
    assign(:message, mock_model("Message").as_new_record.as_null_object)
    render
    rendered.should have_selector("form",
      :method => "post",
      :action => messages_path
      ) do |form|
        form.should have_selector("input", :type => "submit")
    end
  end

  it "renders a text field for the message title" do
    assign(
      :message,
      mock_model("Message", :title => "the title").as_new_record
    )
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("input",
        :type => "text",
        :name => "message[title]",
        :value => "the title"
        )
    end
  end
end