class NewPostsController < ApplicationController
  def new
    @title = Title.new
  end

  def create
    title = Title.new(title_params)
    title.save
    redirect_to'/show'
  end

  private
  def title_params
    params.require(:title).permit(:name, :sale_date)
  end

end
