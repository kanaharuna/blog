class PostBlogsController < ApplicationController
  def index
  end

  def show
    @post_blog = PostBlog.find(params[:id])
  end

  def new
    @post_blog = PostBlog.new
  end

  def create
    @post_blog = PostBlog.new(post_blog_params)
    @post_blog.user_id = current_user.id
    @post_blog.save
    redirect_to post_blog_path(@post_blog.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_blog_params
    params.require(:post_blog).permit(:title,:body,:image)
  end
end
