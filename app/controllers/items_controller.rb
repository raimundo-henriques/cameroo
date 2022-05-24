class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
    authorize @item
    @item = Item.new
  end

  def create
    authorize @item
    @item = Item.new(item_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :available, :address)
  end
end
