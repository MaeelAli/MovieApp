class ActorsController < ApplicationController
  def index 
    @actors = Actor.all
  end

  def show
  	# retrive actor based on ID 
    @actor = Actor.find(params[:id])

    # retrieve all movies this actor had a part in
    @movies = @actor.movies
  end
end
