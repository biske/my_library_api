class User < ApplicationRecord
  devise :registerable, :database_authenticatable, :validatable

  validates :email, presence: true
end
