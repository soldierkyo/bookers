class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(book_params)
    list.save
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.require(:list).permit(:title, :body)
  end

end
