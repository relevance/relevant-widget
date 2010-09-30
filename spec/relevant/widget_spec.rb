require 'spec_helper'

describe Relevant::Widget do
  describe "to_html" do
    it "renders the widgets template" do
      TestWidget.template "Hello <%= @options[:name] %>"
      TestWidget.template_format :erb
      widget = TestWidget.setup(:name => 'Mr. Roboto')
      widget.to_html.should == "Hello Mr. Roboto"
    end
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
  
  describe "label" do
    class Relevant::Something
      include Relevant::Widget
    end
    class Relevant::LongerNameWidget
      include Relevant::Widget
    end
    class Relevant::SpecialSnowflake
      include Relevant::Widget
      label "I'm a unique snowflake"
    end

    context "default case" do
      it "strips module namespaces and humanizes" do
        Relevant::Something.label.should == "Something"
        Relevant::LongerNameWidget.label.should == "Longer Name Widget"
      end
    end
    
    context "overridden label" do
      it "uses the overide" do
        Relevant::SpecialSnowflake.label.should == "I'm a unique snowflake"
      end
    end
  end
  
end