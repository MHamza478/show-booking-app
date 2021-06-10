class CinemasController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @cinemas = Cinema.all
  end

  def new
    @cinemas = Cinema.all
  end
  
  def create
    Cinema.create!(cinema_name:params[:cinema_name], cinema_location:params[:cinema_location])
    redirect_to cinemas_path
  end

  def update
  end

  def destroy
    Cinema.find(params[:id]).delete
    redirect_to cinemas_path
  end
end
