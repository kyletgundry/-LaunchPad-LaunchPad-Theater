class Movie < ApplicationRecord
  has_many :showtimes
  belongs_to :theater
  has_many :orders
  has_many :users, through: :orders
end
