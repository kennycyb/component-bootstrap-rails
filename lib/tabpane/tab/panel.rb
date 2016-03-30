module Tabpane
  module Tab
    class Panel < Base

      attr_accessor :template

      def initialize (context, name, options = {})
        super(context, options)
        @template = options[:template]
      end

      def link
        @context.link_to @title, "##@{name}", 'data-toggle': 'tab'
      end

      def content
        @context.render @template if @template
      end
    end
  end
end
