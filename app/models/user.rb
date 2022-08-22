class User < ApplicationRecord
  has_many :posts
  validates :username, :password, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :username, :password, length: { in: 6..20 }
end