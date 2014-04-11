require 'spec_helper'
require 'bookmark_collection'

describe BookmarkCollection do
  let!(:collection) { BookmarkCollection.new }

  it 'is singleton' do
    expect(BookmarkCollection.new).to be(collection)
  end

  it 'exists' do
    expect(collection).not_to be(nil)
    expect(collection).to be_a(BookmarkCollection)
  end

  describe '#bookmarks' do
    it 'responds to bookmarks' do
      expect(collection).to respond_to(:bookmarks)
    end

    context 'when there are no bookmarks at all' do
      it 'returns empty array' do
        expect(collection.bookmarks).to be_a(Array)
        expect(collection.bookmarks.empty?).to be_true
      end
    end
  end

  describe '#by_user' do
    it 'responds to by_user' do
      expect(collection).to respond_to(:by_user)
    end

    context 'when there are no bookmarks at all' do
      it 'returns empty array' do
        expect(collection.by_user(User.new).empty?).to be_true
      end
    end
  end

  describe '#add' do
    it 'responds to add' do
      expect(collection).to respond_to(:add)
    end

    it 'adds one bookmark' do
      bookmark = double('bookmark')
      expect {
        collection.add bookmark
      }.to change { collection.bookmarks.count }.from(0).to(1)
      expect(collection.bookmarks[-1]).to be(bookmark)
    end
  end
end

