module ActionView
  module Helpers
    module TagHelper
      # This re-opens the tag method which is used by every form builder helper
      # to disable browsers autocomplete by default.
      #
      # Fields can use the browsers autocomplete by explicitly setting ":autocomplete => 'on'"
      def tag(name, options = nil, open = false, escape = true)
        options['autocomplete'] ||= 'off' if name == 'input'
        "<#{name}#{tag_options(options, escape) if options}#{open ? ">" : " />"}".html_safe
      end
    end
  end
end
