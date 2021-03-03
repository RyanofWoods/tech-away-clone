class BookingsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new
    @booking.product = @product
    @booking.user = User.where(charity: current_user.charity, kind: "Seeker").first
    @booking.charity = current_user.charity
    @booking.status = "pending"
    @booking.save
    redirect_to bookings_path
  end

  def index
    @user = current_user
    @bookings = @user.bookings.where(charity_id: @user.charity_id)
  end


end
