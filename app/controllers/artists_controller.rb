class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = current_artist.find(params[:id])
  end

  def update
    artist = current_artist.find(params[:id])
    if artist.update(artist_params)
      # flash[:notice]
      redirect_to artist_path
    else
      @artist = artist
      render action: :edit
    end
  end

  # def destroy
  # end

  private
  def artist_params
    params.require(:artist).parmit(:name, :career, :image_id)
  end
  
end
