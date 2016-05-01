module Component
  module Tab
    class Base
      attr_accessor :context
      attr_accessor :name
      attr_accessor :title
      attr_accessor :active

      def initialize (context, name, options = {})
        @context = context
        @name    = name
        @title   = options[:title] || name
        @active  = options[:active]
      end

      def link
      end

      def content
      end

      def active?
        @active == @name
      end

      def header
        attrs = active? ? ' class="active"' : ''
        html  = "<li#{attrs}>"
        html << link
        html << '</li>'
        html
      end

      def render
        body = content
        return '' unless body
        html = ''
        html << "<div id=\"#{@name}\" class=\"tab-pane fade"
        html << ' in active' if active?
        html << '">'
        html << body
        html << '</div>'
        html
      end
    end
  end
end
