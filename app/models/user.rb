class User < ApplicationRecord
  validates :given_name, presence: true, length: { minimum: 2 }
  validates :family_name, presence: true, length: { minimum: 2 }

  # Returns all users over the age of 21
  scope :over_21, -> { where('age > ?', 21) }
end
