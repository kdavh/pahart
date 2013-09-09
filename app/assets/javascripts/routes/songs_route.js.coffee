Pah.SongsRoute = Ember.Route.extend
  model: -> @get('store').findAll('songss')
