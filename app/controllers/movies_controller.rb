class MoviesController < ApplicationController
  skip_before_action :verify_authenticity_token


  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end
  
  def create
    Movie.create!(movie_name:params[:movie_name], movie_description:params[:movie_description], movie_rating:params[:movie_rating])
    redirect_to movies_path
  end

  def update
  end

  def destroy
    Movie.find(params[:id]).delete
    redirect_to movies_path
  end
end
