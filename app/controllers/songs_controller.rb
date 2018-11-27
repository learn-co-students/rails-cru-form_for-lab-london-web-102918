class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(name: params[:name], artist_id: params[:artist_id], genre_id: params[:genre_id])
    redirect_to song_path(@song)
  end

  def edit
      @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def delete
    @song.destroy(params[:id])
  end

  private

   	def song_params(name, artist_id, genre_id)
  	  params.require(:song).permit(:name, :artist_id, :genre_id)
  	end

end
