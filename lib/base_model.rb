class BaseModel
  attr_accessor :id

  def id
    @id ||= self.object_id
  end
end
