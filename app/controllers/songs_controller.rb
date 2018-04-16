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
end
