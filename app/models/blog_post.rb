class BlogPost < ApplicationRecord
  validates :title, presence: true, length: {maximum:50}
  validates :summary, presence: true, length: {maximum:150}
end
