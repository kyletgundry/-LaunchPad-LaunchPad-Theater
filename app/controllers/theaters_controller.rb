class TheatersController < ApplicationController
  def index
    @theaters = Theater.all
    render "index.html.erb"
  end 

  def new
    @theater = Theater.new
    render "new.html.erb"
  end

  def create
    @theater = Theater.create(
      name: params[:name],
      seats: params[:seats]
      )
    redirect_to "/"
  end

  def show
    @theater = Theater.find_by(id: params[:id])
    render "show.html.erb"
  end
end
