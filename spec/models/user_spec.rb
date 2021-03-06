require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { should have_many(:categories) }
    it { should have_many(:expenses) }
  end

  context 'values not empty' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end
end
