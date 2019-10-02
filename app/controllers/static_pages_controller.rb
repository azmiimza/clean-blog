class StaticPagesController < ApplicationController
  def home
    if params[:search]
      @blog_posts = BlogPost.where('lower(title) LIKE ? OR lower(summary) LIKE ?', "%#{params[:search]}%",  "%#{params[:search]}%")
    else
      @blog_posts = BlogPost.all
    end
  end

  def about
  end

  def post
  end
end
