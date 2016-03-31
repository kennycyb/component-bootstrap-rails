module Tabpane
  module Bootstrap
    module Rails
      class TabbedPane
        attr_accessor :tabs, :active, :context

        def initialize (context, options = {})
          @context = context
          @tabs    = []
          @active  = options[:active]
        end

        def link (name, options = {}, &block)
          tab = Tabpane::Tab::LinkTo.new(@context, name, options)
          yield(block) if block_given?
          @tabs << tab
        end

        def panel (name, options = {}, &block)
          tab = Tabpane::Tab::Panel.new(@context, name, options)
          yield(block) if block_given?
          @tabs << tab
        end

        def render
          tabs_nav = '<ul class="nav nav-tabs">'
          tabs_div = '<div class="tab-content">'

          @tabs.each do |tab|
            tab.active = @active
            tabs_nav << tab.header
            tabs_div << tab.render
          end

          tabs_nav << '</ul>'
          tabs_div << '</div>'
          puts tabs_nav
          puts tabs_div
          return (tabs_nav + tabs_div)
        end
      end
    end
  end
end
