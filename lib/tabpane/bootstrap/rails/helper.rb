module Tabpane
  module Bootstrap
    module Rails
      module Helper
        def tabpane (options = {}, &block)
          pane = TabbedPane.new(self)
          yield(pane) if block_given?
          pane.render.html_safe
        end
      end
    end
  end
end
