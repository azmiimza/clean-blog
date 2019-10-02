class StaticPagesController < ApplicationController
  def home
    @blog_posts = BlogPost.all
  end

  def about
  end

  def post
  end
end
