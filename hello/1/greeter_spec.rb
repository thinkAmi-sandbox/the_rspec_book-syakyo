describe "RSpec Greeter" do
	it "should say 'Hello RSpec!' when it receives the greet() message" do
    greeter = RSpecGreeter.new          # Given
    greeting = greeter.greeter          # When
    greeting.should == "Hello RSpec"    # Then
  end
end