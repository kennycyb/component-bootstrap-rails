require 'spec_helper'

describe Tabpane::Tab::Base do

  let(:context) { double() }
  subject { Tabpane::Tab::Base.new(context, 'name') }

  describe '#attr_accessor' do
    [:context, :name, :title, :active].each do |attr|
      it { is_expected.to respond_to attr }
    end
  end

  describe 'active?' do

    context 'when active = name' do
      before { subject.active = 'name' }
      it { expect(subject.active?).to eq(true) }
    end

    context 'when active != name' do
      before { subject.active = 'xyz' }
      it { expect(subject.active?).to eq(false) }
    end

  end

end
