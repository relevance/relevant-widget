module Relevant
  
  class Renderer
    def initialize(widget)
      @widget = widget
    end

    def to_html
      return unless @widget.class.template

      template_handler = Tilt[@widget.class.template_format].new { @widget.class.template.strip }
      template_handler.render(@widget)
    end
  end
  
end