class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @lists = List.all
    @list = List.find(params[:id])
  end

  def new
    @lists = List.all
    @list = List.new
  end

  def create
    @lists = List.all
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
