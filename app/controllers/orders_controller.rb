class OrdersController < ApplicationController

  # def create
  #   @showtime = Showtime.find_by(id: params[:id])
  #   puts "This is the showtime id: " + @showtime.id.to_s
  #   puts "This is the showtime movie id:  " + @showtime.movie_id.to_s
  #   puts "This is the showtime seats available:  " + @showtime.seats_available.to_s
  #   puts "This is the movie name:  " + @showtime.movie.name
  #   puts "This is the movie id:  " + @showtime.movie.id.to_s
  #   puts "This is the movie seats:  " + @showtime.movie.theater.seats.to_s
  #   @order = Order.new(
  #     user_name: params[:user_name],
  #     user_email: params[:user_email],
  #     user_credit_card: params[:user_credit_card],
  #     user_expiration_date: params[:user_expiration_date],
  #     showtime_id: params[:showtime_id],
  #     movie_id: params[:movie_id]
  #     )
  #   if @order.save
  #     new_seats_available = @showtime.seats_available - 1
  #     @showtime.update(
  #       seats_available: new_seats_available
  #       )
  #     UserNotifierMailer.send_signup_email(params[:user_email]).deliver
  #     redirect_to "/"
  #   else
  #     render "showtimes/buy.html.erb"
  #   end
  # end

  def index
    @orders = Order.all
    render "index.html.erb"
  end
end
