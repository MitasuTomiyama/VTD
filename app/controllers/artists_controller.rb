class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = current_artist
    if @artist.update(artist_params)
      # flash[:notice]
      redirect_to artist_path(@artist)
    else
      @artist = @artist
      render action: :edit
    end
  end

  # def destroy
  # end

  private
  def artist_params
    params.require(:artist).permit(:id, :name, :career, :image_id)
  end
  
end
