require "component/bootstrap/rails/version"
require "component/bootstrap/rails/tabbed_pane"
require "component/bootstrap/rails/helper"
require "component/tabs"

module Component
  module Bootstrap
    module Rails
      if defined?(::Rails::Engine)
        class Engine < ::Rails::Engine
          initializer "tabpane" do
            ActiveSupport.on_load(:action_view) do
              include Component::Bootstrap::Rails::Helper
            end
          end
        end
      end # if
    end
  end
end
