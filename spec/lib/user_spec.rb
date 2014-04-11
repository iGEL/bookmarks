require 'spec_helper'
require 'user'

describe User do

  let!(:user) { User.new }

  it 'has id' do
    expect(user).to respond_to(:id)
  end

  it 'has unique id' do
    expect(User.new.id).not_to eq(user.id)
  end

  it 'has email' do
    expect(user).to respond_to(:email)
  end

  describe '#bookmark' do
    let!(:offer) { Offer.new }
    let!(:collection) { BookmarkCollection.new }

    it 'responds to bookmark' do
      expect(user).to respond_to(:bookmark)
    end

    it 'adds one bookmark to bookmark collection' do
      expect {
        user.bookmark offer
      }.to change { collection.bookmarks.count }.by(1)
    end

    it 'adds bookmark with appropriate user and offer references' do
      user.bookmark offer
      added_bookmark = collection.bookmarks[-1]
      expect(added_bookmark.user_id).to eq(user.id)
      expect(added_bookmark.offer_id).to eq(offer.id)
    end
  end

end

