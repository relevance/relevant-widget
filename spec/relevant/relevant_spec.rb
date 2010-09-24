require 'spec_helper'

describe Relevant do
  
  context 'widgets' do
    around do |example|
      Relevant.unregister_all!
      example.run
      Relevant.unregister_all!
    end
    
    it "can unregister_all widgets" do
      Relevant.register TestWidget
      Relevant.unregister_all!
      Relevant.widgets.should == []
    end
    
    it "can register widgets" do
      Relevant.register TestWidget
      Relevant.widgets.should == [TestWidget]
    end
  end
  
end