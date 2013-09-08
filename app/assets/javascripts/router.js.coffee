# For more information see: http://emberjs.com/guides/routing/

Pah.Router.map ()->
  this.route("home", { path: "/"})
  this.route("bio")
  this.resource "songs", ->
    this.resource("song", { path: "/:song_id" })
