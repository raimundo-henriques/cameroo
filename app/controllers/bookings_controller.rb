class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(:start_date)
  end

  def show
  end

  def new
    @booking = Booking.new
    @item = Item.find(params[:item_id])
    # authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.item = Item.find(params[:item_id])
    # authorize @booking

    if @booking.save
      redirect_to item_bookings(@booking), notice: 'Booking was successfully.'
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

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_item
    @item = Item.find(params[:item_id])
    # authorize @item
  end
end
