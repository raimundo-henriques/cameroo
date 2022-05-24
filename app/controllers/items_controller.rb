class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item), notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_item
    @item = Item.find(params[:id])
    authorize @item
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :available, :address, :picture)
  end
end
