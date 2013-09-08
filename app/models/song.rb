class Song < ActiveRecord::Base
  attr_accessible :chords, :date_written, :lyrics, :name
end
