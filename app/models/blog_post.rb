class BlogPost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  # mount_uploader :title_image_url, PictureUploader

  validates :title, presence: true, length: {maximum:50}
  validates :summary, presence: true, length: {maximum:150}
  validates :user_id, presence: true
  validates :content, presence: true

end
