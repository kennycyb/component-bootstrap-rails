require 'spec_helper'

describe Tabpane::Bootstrap::Rails do
  it 'has a version number' do
    expect(Tabpane::Bootstrap::Rails::VERSION).not_to be nil
  end

  it 'does something useful' do
    context = double()
    expect(context).to receive(:link_to) { 'link_to' }
    tabpane = Tabpane::Bootstrap::Rails::TabbedPane.new(context)
    tabpane.link 'hello' do |tab|

    end

    content = tabpane.render
    puts content
  end
end
