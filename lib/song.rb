require 'pry'
class Song 
  
  @@count = 0
  @@artists = []
  @@genres  = [] 
  
  def self.count
    @@count 
  end 
  
  def self.artists
    @@artists 
    end 
 
 def self.genres
 end
 
 attr_accessor :name, :artist, :genre, :artists

 
  def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre 
  @@count +=1 
  @@artists = [self].flatten
  @@genres 
  end 
  
end 

song = Song.new("song_title","artist", "genre")