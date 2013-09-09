Pah.SongRoute = Ember.Route.extend
  model: (params) -> songs.findBy('id', params.song_id)
