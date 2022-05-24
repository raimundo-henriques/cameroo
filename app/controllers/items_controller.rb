class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @user = current_user
    @item = Item.new(item_params)
    @item.user = @user
    authorize @item
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :available, :address, :photo)
  end
end
