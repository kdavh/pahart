Pah.Album = DS.Model.extend
  title: DS.attr()
  description: DS.attr()
  image_path: DS.attr()
  date_recorded: DS.attr()
  bandcamp_name: DS.attr()
  bandcamp_id: DS.attr()
  songs: DS.hasMany('song')
  song_albums: DS.hasMany('songAlbum')

  image_full_thumb_url: (-> "/assets/thumb_" + @get('image_path') + 
    ".jpg" ).property('image_path')
  image_full_url: (-> "/assets/" + @get('image_path') + 
    ".jpg" ).property('image_path')
