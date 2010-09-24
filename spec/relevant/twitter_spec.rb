require 'spec_helper'

describe Relevant::Twitter do
  describe "to_html" do
    it "does not blow up" do
      lambda {
        Relevant::Twitter.new.to_html
      }.should_not raise_error
    end
  
    it "contains seach results" do
      widget = Relevant::Twitter.new
      results = [Hashie::Mash.new({:text => "I'm on the internet!", :from_user => "jdoe"})]
      widget.expects(:results).returns(results)
      widget.to_html.should include("I'm on the internet!")
    end
  end
  
  describe '#limit' do
    it 'is an available option' do
      widget = Relevant::Twitter.new :limit => 3
      widget.limit.should == 3
    end
    
    it 'defaults to 10' do
      widget = Relevant::Twitter.new
      widget.limit.should == 10
    end
  end
end