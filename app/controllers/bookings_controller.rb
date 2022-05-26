class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :edit, :destroy ]

  def index
    @bookings = policy_scope(Booking).order(:start_date)
  end

  def show
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
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: "Booking for #{@booking.item.name} was successfully cancelled."
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
