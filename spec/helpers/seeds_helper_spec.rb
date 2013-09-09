require 'spec_helper'

include SeedsHelper

describe SeedsHelper do

  it "#make_lyrics outputs a song in verse form" do
    puts make_lyrics(verses: "~4")
    pending "these aren't real tests"
  end

  it "#make_title outputs a title string" do
    puts make_title
    pending "these aren't real tests"
  end
end
