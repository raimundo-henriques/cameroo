class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(:start_date)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    @item = Item.find(params[:item_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.item = Item.find(params[:item_id])
    authorize @booking

    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully.'
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  # def set_item
  #   @item = Item.find(params[:item_id])
  #   authorize @item
  # end
end
