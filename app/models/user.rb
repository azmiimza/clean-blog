class User < ApplicationRecord

  validates :name, presence: true, length: {maximum:45}
  validates :email, presence: true, length: {maximum:45}, uniqueness: { case_sensitive: false }
  has_many :blog_posts, dependent: :destroy
  validates :password, presence: true, length: {minimum:6, maximum:45}

  has_secure_password

end
