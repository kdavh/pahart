Pah.Song = DS.Model.extend
  name: DS.attr()
  lyrics: DS.attr()
  chords: DS.attr()
  date_written: DS.attr()
  albums: DS.hasMany('album')
  song_albums: DS.hasMany('songAlbum')

  formatted_lyrics: (->
    @get('lyrics').split("\n").join("<br/>") 
  ).property('lyrics')

  display_name: (->
    name = @get('name')
    if name.length > 20
      name.substring(0, 21) + "..."
    else
      name
  ).property('name')
