module SeedsHelper
  ALBUM_BANDCAMP_NUMBERS = ['987155316', '3132328764']
  ALBUM_BANDCAMP_NAMES = ["sing-me-home", "rainbow-gardens"]  #7 songs / 10 songs
  ALBUM_NAMES = ["Sing Me Home", "Rainbow Gardens"]
  ALBUM_DATES = [Date.new(2001, 8, 1), Date.new(2013, 8, 1)]

  def parse_production_lyrics
    lyrics_array = PRODUCTION_LYRICS.lines.to_a
    song_count = 0

    loop do
      song_attrs = {}
      song_count <= 9 ? album_index = 0 : album_index = 1

      song_attrs[:name], song_attrs[:date_written], song_attrs[:capo_instructions] = 
        get_name_date_capo( lyrics_array.shift )

      # move past empty lines
      lyrics_array.shift until lyrics_array.first.strip != ""

      # get lyrics
      song_attrs[:lyrics] = get_lyrics(lyrics_array)
      song = Song.create!(song_attrs)

      song_set = SongAlbum.create!(
        album:        Album.find_by_bandcamp_name(ALBUM_BANDCAMP_NAMES[album_index]),
        song:         song,
        track_number: song_count % 10 + 1
      )

      song_count += 1
      break if lyrics_array.empty?
    end
  end

  def get_name_date_capo(string)
    metadata_array = string.strip.split(/\s{3,}/)

    name         = metadata_array.shift
    begin
      date_string = metadata_array.pop
      date_written = Date::strptime(date_string,"%Y") unless metadata_array.empty?
    rescue Error
      puts "error on #{date_string}"
    end
    capo_instructions = metadata_array.pop unless metadata_array.empty?

    [name, date_written, capo_instructions]
  end

  def get_lyrics(lyrics_array)
    empty_lines_in_a_row  = 0
    next_line             = nil
    lyrics                = ""
    while empty_lines_in_a_row < 4
      next_line = lyrics_array.shift
      return lyrics if next_line == nil

      if next_line.strip == ""
        empty_lines_in_a_row += 1 
      else
        empty_lines_in_a_row = 0
      end
      lyrics += next_line
    end

    lyrics.strip
  end
end
