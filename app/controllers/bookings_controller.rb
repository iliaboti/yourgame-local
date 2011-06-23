class BookingsController < ApplicationController
def create
    @court = Court.find(params[:court_id])
    
  @booking.from = Date.civil(params[:from][:year].to_i, params[:from][:month].to_i, params[:from][:day].to_i)
  @booking.until = Date.civil(params[:until][:year].to_i, params[:until][:month].to_i, params[:until][:day].to_i)
@booking = @court.bookings.create(params[:booking])


    redirect_to court_path(@court)
  end
end
