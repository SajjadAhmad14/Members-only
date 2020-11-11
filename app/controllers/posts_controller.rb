class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def new
    @post = Post.new
  end


  def create
    @post = Post.new(title: params[:title], body: params[:body])
    if @post.save
      redirect_to new_post_path
    else
      render :new
    end
  end

  def index
  end

end
