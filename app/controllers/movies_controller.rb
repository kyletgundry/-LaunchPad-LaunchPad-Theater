class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "index.html.erb"
  end 

  def new
    @movie = Movie.new
    render "new.html.erb"
  end

  def create
    @movie = Movie.create(
      name: params[:name]
      )
    redirect_to "/"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @movie = Movie.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.update(
      name: params[:name]
      )
    @movie.save
    redirect_to "/"
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    redirect_to "/"
  end
end
