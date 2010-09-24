require 'spec_helper'

describe Relevant::Widget do
  class TestWidget
    include Relevant::Widget
    
    available_options :name => String
      
    template_format :erb
    template 'Hello <%= @options[:name] %>'
  end
  
  describe "options" do
    it "tracks the types for form building" do
      TestWidget.available_options[:name].should == String
    end
  end
  
  describe 'template_format' do
    it "reads the format if given no options" do
      TestWidget.template_format.should == :erb
    end
    
    it "allows sets the format if you pass it" do
      TestWidget.template_format :haml
      TestWidget.template_format.should == :haml
    end
  end
  
  describe 'template' do
    it "reads the template if given no options" do
      TestWidget.template.should == "Hello <%= @options[:name] %>"
    end
    
    it "allows sets the template if you pass it" do
      TestWidget.template "Hello World"
      TestWidget.template.should == "Hello World"
    end
  end
  
  describe "to_html" do
    it "renders the template" do
      TestWidget.template "Hello <%= @options[:name] %>"
      TestWidget.template_format :erb
      
      widget = TestWidget.new(:name => 'Mr. Roboto')
      widget.to_html.should == "Hello Mr. Roboto"
    end
  end
  
end