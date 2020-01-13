require 'rails_helper'

describe Region do
  it { should belong_to(:animal) }
end
