Pah.SongRoute = Ember.Route.extend
  model: (params) -> @store.find('song', params.song_id)
