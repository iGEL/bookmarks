require 'spec_helper'
require 'bookmark'

describe Bookmark do
  let!(:bookmark) { Bookmark.new }

  it_behaves_like 'descendant of base model'

  it 'has user reference' do
    expect(bookmark).to respond_to(:user_id)
  end

  it 'has offer reference' do
    expect(bookmark).to respond_to(:offer_id)
  end

  describe '::new' do
    it 'adds created bookmark to bookmark collection' do
      collection = BookmarkCollection.new
      new_bookmark = nil
      expect {
        new_bookmark = Bookmark.new
      }.to change { collection.bookmarks.count }.by(1)
      expect(collection.bookmarks[-1]).to be(new_bookmark)
    end
  end
end

