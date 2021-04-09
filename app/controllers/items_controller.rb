class ItemsController < ApplicationController

  def new
    @title = Title.new
  end

  def show
  end

  def create
    title = Title.new(title_params)
    title.save
    redirect_to new_post_path(title.id)
  end

  private
  def title_params
    params.require(:title).permit(:name, :body)
  end

end
