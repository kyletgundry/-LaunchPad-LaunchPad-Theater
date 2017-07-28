class TheatersController < ApplicationController
  def index
    @theaters = Theater.all
    render "index.html.erb"
  end 
end
