class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy]

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
    if @item.update(item_params)
      redirect_to item_path(@item), notice: "#{@item.name} was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, notice: "#{@item.name} was successfully destroyed."
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :available, :address, :photo)
  end

  def set_item
    @item = Item.find(params[:id])
    authorize @item
  end
end
