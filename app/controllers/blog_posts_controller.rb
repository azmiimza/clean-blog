class BlogPostsController < ApplicationController
  def new
    @blog_post = BlogPost.new
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end

  def index
    @blog_posts = BlogPost.all
  end

  def create
    # Create fixed user with ID = 1 to create post
    # @user = User.find(params[:id]) 
    @blog_post = current_user.blog_posts.build(post_params)

    if @blog_post.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @blog_post = BlogPost.find(params[:id])
  end

  def update
    @blog_post = BlogPost.find(params[:id])
    if @blog_post.update_attributes(post_params)
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def destroy
    BlogPost.find(params[:id]).destroy
    redirect_to root_url
  end

  private

  def post_params
    params.require(:blog_post).permit(:content, :title, :summary, :user_id, :title_image_url, :search, :tag_list)
  end
end
