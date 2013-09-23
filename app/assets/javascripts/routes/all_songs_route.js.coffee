Pah.AllSongsRoute = Ember.Route.extend
  model: -> @store.findAll('song')

