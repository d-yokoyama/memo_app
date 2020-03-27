class User < ApplicationRecord
  has_secure_passwordgit
  has_many :posts, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
