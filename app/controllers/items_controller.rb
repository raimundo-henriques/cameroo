class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_item, only: [:edit, :update, :show, :destroy]

  def index
    if params[:query].present?
      @items = policy_scope(Item.search_by_name_and_description_and_address(params[:query]))
    else
      @items = policy_scope(Item)
    end
  end

  def show
    @markers = [
      {
        lat: @item.latitude,
        lng: @item.longitude
      }
    ]
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
      redirect_to my_cameras_path
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
    redirect_to my_cameras_path, notice: "#{@item.name} was successfully destroyed."
  end

  def my_cameras
    @items = policy_scope(current_user.items)
    authorize @items
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
