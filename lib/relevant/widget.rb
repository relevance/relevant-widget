require "tilt"
require "active_support/core_ext"
require "relevant/relevant"

module Relevant
  module Widget
    
    def self.included(base)
      base.extend ClassMethods
      
      attr_accessor :options
    end

    def to_html
      template_handler = Tilt[self.class.template_format].new { self.class.template.strip }
      template_handler.render(self)
    end
    
    module ClassMethods
      
      def setup(options = {})
        widget = new
        widget.options = options.reject{|key,val| val.blank?}
        
        widget
      end
      
      def available_options(options = nil)
        options.nil? ? @available_options : (@available_options = options)
      end

      def template_format(format = nil)
        format.nil? ? @template_format : (@template_format = format)
      end

      def template(data = nil)
        data.nil? ? @template : (@template = data)
      end

      def refresh_every(seconds = nil)
        seconds.nil? ? @refresh_every : (@refresh_every = seconds)
      end
      
      def label(the_label = _default_label)
        @label ||= the_label
      end
      
      def _default_label
        name.demodulize.gsub(/[[A-Z]]/, ' \0').strip
      end
    end
    
  end
end
