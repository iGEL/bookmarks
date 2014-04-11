require 'spec_helper'
require 'offer'

describe Offer do
  let!(:offer) { Offer.new }

  it_behaves_like 'descendant of base model'

  it 'has description' do
    expect(offer).to respond_to(:description)
  end
end

