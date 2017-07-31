class OrdersController < ApplicationController

  def create
    @showtime = Showtime.find_by(id: params[:showtime_id])
    @order = Order.new(
      user_name: params[:user_name],
      user_email: params[:user_email],
      user_credit_card: params[:user_credit_card],
      user_expiration_date: params[:user_expiration_date],
      showtime_id: params[:showtime_id],
      movie_id: params[:movie_id]
      )
    if @order.save
      new_seats_available = @showtime.seats_available - 1
      @showtime.update(
        seats_available: new_seats_available
        )
      redirect_to "/movies"
    else
      render "showtimes/buy.html.erb"
    end
  end

  def index
    @orders = Order.all
    render "index.html.erb"
  end
end
