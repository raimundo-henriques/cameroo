class ItemsController < ApplicationController
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
      redirect_to item_path, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  end
end
