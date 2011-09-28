require 'erb'
require 'active_support'
require 'action_view'

module ActionView
  module Helpers
    module TagHelper

      # rename original method for extending     
      alias_method :tag_without_autocomplete_off, :tag
      
      # This re-opens the tag method which is used by every form builder helper
      # to disable browsers autocomplete by default.
      #
      # Fields can use the browsers autocomplete by explicitly setting ":autocomplete => 'on'"
      def tag(name, options = nil, open = false, escape = true)
        options['autocomplete'] ||= 'off' if options.is_a?(Hash) and name.to_s == 'input' and not ['submit', 'reset', 'radio', 'image', 'file', 'hidden', 'checkbox'].include?(options['type'].to_s)
        tag_without_autocomplete_off(name, options, open, escape)
      end
    end
  end
end
