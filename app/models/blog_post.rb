class BlogPost < ApplicationRecord
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings

  default_scope -> { order(created_at: :desc) }
  # mount_uploader :title_image_url, PictureUploader

  validates :title, presence: true, length: {maximum:50}
  validates :summary, presence: true, length: {maximum:150}
  validates :user_id, presence: true
  validates :content, presence: true

  def tag_list
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end

  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end

end
