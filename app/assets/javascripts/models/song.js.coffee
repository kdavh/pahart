Pah.Song = DS.Model.extend
  name: DS.attr('string')
  lyrics: DS.attr('string')
  chords: DS.attr('string')
  date_written: DS.attr('string')

  formatted_lyrics: (->
    @get('lyrics').split("\n").join("<br/>") 
  ).property('lyrics')

