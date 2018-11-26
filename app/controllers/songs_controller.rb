class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def show
  end

  def edit
  end

  def update
    @song.update(song_params(:name))
    redirect_to song_path(@song)
  end

  def delete
    @song.destroy(params[:id])
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end

  def find_song
    @song = Song.find(params[:id])
  end

end
