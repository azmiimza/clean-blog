class Tag < ApplicationRecord
  has_many :taggings
  has_many :blog_post, through: :taggings
end
