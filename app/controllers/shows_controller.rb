class ShowsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @shows = Show.all
  end

  def new
    @New_shows = Show.new
    @movies = Movie.all
    @cinemas = Cinema.all
  end
  
  def create
    Show.create!(show_time:params[:show_time], show_date:params[:Show_date], show_room_number:params[:show_room_number], cinema_id:params[:cinema_id], movie_id:params[:movie_id])
    redirect_to root_path
  end

  def update
  end

  def destroy
    Show.find(params[:id]).delete
    redirect_to root_path
  end
end
