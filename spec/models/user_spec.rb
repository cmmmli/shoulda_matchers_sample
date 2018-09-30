require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }

  it { should validate_numericality_of(:age).only_integer }
  it { should validate_numericality_of(:age).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:age).is_less_than(150) }

  it { should validate_presence_of(:gendar) }
  it do
    should validate_inclusion_of(:gendar).
      in_array(['male', 'female'])
  end
end

