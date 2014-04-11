class BookmarkCollection

  attr_accessor :bookmarks

  def self.new
    @@singleton ||= super
  end

  def bookmarks
    @bookmarks ||= []
  end

  def by_user(user)
    []
  end

  def add(bookmark)
    @bookmarks << bookmark
  end
end
