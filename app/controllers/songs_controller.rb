class SongsController < ApplicationController
  respond_to :json

  def index
    @songs = Song.all

    respond_with @songs
  end
end
