class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.assign_attributes(list_params)
    if @list.save
      redirect_to @list, notice: 'Your list was created'
    else
      render 'new'
    end
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: 'Your list was created'
    else
      render 'new'
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_url, notice: 'The list was deleted'
  end

  private

    def list_params
      params.require(:list).permit(:title)
    end
end
