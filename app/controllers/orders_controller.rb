class OrdersController < ApplicationController

  def create
    @showtime = Showtime.find_by(id: params[:showtime_id])
    puts "This is the showtime:   " + @showtime.to_s
    puts "This is the available seats:  " + @showtime.seats_available.to_s
    @order = Order.new(
      user_name: params[:user_name],
      user_email: params[:user_email],
      user_credit_card: params[:user_credit_card],
      user_expiration_date: params[:user_expiration_date],
      showtime_id: params[:showtime_id],
      )
    if @order.save
      @showtime = Showtime.find_by(id: params[:showtime_id])
      new_seats_available = @showtime.seats_available - 1
      @showtime.update(
        seats_available: new_seats_available
        )
    end
    redirect_to "/movies"
  end

end
