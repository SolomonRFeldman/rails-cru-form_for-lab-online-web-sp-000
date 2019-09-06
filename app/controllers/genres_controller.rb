class GenresController < ApplicationController
  
  def show
    @genre = Genre.find(params[:id])
  end
  
  def new
    
  end
  
  def create
    genre = Genre.create(genre_params)
    redirect_to artist_path(artist)
  end
  
  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
    genre = Genre.find(params[:id])
    genre.update(genre_params)
    redirect_to genre_path(genre)
  end
  
end