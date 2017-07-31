class Movie < ApplicationRecord
  has_many :showtimes
  belongs_to :theater
  has_many :orders
end
