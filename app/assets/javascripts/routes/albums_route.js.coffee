Pah.AlbumsRoute = Ember.Route.extend
  model: -> @store.findAll('album')

