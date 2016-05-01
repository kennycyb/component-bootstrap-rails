module Component
  module Tab
    class Panel < Base

      attr_accessor :template

      def initialize (context, name, options = {})
        super(context, name, options)
        @template = options[:template] || name.to_s
      end

      def link
        @context.link_to @title, "##{@name}", 'data-toggle': 'tab'
      end

      def content
        @context.render @template if @template
      end
    end
  end
end
