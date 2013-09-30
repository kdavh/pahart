# For more information see: http://emberjs.com/guides/routing/

Pah.Router.map ()->
  this.route("home", { path: "/"})
  this.route("info", { path: "/info"})
  this.resource "albums"

  this.route "lyrics_only", { path: "/lyrics" }
