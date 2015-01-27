class MoviesController < ApplicationController
  def all
    @movies = Movie.all
    render json: @movies
  end

  #.search t=aa&y=1990
  def search
    if params[:t] && params[:y]
      @movie = Movie.where("year like ?", "%#{params[:y]}%")
    elsif params[:t]
      @movie = Movie.where("title like ?", "%#{params[:t]}%")
    elsif params[:y]
      @movie = Movie.where("year like ?", "%#{params[:y]}%")
    end
    render json: @movie
  end
end
