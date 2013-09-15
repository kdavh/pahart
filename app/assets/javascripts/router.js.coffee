# For more information see: http://emberjs.com/guides/routing/

Pah.Router.map ()->
  this.route("home", { path: "/"})
  this.route("info", { path: "/info"})
  this.resource "songs", ->
    this.resource("song", { path: "/:song_id" })
    
  # so that songs can be accessed by album
  this.resource "albums", ->
    this.resource("album", { path: "/:album_id"})
