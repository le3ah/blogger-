require 'rails_helper'

describe Tagging, type: :model do
  describe  'relationships' do
    it {should belong_to(:articles)}
    it {should belong_to(:tags)}
  end
end
