class ArtistsController < ApplicationController

  def new
    @artist = Artist.new 
  end

  def create
    @artist = Artist.new(artist_params)
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
