class ShowtimesController < ApplicationController
  def index
    @showtimes = Showtime.all
    render "index.html.erb"
  end 

  def new
    @showtime = Showtime.new
    render "new.html.erb"
  end

  def create
    @showtime = Showtime.create(
      theater_id: params[:theater_id],
      movie_id: params[:movie_id],
      date: params[:date],
      time: params[:time]
      )
    redirect_to "/showtimes"
  end

  def show
    @showtime = Showtime.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @showtime = Showtime.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @showtime = Showtime.find_by(id: params[:id])
    @showtime.update(
      date: params[:date],
      time: params[:time]
      )
    @showtime.save
    redirect_to "/showtimes"
  end

  def destroy
    @showtime = Showtime.find_by(id: params[:id])
    @showtime.destroy
    redirect_to "/showtimes"
  end
end
