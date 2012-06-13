class MoviesController < ApplicationController
#this is for defining GET /movies
  def index
    @movies = Movie.all
  end

#this is for defining movies_path(m)
  def show
    id= params[:id] #retrieving movie id from uri
    @movie = Movie.find id #lookup for the movie id
  end

end
