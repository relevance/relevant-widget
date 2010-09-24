require 'spec_helper'

describe Relevant::Renderer do
  describe "to_html" do
    it "renders the widgets template" do
      TestWidget.template "Hello <%= @options[:name] %>"
      TestWidget.template_format :erb
      widget = TestWidget.setup(:name => 'Mr. Roboto')
      
      renderer = Relevant::Renderer.new widget
      renderer.to_html.should == "Hello Mr. Roboto"
    end
  end
  
end