require 'pry'

class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    self.class.all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
