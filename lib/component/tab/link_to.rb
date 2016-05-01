module Component
  module Tab
    class LinkTo < Base

      attr_accessor :data
      attr_accessor :route

      def initialize (context, name, route, options = {})
        super(context, name, options)
        @data    = options[:data]
        @route   = route
      end

      def link
        @context.link_to @title, @route, data: @data
      end
    end
  end
end
