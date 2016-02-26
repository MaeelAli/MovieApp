class MoviesController < ApplicationController
	def index
  	@movies = Movie.all
  end

  def show
    # find movie by its id
    @movie = Movie.find(params[:id])
    
    # retrive all actors of that movie
    @actors = @movie.actors
  end
end
