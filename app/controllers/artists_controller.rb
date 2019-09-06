class ArtistsController < ApplicationController
  
  def show
    @artist = Artist.find(params[:id])
  end
  
  def new
    
  end
  
  def create
    artist = Artist.create(artist_params)
    redirect_to artist_path(artist)
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  private
  
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
  
end