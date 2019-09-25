class User < ApplicationRecord

  validates :name, presence: true, length: {maximum:45}
  validates :email, presence: true, length: {maximum:45}
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
end
