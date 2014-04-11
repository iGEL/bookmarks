require 'spec_helper'

shared_examples 'descendant of base model' do
  it 'has id' do
    expect(subject).to respond_to(:id)
  end

  it 'has unique id' do
    expect(subject.id).not_to eq(subject.class.new.id)
  end
end

