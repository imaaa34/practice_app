class NewPostsController < ApplicationController
  def new
    @title = Title.new
  end

  def create
    title = Title.new(title_params)
    title.save
    redirect_to new_post_path(title.id)
  end

  def index
    @titles = Title.all
  end

  def detail
    @title = Title.find(params[:id])
  end

  private
  def title_params
    params.require(:title).permit(:name, :body)
  end

end
