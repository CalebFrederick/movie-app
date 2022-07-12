class Actor < ApplicationRecord
  validates :first_name, length: {mininum: 2}
  validates :last_name, length: {mininum: 2}
  validates :known_for, presence: true
  validates :age, numericality: {greater_than: 13}
end
