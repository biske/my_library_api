class User < ApplicationRecord
  devise :registerable, :database_authenticatable
end
