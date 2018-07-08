require "pry"
class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
     binding.pry
    @author = Author.new(author_params)
    binding.pry
    if @author.valid?
        binding.pry
        redirect_to author_path(@author)
    else
        binding.pry
        render :new
    end
end

  private

  def author_params
    params.permit(:email, :name)
  end
end
