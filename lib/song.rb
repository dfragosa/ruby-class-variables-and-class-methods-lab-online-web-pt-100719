require 'pry'
class Song 
  
  @@count = 0
  @@artists = []
  @@genres  = [] 
  
  def self.count
    @@count 
  end 
  
  def self.artists
    @@artists.uniq
    end 
 
 def self.genres
   @@genres.uniq
 end
 
 def self.genre_count
   genre_count = Hash.new(0)
   @@genres.each {|genre| genre_count[genre]+=1}
   genre_count
 end 
 
 def self.artist_count
  artist_count = Hash.new(0)
  @@artists.each { |artist| artist_count[artist]+=1}
  artist_count
  
  end
 
 
 attr_accessor :name, :artist, :genre, :artists

 
  def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre 
  @@count +=1 
  @@artists << self.artist
  @@genres << self.genre 
  end 
  
end 

song = Song.new("song_title","artist", "genre")