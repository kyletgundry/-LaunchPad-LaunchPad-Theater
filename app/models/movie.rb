class Movie < ApplicationRecord
  has_many :showtimes
  has_many :theaters, through: :showtimes
  has_many :orders
  has_many :users, through: :orders
end
