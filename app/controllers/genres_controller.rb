class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(name: params[:name])
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
      @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def delete
    @genre.destroy(params[:id])
  end

  private

   	def genre_params(name)
  	  params.require(:genre).permit(:name)
  	end


end
