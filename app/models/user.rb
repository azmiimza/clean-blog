class User < ApplicationRecord

  validates :name, presence: true, length: {maximum:45}
  validates :email, presence: true, length: {maximum:45}
  

end
