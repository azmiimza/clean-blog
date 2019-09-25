class CreateBlogPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :summary
      t.text :content
      t.integer :user_id
      t.string :title_image_url

      t.timestamps
    end
  end
end
