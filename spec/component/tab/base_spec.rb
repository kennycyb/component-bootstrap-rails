require 'spec_helper'

describe Component::Tab::Base do

  let(:context) { double() }
  subject { Component::Tab::Base.new(context, 'name') }

  describe '#attr_accessor' do
    [:context, :name, :title, :active].each do |attr|
      it { is_expected.to respond_to attr }
    end
  end

  describe '#initialize' do
    describe '#title' do
      context 'default title' do
        it { expect(subject.title).to eq('name') }
      end

      context 'when title is specified' do
        subject { Component::Tab::Base.new(context, 'name', title: 'title')}
        it { expect(subject.title).to eq('title') }
      end
    end

    describe '#active' do
      context 'default active' do
        it { expect(subject.active).to be_nil }
      end

      context 'when active is specified' do
        subject { Component::Tab::Base.new(context, 'name', active: 'name') }
        it { expect(subject.active).to eq('name') }
      end
    end

    describe '#name' do
      it { expect(subject.name).to eq('name') }
    end

    describe '#context' do
      it { expect(subject.context).to eq(context) }
    end
  end

  describe '#active?' do
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
