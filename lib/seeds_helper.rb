module SeedsHelper
  def make_lyrics(opts)
    num_verses      = opts[:verses]           || 3 + rand(3)
    lines_per_verse = opts[:lines_per_verse]  || 3 + rand(5)
    words_per_line  = opts[:words_per_line]   || 3 + rand(7)
    lyrics          = ""

    if num_verses.is_a?(String) && num_verses[0] == "~"
      num_verses = num_verses[1..-1].to_i
      num_verses = num_verses/2 + rand(num_verses)
    else
      num_verses = num_verses.to_i
    end

    num_verses.times { lyrics << construct_a_verse(lines_per_verse, words_per_line) }

    lyrics.strip
  end

  def construct_a_verse(lines_per_verse, words_per_line)
    verse = ""
    lines_per_verse.times do
      words_per_line.times { verse << "#{WORDS_ARRAY.sample} " }
      verse << "\n"
    end

    verse << "\n"
  end

  def make_title
    num_words = 1 + rand(4)
    title = ""
    num_words.times { title << "#{WORDS_ARRAY.sample} "}

    title.strip
  end
end
