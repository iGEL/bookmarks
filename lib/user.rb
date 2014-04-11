class User < BaseModel
  attr_accessor :email

  def bookmark(offer)
    Bookmark.new offer_id: offer.id, user_id: self.id
  end
end
