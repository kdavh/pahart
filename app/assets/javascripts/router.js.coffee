# For more information see: http://emberjs.com/guides/routing/

Pah.Router.map ()->
  this.route("home", { path: "/"})
  this.route("info", { path: "/info"})
  this.resource "albums", { path: "/music" }, ->
    this.route "all_songs", { path: "/all_songs" }, ->
      # here, i should just make an action that displays the lyrics where
      # the album image was, with a little X to hide and display the album name
      this.resource("song", { path: "/:song_id" })

  this.route "lyrics_only", { path: "/lyrics" }
