class Movie < ApplicationRecord
  validates :title, presence: true
  validates :director, presence: true
  validates :year, numericality: true
end
