class Order < ApplicationRecord
  belongs_to :showtime

  validates :user_name, presence: true
  validates :user_email, presence: true
  validates_format_of :user_email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :user_credit_card, presence: true
  validates :user_expiration_date, numericality: true

end
