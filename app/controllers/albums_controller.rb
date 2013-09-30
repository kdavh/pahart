class AlbumsController < ApplicationController
  respond_to :json

  def index
    @albums = Album.all

    respond_with @albums
  end
end
