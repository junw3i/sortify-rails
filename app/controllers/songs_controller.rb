class SongsController < ApplicationController
  def index
    @genre_id = params[:genre_id]

    if @genre_id.nil?
      @songs = Song.all
    else
      @songs = Song.where(genre_id: @genre_id)
    end

  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @genres = Genre.all
  end

  def create
    @song = Song.new(song_params)
    @song.save

    redirect_to @song
  end

  private
  def song_params
    params.require(:song).permit(:name, :genre_ids => [])
  end
end
