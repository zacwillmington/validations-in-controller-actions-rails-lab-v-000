class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
      binding.pry
      set_post!.update(post_params)
      binding.pry
      if @post && @post.valid?
          binding.pry
          @post.save
          binding.pry
          redirect_to post_path(@post)
      else
          binding.pry
          render :edit
      end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
