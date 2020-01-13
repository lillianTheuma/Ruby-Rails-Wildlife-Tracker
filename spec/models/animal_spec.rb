require 'rails_helper'

describe Animal do
  it { should have_many(:regions) }
end
# describe Album do
#   it { should validate_presence_of :name }
# end
