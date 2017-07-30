class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "index.html.erb"
  end 

  def new
    @theaters = Theater.all
    @movie = Movie.new
    render "new.html.erb"
  end

  def create
    theater_name = params[:theater_name]
    theater = Theater.find_by(name: theater_name)
    @movie = Movie.create(
      theater_id: theater.id,
      name: params[:name]
      )
    redirect_to "/movies"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.html.erb"
  end

  def showtime
    @movie = Movie.find_by(id: params[:id])
    render "showtimenew.html.erb"
  end

  def edit
    @theaters = Theater.all
    @movie = Movie.find_by(id: params[:id])

    render "edit.html.erb"
  end

  def update
    theater = Theater.find_by(name: params[:theater_name])
    @movie = Movie.find_by(id: params[:id])
    # @showtimes = Showtime.where(movie_id: @movie)
    # @showtimes.update(
    #   seats_available: @movie.theater.seats
    #   )
    @movie.update(
      theater_id: theater.id,
      name: params[:name]
      )
    @movie.save
    redirect_to "/movies"
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    redirect_to "/movies"
  end
end
