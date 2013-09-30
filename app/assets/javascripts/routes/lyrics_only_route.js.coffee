Pah.LyricsOnlyRoute = Ember.Route.extend
  model: -> @store.findAll('song')

