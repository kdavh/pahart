Pah.SongAlbum = DS.Model.extend
  song_id: DS.attr()
  album_id: DS.attr()
  track_number: DS.attr()
  song: DS.belongsTo('song')
  album: DS.belongsTo('album')

  bandcamp_src: (->
    'http://bandcamp.com/EmbeddedPlayer/album=' +
    @get('album').get('bandcamp_id') +
    '/size=small/bgcol=ffffff/linkcol=0687f5/artwork=false/t=' + 
    @get('track_number') + 
    '/transparent=true/"'
  ).property()

  bandcamp_href: (->
    'http://philhart.bandcamp.com/album/' + @get('album').get('bandcamp_name')
  ).property()
