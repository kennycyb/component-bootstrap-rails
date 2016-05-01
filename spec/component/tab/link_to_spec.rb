require 'spec_helper'

describe Component::Tab::LinkTo do

  it { expect(described_class).to be < Component::Tab::Base }

  let(:context) { double() }
  subject { Component::Tab::LinkTo.new(context, 'name', 'https://github.com/kennycyb/component-bootstrap-rails') }

  describe '#attr_accessor' do
    [:data, :route].each do |attr|
      it { is_expected.to respond_to attr }
    end
  end


end
