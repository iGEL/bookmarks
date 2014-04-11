require 'spec_helper'
require 'base_model'

class SampleBaseModelClass < BaseModel; end

describe BaseModel do
  subject { SampleBaseModelClass.new }

  it_behaves_like 'descendant of base model'
end

