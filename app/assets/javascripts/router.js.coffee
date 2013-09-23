# For more information see: http://emberjs.com/guides/routing/

Pah.Router.map ()->
  this.route("home", { path: "/"})
  this.route("info", { path: "/info"})
  this.resource "music", { path: "/music" }, ->
    this.resource "all_songs", { path: "/all_songs" }, ->
      this.resource("song", { path: "/:song_id" })

    this.resource "albums", -> # the function call needs to be here
    # these are not nested under albums because the albums index
    # view needs to be replaced, instead of more stuff going in its
    # outlet
    this.resource "album", { path: "album/:album_id"}, ->
      this.resource "album_songs", { path: "songs" }, ->
        this.resource "album_song", {path: "/:song_id"}
