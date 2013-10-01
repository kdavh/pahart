Pah.Song = DS.Model.extend
  name: DS.attr()
  lyrics: DS.attr()
  chords: DS.attr()
  date_written: DS.attr()
  albums: DS.hasMany('album')

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

  bandcamp_src: (->
    'http://bandcamp.com/EmbeddedPlayer/album=' +
    @get('album').get('bandcamp_id')
    '/size=small/bgcol=ffffff/linkcol=0687f5/artwork=false/t=' + 
    @get(TRACK NUMBER) + 
    '/transparent=true/" seamless><a href="http://philhart.bandcamp.com/album/rainbow-gardens'
  ).property()
