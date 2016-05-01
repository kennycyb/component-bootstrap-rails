require 'spec_helper'

describe Component::Bootstrap::Rails::TabbedPane do
  it 'generate tabbed link' do
    context = double()
    expect(context).to receive(:link_to) { '<a href="http://www.google.com">Google</a>' }
    tabpane = Component::Bootstrap::Rails::TabbedPane.new(context)
    tabpane.link :google, 'http://www.google.com'
    content = tabpane.render
    expect(content).to eq('<ul class="nav nav-tabs"><li><a href="http://www.google.com">Google</a></li></ul><div class="tab-content"></div>')
  end
end
