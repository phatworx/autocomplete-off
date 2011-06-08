require 'erb'
require 'active_support/concern'
require 'action_view/helpers/capture_helper'
require 'action_view/helpers/tag_helper'

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
        options['autocomplete'] ||= 'off' if options.is_a?(Hash) and name.to_s == 'input' and ['password', 'text', 'email'].include?(options['type'].to_s)
        tag_without_autocomplete_off(name, options, open, escape)
      end
    end
  end
end
