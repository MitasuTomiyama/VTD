class ArtsController < ApplicationController


  def new
    @artist = current_artist
    @art = Art.new
  end

  def index
    @arts = Art.all
  end

  def show
    @art = Art.find(pamas[:id])
  end

  def create
    @art = Art.new(art_params)
    @art.artist_id == current_artist.id
    if @art.save
      # flash[:notice]
      redirect_to art_path(@art)
    else
      @artist = current_artist
      @arts = Art.all
      render action: :index
    end
  end

  def edit
    @art = Art.find(params[:id])

  end

  def update
    @art = Art.find(params[:id])
    if @art.update(art_params)
      # flash[:notice] = 
      redirect_to art_path(@art)
    else
      @art = @art
      rendet action: :edit
  end

  def destroy
    @art = Art.find(params[:id])
    @art.destroy
    redirect_to arts_path
  end

  private
  def art_params
  params.require(:art).permit(:opus, :explanation, :image_id, :video_id)
  end

end
