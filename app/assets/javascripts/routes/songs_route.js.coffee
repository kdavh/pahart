Pah.MusicAllSongsRoute = Ember.Route.extend
  model: -> @store.findAll('song')

