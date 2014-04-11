class Bookmark < BaseModel
  attr_accessor :user_id, :offer_id

  def initialize(attributes={})
    super()
    self.user_id = attributes[:user_id]
    self.offer_id = attributes[:offer_id]
    BookmarkCollection.new.add(self)
  end
end
