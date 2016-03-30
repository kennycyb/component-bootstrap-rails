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

        def add_link (name, options = {})
          tab = Tabpane::Tab::LinkTo.new(@context, name, options)
          @tabs << tab
        end

        def add_panel (name, options = {})
          tab = Tabpane::Tab::Panel.new(@context, name, options)
          @tabs << tab
        end

        def render
          tabs_nav = '<ul class="nav nav-tabs">'
          tabs_div = '<div class="tab-content">'

          @tabs.each do |tab|
            tab.active = @active
            tabs_nav << tab.header_html
            tabs_div << tab.content_html
          end

          tabs_nav << '</ul>'
          tabs_div << '</div>'
          return (tabs_nav + tabs_div).html_safe
        end
      end
    end
  end
end
