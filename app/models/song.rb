class Song < ActiveRecord::Base
  attr_accessible :chords, :date_written, :lyrics, :name

  has_many :recordings

  validates :chords, :date_written, :lyrics, :name, presence: true
end
