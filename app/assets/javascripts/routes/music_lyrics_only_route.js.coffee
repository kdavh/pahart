Pah.MusicLyricsOnlyRoute = Ember.Route.extend
  model: -> @store.findAll('song')

