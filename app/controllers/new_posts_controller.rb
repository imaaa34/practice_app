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

  def edit
    @title = Title.find(params[:id])
  end

  def update
    title = Title.find(params[:id])
    title.update(title_params)
    redirect_to new_post_path
  end

  private
  def title_params
    params.require(:title).permit(:name, :body, :image)
  end

end
