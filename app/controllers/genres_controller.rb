class GenresController < ApplicationController
  before_action :find_genre, only: [:show, :edit, :update, :delete]

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def show
  end

  def edit
  end

  def update
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def delete
    @genre.destroy(params[:id])
  end

  private
  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
  def find_genre
    @genre = Genre.find(params[:id])
  end

end
