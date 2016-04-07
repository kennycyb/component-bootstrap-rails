require 'spec_helper'

describe Tabpane::Tab::LinkTo do

  it { expect(described_class).to be < Tabpane::Tab::Base }

  let(:context) { double() }
  subject { Tabpane::Tab::LinkTo.new(context, 'name', 'https://github.com/kennycyb/tabpane-bootstrap-rails') }

  describe '#attr_accessor' do
    [:data, :route].each do |attr|
      it { is_expected.to respond_to attr }
    end
  end


end
