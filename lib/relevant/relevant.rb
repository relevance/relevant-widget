
module Relevant
  
  @widgets = []
  
  def self.widgets
    @widgets
  end
  
  def self.register(widget) 
    @widgets << widget
  end
  
  def self.unregister_all!
    @widgets = []
  end
  
end