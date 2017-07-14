class User < ApplicationRecord
  devise :registerable, :database_authenticatable

  validates :email, presence: true
end
