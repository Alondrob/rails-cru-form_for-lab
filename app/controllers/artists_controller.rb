class ArtistsController < ApplicationController

  def new
    @artist = Artist.new 
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artists_path
    else  
      redirect_to new_artists_path 
    end
  end

  def index
    @artist = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end