# For more information see: http://emberjs.com/guides/routing/

Pah.Router.map ()->
  this.route("home", { path: "/"})
  this.route("info", { path: "/info"})
  this.resource "music", { path: "/music" }, ->
    this.resource "all_songs", { path: "/all_songs" }, ->
      this.resource("song", { path: "/:song_id" })

    this.resource "albums", ->
      this.resource("album", { path: "/:album_id"})
