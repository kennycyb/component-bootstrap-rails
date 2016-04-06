require "tabpane/bootstrap/rails/version"
require "tabpane/bootstrap/rails/tabbed_pane"
require "tabpane/bootstrap/rails/helper"
require "tabpane/tabs"

module Tabpane
  module Bootstrap
    module Rails
      if defined?(::Rails::Engine)
        class Engine < ::Rails::Engine
          initializer "tabpane" do
            ActiveSupport.on_load(:action_view) do
              include Tabpane::Bootstrap::Rails::Helper
            end
          end
        end
      end # if
    end
  end
end
