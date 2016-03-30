module Tabpane
  module Tab
    class LinkTo < Base

      attr_accessor :data
      attr_accessor :route
      attr_accessor :content

      def initialize (context, name, options = {})
        super(context, name, options)
        @data    = options[:data]
        @route   = options[:route]
      end

      def link
        @context.link_to @title, @route, data: @data
      end
    end
  end
end
