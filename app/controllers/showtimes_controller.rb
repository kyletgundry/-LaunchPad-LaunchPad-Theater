class ShowtimesController < ApplicationController
  
  def index
    @showtimes = Showtime.all
    render "index.html.erb"
  end 

  def new
    @movie = Movie.all
    @showtime = Showtime.new
    render "new.html.erb"
  end

  def create
    seats_available = params[:seats_available]
    seats = seats_available.to_i
    movie_id = params[:movie_id]
    movie = movie_id.to_i

    @showtime = Showtime.create(
      movie_id: movie,
      date: params[:date],
      time: params[:time],
      seats_available: seats
      )
    redirect_to "/movies"
  end

  def show
    @showtime = Showtime.find_by(id: params[:id])
    render "show.html.erb"
  end

  def buy
    @order = Order.new
    @showtime = Showtime.find_by(id: params[:id])
    puts "This is the showtime id: " + @showtime.id.to_s
    puts "This is the showtime movie id:  " + @showtime.movie_id.to_s
    puts "This is the showtime seats available:  " + @showtime.seats_available.to_s
    puts "This is the movie name:  " + @showtime.movie.name
    puts "This is the movie id:  " + @showtime.movie.id.to_s
    puts "This is the movie seats:  " + @showtime.movie.theater.seats.to_s
    render "buy.html.erb"
  end

  def order
    @showtime = Showtime.find_by(id: params[:id])
    puts "This is the showtime id: " + @showtime.id.to_s
    puts "This is the showtime movie id:  " + @showtime.movie_id.to_s
    puts "This is the showtime seats available:  " + @showtime.seats_available.to_s
    puts "This is the movie name:  " + @showtime.movie.name
    puts "This is the movie id:  " + @showtime.movie.id.to_s
    puts "This is the movie seats:  " + @showtime.movie.theater.seats.to_s
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
      UserNotifierMailer.send_signup_email(params[:user_email]).deliver
      redirect_to "/"
    else
      render "buy.html.erb"
    end
  end

  def edit
    @showtime = Showtime.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @showtime = Showtime.find_by(id: params[:id])
    @showtime.update(
      movie_id: params[:movie_id],
      seats_available: params[:seats_available],
      date: params[:date],
      time: params[:time]
      )
    @showtime.save
    redirect_to "/movies"
  end

  def destroy
    @showtime = Showtime.find_by(id: params[:id])
    @showtime.destroy
    redirect_to "/movies"
  end
end
