class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  
  validates :title, presence: true
  validates :director, presence: true
  validates :year, numericality: true
end
