class PostBlogsController < ApplicationController
  def index
    @post_blogs = PostBlog.all
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
    @post_blog = PostBlog.find(params[:id])
    if @post_blog.user.id != current_user.id
      redirect_to post_blogs_path
    end
  end

  def update
    @post_blog = PostBlog.find(params[:id])
    @post_blog.update(post_blog_params)
    redirect_to post_blog_path(@post_blog.id)
  end

  def destroy
    blog = PostBlog.find(params[:id])
    blog.destroy
    redirect_to post_blogs_path
  end

  private

  def post_blog_params
    params.require(:post_blog).permit(:title,:body,:image)
  end
end
