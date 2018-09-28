class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :age, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than: 150
  }, allow_nil: true
  validates :gendar, presence: true, inclusion: {
    in: %w(male female)
  }
  validates :email, email: true
end
