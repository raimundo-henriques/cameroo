class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(:start_date)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
    # authorize @item
  end
end
