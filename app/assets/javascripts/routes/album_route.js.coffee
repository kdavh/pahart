Pah.AlbumRoute = Ember.Route.extend
  model: (params) -> @store.find('album', params.album_id)
